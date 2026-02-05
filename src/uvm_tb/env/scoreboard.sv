`ifndef SCOREBOARD_SV
`define SCOREBOARD_SV

// Need to define analysis imps as macros or classes since UVM only gives one 'imp'.
`uvm_analysis_imp_decl(_a)
`uvm_analysis_imp_decl(_b)
`uvm_analysis_imp_decl(_c)

class scoreboard extends uvm_scoreboard;
  `uvm_component_utils(scoreboard)

  uvm_analysis_imp_a #(serial_seq_item, scoreboard) val_a;
  uvm_analysis_imp_b #(serial_seq_item, scoreboard) val_b;
  uvm_analysis_imp_c #(serial_seq_item, scoreboard) val_c;

  serial_seq_item a_q[$];
  serial_seq_item b_q[$];
  serial_seq_item c_q[$];

  // Parameters
  int AW = 8;
  int BW = 8;
  int ACCW = 32;
  int ROWS = 4;
  int COLS = 4;
  int K = 4;

  function new(string name, uvm_component parent);
    super.new(name, parent);
    val_a = new("val_a", this);
    val_b = new("val_b", this);
    val_c = new("val_c", this);
  endfunction

  function void write_a(serial_seq_item item);
    serial_seq_item cloned;
    $cast(cloned, item.clone());
    a_q.push_back(cloned);
    check_run();
  endfunction

  function void write_b(serial_seq_item item);
    serial_seq_item cloned;
    $cast(cloned, item.clone());
    b_q.push_back(cloned);
    check_run();
  endfunction

  function void write_c(serial_seq_item item);
    serial_seq_item cloned;
    $cast(cloned, item.clone());
    c_q.push_back(cloned);
    check_run();
  endfunction

  function void check_run();
    if(a_q.size() > 0 && b_q.size() > 0 && c_q.size() > 0) begin
       serial_seq_item item_a = a_q.pop_front();
       serial_seq_item item_b = b_q.pop_front();
       serial_seq_item item_c = c_q.pop_front();
       
       verify_result(item_a, item_b, item_c);
    end
  endfunction

  function void verify_result(serial_seq_item item_a, serial_seq_item item_b, serial_seq_item item_c);
    logic signed [31:0] A_matrix[ROWS][K]; 
    logic signed [31:0] B_matrix[K][COLS];
    logic signed [31:0] C_expected[ROWS][COLS];
    logic signed [31:0] C_actual[ROWS][COLS];
    
    // Unpack A
    for(int i=0; i<ROWS; i++) begin
      for(int j=0; j<K; j++) begin
        logic [63:0] temp = item_a.data >> ((i*K + j)*AW);
        logic [AW-1:0] val = temp[AW-1:0];
        if(val[AW-1]) A_matrix[i][j] = (32'hFFFFFFFF << AW) | val;
        else          A_matrix[i][j] = val;
      end
    end

    // Unpack B
    for(int i=0; i<K; i++) begin
      for(int j=0; j<COLS; j++) begin
        logic [63:0] temp = item_b.data >> ((i*COLS + j)*BW);
        logic [BW-1:0] val = temp[BW-1:0];
        if(val[BW-1]) B_matrix[i][j] = (32'hFFFFFFFF << BW) | val;
        else          B_matrix[i][j] = val;
      end
    end

    // Compute Expected C
    for(int i=0; i<ROWS; i++) begin
      for(int j=0; j<COLS; j++) begin
         C_expected[i][j] = 0;
         for(int k=0; k<K; k++) begin
            C_expected[i][j] += A_matrix[i][k] * B_matrix[k][j];
         end
      end
    end

    // Unpack Actual C
    for(int i=0; i<ROWS; i++) begin
      for(int j=0; j<COLS; j++) begin
         logic [63:0] temp = item_c.data >> ((i*COLS + j)*ACCW);
         logic [ACCW-1:0] c_bits = temp[ACCW-1:0];
         if(c_bits[ACCW-1]) C_actual[i][j] = (32'hFFFFFFFF << ACCW) | c_bits;
         else               C_actual[i][j] = c_bits;
      end
    end

    // Compare
    begin
        bit mis = 0;
        for(int i=0; i<ROWS; i++) begin
            for(int j=0; j<COLS; j++) begin
                if(C_expected[i][j] !== C_actual[i][j]) begin
                    mis = 1;
                    `uvm_error("SCB", $sformatf("Mismatch at [%0d][%0d]: Exp %0h (%0d), Act %0h (%0d)", 
                               i, j, C_expected[i][j], C_expected[i][j], C_actual[i][j], C_actual[i][j]))
                end
            end
        end
        if(!mis) `uvm_info("SCB", $sformatf("Match detected! Results match for A=%h, B=%h", item_a.data, item_b.data), UVM_LOW)
    end
    
  endfunction

endclass

`endif
