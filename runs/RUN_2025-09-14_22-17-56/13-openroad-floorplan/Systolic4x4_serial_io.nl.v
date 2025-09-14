module Systolic4x4_serial_io (A_in_frame_sync,
    A_in_serial_clk,
    A_in_serial_data,
    B_in_frame_sync,
    B_in_serial_clk,
    B_in_serial_data,
    C_out_frame_sync,
    C_out_serial_clk,
    C_out_serial_data,
    clk,
    done,
    rst_n,
    start);
 input A_in_frame_sync;
 input A_in_serial_clk;
 input A_in_serial_data;
 input B_in_frame_sync;
 input B_in_serial_clk;
 input B_in_serial_data;
 output C_out_frame_sync;
 output C_out_serial_clk;
 output C_out_serial_data;
 input clk;
 output done;
 input rst_n;
 input start;

 wire _0000_;
 wire _0001_;
 wire _0002_;
 wire _0003_;
 wire _0004_;
 wire _0005_;
 wire _0006_;
 wire _0007_;
 wire _0008_;
 wire _0009_;
 wire _0010_;
 wire _0011_;
 wire _0012_;
 wire _0013_;
 wire _0014_;
 wire _0015_;
 wire _0016_;
 wire _0017_;
 wire _0018_;
 wire _0019_;
 wire _0020_;
 wire _0021_;
 wire _0022_;
 wire _0023_;
 wire _0024_;
 wire _0025_;
 wire _0026_;
 wire _0027_;
 wire _0028_;
 wire _0029_;
 wire _0030_;
 wire _0031_;
 wire _0032_;
 wire _0033_;
 wire _0034_;
 wire _0035_;
 wire _0036_;
 wire _0037_;
 wire _0038_;
 wire _0039_;
 wire _0040_;
 wire _0041_;
 wire _0042_;
 wire _0043_;
 wire _0044_;
 wire _0045_;
 wire _0046_;
 wire _0047_;
 wire _0048_;
 wire _0049_;
 wire _0050_;
 wire _0051_;
 wire _0052_;
 wire _0053_;
 wire _0054_;
 wire _0055_;
 wire _0056_;
 wire _0057_;
 wire _0058_;
 wire _0059_;
 wire _0060_;
 wire _0061_;
 wire _0062_;
 wire _0063_;
 wire _0064_;
 wire _0065_;
 wire _0066_;
 wire _0067_;
 wire _0068_;
 wire _0069_;
 wire _0070_;
 wire _0071_;
 wire _0072_;
 wire _0073_;
 wire _0074_;
 wire _0075_;
 wire _0076_;
 wire _0077_;
 wire _0078_;
 wire _0079_;
 wire _0080_;
 wire _0081_;
 wire _0082_;
 wire _0083_;
 wire _0084_;
 wire _0085_;
 wire _0086_;
 wire _0087_;
 wire _0088_;
 wire _0089_;
 wire _0090_;
 wire _0091_;
 wire _0092_;
 wire _0093_;
 wire _0094_;
 wire _0095_;
 wire _0096_;
 wire _0097_;
 wire _0098_;
 wire _0099_;
 wire _0100_;
 wire _0101_;
 wire _0102_;
 wire _0103_;
 wire _0104_;
 wire _0105_;
 wire _0106_;
 wire _0107_;
 wire _0108_;
 wire _0109_;
 wire _0110_;
 wire _0111_;
 wire _0112_;
 wire _0113_;
 wire _0114_;
 wire _0115_;
 wire _0116_;
 wire _0117_;
 wire _0118_;
 wire _0119_;
 wire _0120_;
 wire _0121_;
 wire _0122_;
 wire _0123_;
 wire _0124_;
 wire _0125_;
 wire _0126_;
 wire _0127_;
 wire _0128_;
 wire _0129_;
 wire _0130_;
 wire _0131_;
 wire _0132_;
 wire _0133_;
 wire _0134_;
 wire _0135_;
 wire _0136_;
 wire _0137_;
 wire _0138_;
 wire _0139_;
 wire _0140_;
 wire _0141_;
 wire _0142_;
 wire _0143_;
 wire _0144_;
 wire _0145_;
 wire _0146_;
 wire _0147_;
 wire _0148_;
 wire _0149_;
 wire _0150_;
 wire _0151_;
 wire _0152_;
 wire _0153_;
 wire _0154_;
 wire _0155_;
 wire _0156_;
 wire _0157_;
 wire _0158_;
 wire _0159_;
 wire _0160_;
 wire _0161_;
 wire _0162_;
 wire _0163_;
 wire _0164_;
 wire _0165_;
 wire _0166_;
 wire _0167_;
 wire _0168_;
 wire _0169_;
 wire _0170_;
 wire _0171_;
 wire _0172_;
 wire _0173_;
 wire _0174_;
 wire _0175_;
 wire _0176_;
 wire _0177_;
 wire _0178_;
 wire _0179_;
 wire _0180_;
 wire _0181_;
 wire _0182_;
 wire _0183_;
 wire _0184_;
 wire _0185_;
 wire _0186_;
 wire _0187_;
 wire _0188_;
 wire _0189_;
 wire _0190_;
 wire _0191_;
 wire _0192_;
 wire _0193_;
 wire _0194_;
 wire _0195_;
 wire _0196_;
 wire _0197_;
 wire _0198_;
 wire _0199_;
 wire _0200_;
 wire _0201_;
 wire _0202_;
 wire _0203_;
 wire _0204_;
 wire _0205_;
 wire _0206_;
 wire _0207_;
 wire _0208_;
 wire _0209_;
 wire _0210_;
 wire _0211_;
 wire _0212_;
 wire _0213_;
 wire _0214_;
 wire _0215_;
 wire _0216_;
 wire _0217_;
 wire _0218_;
 wire _0219_;
 wire _0220_;
 wire _0221_;
 wire _0222_;
 wire _0223_;
 wire _0224_;
 wire _0225_;
 wire _0226_;
 wire _0227_;
 wire _0228_;
 wire _0229_;
 wire _0230_;
 wire _0231_;
 wire _0232_;
 wire _0233_;
 wire _0234_;
 wire _0235_;
 wire _0236_;
 wire _0237_;
 wire _0238_;
 wire _0239_;
 wire _0240_;
 wire _0241_;
 wire _0242_;
 wire _0243_;
 wire _0244_;
 wire _0245_;
 wire _0246_;
 wire _0247_;
 wire _0248_;
 wire _0249_;
 wire _0250_;
 wire _0251_;
 wire _0252_;
 wire _0253_;
 wire _0254_;
 wire _0255_;
 wire _0256_;
 wire _0257_;
 wire _0258_;
 wire _0259_;
 wire _0260_;
 wire _0261_;
 wire _0262_;
 wire _0263_;
 wire _0264_;
 wire _0265_;
 wire _0266_;
 wire _0267_;
 wire _0268_;
 wire _0269_;
 wire _0270_;
 wire _0271_;
 wire _0272_;
 wire _0273_;
 wire _0274_;
 wire _0275_;
 wire _0276_;
 wire _0277_;
 wire _0278_;
 wire _0279_;
 wire _0280_;
 wire _0281_;
 wire _0282_;
 wire _0283_;
 wire _0284_;
 wire _0285_;
 wire _0286_;
 wire _0287_;
 wire _0288_;
 wire _0289_;
 wire _0290_;
 wire _0291_;
 wire _0292_;
 wire _0293_;
 wire _0294_;
 wire _0295_;
 wire _0296_;
 wire _0297_;
 wire _0298_;
 wire _0299_;
 wire _0300_;
 wire _0301_;
 wire _0302_;
 wire _0303_;
 wire _0304_;
 wire _0305_;
 wire _0306_;
 wire _0307_;
 wire _0308_;
 wire _0309_;
 wire _0310_;
 wire _0311_;
 wire _0312_;
 wire _0313_;
 wire _0314_;
 wire _0315_;
 wire _0316_;
 wire _0317_;
 wire _0318_;
 wire _0319_;
 wire _0320_;
 wire _0321_;
 wire _0322_;
 wire _0323_;
 wire _0324_;
 wire _0325_;
 wire _0326_;
 wire _0327_;
 wire _0328_;
 wire _0329_;
 wire _0330_;
 wire _0331_;
 wire _0332_;
 wire _0333_;
 wire _0334_;
 wire _0335_;
 wire _0336_;
 wire _0337_;
 wire _0338_;
 wire _0339_;
 wire _0340_;
 wire _0341_;
 wire _0342_;
 wire _0343_;
 wire _0344_;
 wire _0345_;
 wire _0346_;
 wire _0347_;
 wire _0348_;
 wire _0349_;
 wire _0350_;
 wire _0351_;
 wire _0352_;
 wire _0353_;
 wire _0354_;
 wire _0355_;
 wire _0356_;
 wire _0357_;
 wire _0358_;
 wire _0359_;
 wire _0360_;
 wire _0361_;
 wire _0362_;
 wire _0363_;
 wire _0364_;
 wire _0365_;
 wire _0366_;
 wire _0367_;
 wire _0368_;
 wire _0369_;
 wire _0370_;
 wire _0371_;
 wire _0372_;
 wire _0373_;
 wire _0374_;
 wire _0375_;
 wire _0376_;
 wire _0377_;
 wire _0378_;
 wire _0379_;
 wire _0380_;
 wire _0381_;
 wire _0382_;
 wire _0383_;
 wire _0384_;
 wire _0385_;
 wire _0386_;
 wire _0387_;
 wire _0388_;
 wire _0389_;
 wire _0390_;
 wire _0391_;
 wire _0392_;
 wire _0393_;
 wire _0394_;
 wire _0395_;
 wire _0396_;
 wire _0397_;
 wire _0398_;
 wire _0399_;
 wire _0400_;
 wire _0401_;
 wire _0402_;
 wire _0403_;
 wire _0404_;
 wire _0405_;
 wire _0406_;
 wire _0407_;
 wire _0408_;
 wire _0409_;
 wire _0410_;
 wire _0411_;
 wire _0412_;
 wire _0413_;
 wire _0414_;
 wire _0415_;
 wire _0416_;
 wire _0417_;
 wire _0418_;
 wire _0419_;
 wire _0420_;
 wire _0421_;
 wire _0422_;
 wire _0423_;
 wire _0424_;
 wire _0425_;
 wire _0426_;
 wire _0427_;
 wire _0428_;
 wire _0429_;
 wire _0430_;
 wire _0431_;
 wire _0432_;
 wire _0433_;
 wire _0434_;
 wire _0435_;
 wire _0436_;
 wire _0437_;
 wire _0438_;
 wire _0439_;
 wire _0440_;
 wire _0441_;
 wire _0442_;
 wire _0443_;
 wire _0444_;
 wire _0445_;
 wire _0446_;
 wire _0447_;
 wire _0448_;
 wire _0449_;
 wire _0450_;
 wire _0451_;
 wire _0452_;
 wire _0453_;
 wire _0454_;
 wire _0455_;
 wire _0456_;
 wire _0457_;
 wire _0458_;
 wire _0459_;
 wire _0460_;
 wire _0461_;
 wire _0462_;
 wire _0463_;
 wire _0464_;
 wire _0465_;
 wire _0466_;
 wire _0467_;
 wire _0468_;
 wire _0469_;
 wire _0470_;
 wire _0471_;
 wire _0472_;
 wire _0473_;
 wire _0474_;
 wire _0475_;
 wire _0476_;
 wire _0477_;
 wire _0478_;
 wire _0479_;
 wire _0480_;
 wire _0481_;
 wire _0482_;
 wire _0483_;
 wire _0484_;
 wire _0485_;
 wire _0486_;
 wire _0487_;
 wire _0488_;
 wire _0489_;
 wire _0490_;
 wire _0491_;
 wire _0492_;
 wire _0493_;
 wire _0494_;
 wire _0495_;
 wire _0496_;
 wire _0497_;
 wire _0498_;
 wire _0499_;
 wire _0500_;
 wire _0501_;
 wire _0502_;
 wire _0503_;
 wire _0504_;
 wire _0505_;
 wire _0506_;
 wire _0507_;
 wire _0508_;
 wire _0509_;
 wire _0510_;
 wire _0511_;
 wire _0512_;
 wire _0513_;
 wire _0514_;
 wire _0515_;
 wire _0516_;
 wire _0517_;
 wire _0518_;
 wire _0519_;
 wire _0520_;
 wire _0521_;
 wire _0522_;
 wire _0523_;
 wire _0524_;
 wire _0525_;
 wire _0526_;
 wire _0527_;
 wire \deser_A.bit_idx[0] ;
 wire \deser_A.bit_idx[1] ;
 wire \deser_A.bit_idx[2] ;
 wire \deser_A.bit_idx[3] ;
 wire \deser_A.bit_idx[4] ;
 wire \deser_A.bit_idx[5] ;
 wire \deser_A.bit_idx[6] ;
 wire \deser_A.bit_idx[7] ;
 wire \deser_A.kept_bit_idx[0] ;
 wire \deser_A.kept_bit_idx[1] ;
 wire \deser_A.kept_bit_idx[2] ;
 wire \deser_A.kept_bit_idx[3] ;
 wire \deser_A.kept_bit_idx[4] ;
 wire \deser_A.kept_bit_idx[5] ;
 wire \deser_A.kept_bit_idx[6] ;
 wire \deser_A.kept_bit_idx[7] ;
 wire \deser_A.kept_receiving ;
 wire \deser_A.kept_shift_reg[0] ;
 wire \deser_A.kept_shift_reg[100] ;
 wire \deser_A.kept_shift_reg[101] ;
 wire \deser_A.kept_shift_reg[102] ;
 wire \deser_A.kept_shift_reg[103] ;
 wire \deser_A.kept_shift_reg[104] ;
 wire \deser_A.kept_shift_reg[105] ;
 wire \deser_A.kept_shift_reg[106] ;
 wire \deser_A.kept_shift_reg[107] ;
 wire \deser_A.kept_shift_reg[108] ;
 wire \deser_A.kept_shift_reg[109] ;
 wire \deser_A.kept_shift_reg[10] ;
 wire \deser_A.kept_shift_reg[110] ;
 wire \deser_A.kept_shift_reg[111] ;
 wire \deser_A.kept_shift_reg[112] ;
 wire \deser_A.kept_shift_reg[113] ;
 wire \deser_A.kept_shift_reg[114] ;
 wire \deser_A.kept_shift_reg[115] ;
 wire \deser_A.kept_shift_reg[116] ;
 wire \deser_A.kept_shift_reg[117] ;
 wire \deser_A.kept_shift_reg[118] ;
 wire \deser_A.kept_shift_reg[119] ;
 wire \deser_A.kept_shift_reg[11] ;
 wire \deser_A.kept_shift_reg[120] ;
 wire \deser_A.kept_shift_reg[121] ;
 wire \deser_A.kept_shift_reg[122] ;
 wire \deser_A.kept_shift_reg[123] ;
 wire \deser_A.kept_shift_reg[124] ;
 wire \deser_A.kept_shift_reg[125] ;
 wire \deser_A.kept_shift_reg[126] ;
 wire \deser_A.kept_shift_reg[127] ;
 wire \deser_A.kept_shift_reg[12] ;
 wire \deser_A.kept_shift_reg[13] ;
 wire \deser_A.kept_shift_reg[14] ;
 wire \deser_A.kept_shift_reg[15] ;
 wire \deser_A.kept_shift_reg[16] ;
 wire \deser_A.kept_shift_reg[17] ;
 wire \deser_A.kept_shift_reg[18] ;
 wire \deser_A.kept_shift_reg[19] ;
 wire \deser_A.kept_shift_reg[1] ;
 wire \deser_A.kept_shift_reg[20] ;
 wire \deser_A.kept_shift_reg[21] ;
 wire \deser_A.kept_shift_reg[22] ;
 wire \deser_A.kept_shift_reg[23] ;
 wire \deser_A.kept_shift_reg[24] ;
 wire \deser_A.kept_shift_reg[25] ;
 wire \deser_A.kept_shift_reg[26] ;
 wire \deser_A.kept_shift_reg[27] ;
 wire \deser_A.kept_shift_reg[28] ;
 wire \deser_A.kept_shift_reg[29] ;
 wire \deser_A.kept_shift_reg[2] ;
 wire \deser_A.kept_shift_reg[30] ;
 wire \deser_A.kept_shift_reg[31] ;
 wire \deser_A.kept_shift_reg[32] ;
 wire \deser_A.kept_shift_reg[33] ;
 wire \deser_A.kept_shift_reg[34] ;
 wire \deser_A.kept_shift_reg[35] ;
 wire \deser_A.kept_shift_reg[36] ;
 wire \deser_A.kept_shift_reg[37] ;
 wire \deser_A.kept_shift_reg[38] ;
 wire \deser_A.kept_shift_reg[39] ;
 wire \deser_A.kept_shift_reg[3] ;
 wire \deser_A.kept_shift_reg[40] ;
 wire \deser_A.kept_shift_reg[41] ;
 wire \deser_A.kept_shift_reg[42] ;
 wire \deser_A.kept_shift_reg[43] ;
 wire \deser_A.kept_shift_reg[44] ;
 wire \deser_A.kept_shift_reg[45] ;
 wire \deser_A.kept_shift_reg[46] ;
 wire \deser_A.kept_shift_reg[47] ;
 wire \deser_A.kept_shift_reg[48] ;
 wire \deser_A.kept_shift_reg[49] ;
 wire \deser_A.kept_shift_reg[4] ;
 wire \deser_A.kept_shift_reg[50] ;
 wire \deser_A.kept_shift_reg[51] ;
 wire \deser_A.kept_shift_reg[52] ;
 wire \deser_A.kept_shift_reg[53] ;
 wire \deser_A.kept_shift_reg[54] ;
 wire \deser_A.kept_shift_reg[55] ;
 wire \deser_A.kept_shift_reg[56] ;
 wire \deser_A.kept_shift_reg[57] ;
 wire \deser_A.kept_shift_reg[58] ;
 wire \deser_A.kept_shift_reg[59] ;
 wire \deser_A.kept_shift_reg[5] ;
 wire \deser_A.kept_shift_reg[60] ;
 wire \deser_A.kept_shift_reg[61] ;
 wire \deser_A.kept_shift_reg[62] ;
 wire \deser_A.kept_shift_reg[63] ;
 wire \deser_A.kept_shift_reg[64] ;
 wire \deser_A.kept_shift_reg[65] ;
 wire \deser_A.kept_shift_reg[66] ;
 wire \deser_A.kept_shift_reg[67] ;
 wire \deser_A.kept_shift_reg[68] ;
 wire \deser_A.kept_shift_reg[69] ;
 wire \deser_A.kept_shift_reg[6] ;
 wire \deser_A.kept_shift_reg[70] ;
 wire \deser_A.kept_shift_reg[71] ;
 wire \deser_A.kept_shift_reg[72] ;
 wire \deser_A.kept_shift_reg[73] ;
 wire \deser_A.kept_shift_reg[74] ;
 wire \deser_A.kept_shift_reg[75] ;
 wire \deser_A.kept_shift_reg[76] ;
 wire \deser_A.kept_shift_reg[77] ;
 wire \deser_A.kept_shift_reg[78] ;
 wire \deser_A.kept_shift_reg[79] ;
 wire \deser_A.kept_shift_reg[7] ;
 wire \deser_A.kept_shift_reg[80] ;
 wire \deser_A.kept_shift_reg[81] ;
 wire \deser_A.kept_shift_reg[82] ;
 wire \deser_A.kept_shift_reg[83] ;
 wire \deser_A.kept_shift_reg[84] ;
 wire \deser_A.kept_shift_reg[85] ;
 wire \deser_A.kept_shift_reg[86] ;
 wire \deser_A.kept_shift_reg[87] ;
 wire \deser_A.kept_shift_reg[88] ;
 wire \deser_A.kept_shift_reg[89] ;
 wire \deser_A.kept_shift_reg[8] ;
 wire \deser_A.kept_shift_reg[90] ;
 wire \deser_A.kept_shift_reg[91] ;
 wire \deser_A.kept_shift_reg[92] ;
 wire \deser_A.kept_shift_reg[93] ;
 wire \deser_A.kept_shift_reg[94] ;
 wire \deser_A.kept_shift_reg[95] ;
 wire \deser_A.kept_shift_reg[96] ;
 wire \deser_A.kept_shift_reg[97] ;
 wire \deser_A.kept_shift_reg[98] ;
 wire \deser_A.kept_shift_reg[99] ;
 wire \deser_A.kept_shift_reg[9] ;
 wire \deser_A.receiving ;
 wire \deser_B.bit_idx[0] ;
 wire \deser_B.bit_idx[1] ;
 wire \deser_B.bit_idx[2] ;
 wire \deser_B.bit_idx[3] ;
 wire \deser_B.bit_idx[4] ;
 wire \deser_B.bit_idx[5] ;
 wire \deser_B.bit_idx[6] ;
 wire \deser_B.bit_idx[7] ;
 wire \deser_B.kept_bit_idx[0] ;
 wire \deser_B.kept_bit_idx[1] ;
 wire \deser_B.kept_bit_idx[2] ;
 wire \deser_B.kept_bit_idx[3] ;
 wire \deser_B.kept_bit_idx[4] ;
 wire \deser_B.kept_bit_idx[5] ;
 wire \deser_B.kept_bit_idx[6] ;
 wire \deser_B.kept_bit_idx[7] ;
 wire \deser_B.kept_receiving ;
 wire \deser_B.kept_shift_reg[0] ;
 wire \deser_B.kept_shift_reg[100] ;
 wire \deser_B.kept_shift_reg[101] ;
 wire \deser_B.kept_shift_reg[102] ;
 wire \deser_B.kept_shift_reg[103] ;
 wire \deser_B.kept_shift_reg[104] ;
 wire \deser_B.kept_shift_reg[105] ;
 wire \deser_B.kept_shift_reg[106] ;
 wire \deser_B.kept_shift_reg[107] ;
 wire \deser_B.kept_shift_reg[108] ;
 wire \deser_B.kept_shift_reg[109] ;
 wire \deser_B.kept_shift_reg[10] ;
 wire \deser_B.kept_shift_reg[110] ;
 wire \deser_B.kept_shift_reg[111] ;
 wire \deser_B.kept_shift_reg[112] ;
 wire \deser_B.kept_shift_reg[113] ;
 wire \deser_B.kept_shift_reg[114] ;
 wire \deser_B.kept_shift_reg[115] ;
 wire \deser_B.kept_shift_reg[116] ;
 wire \deser_B.kept_shift_reg[117] ;
 wire \deser_B.kept_shift_reg[118] ;
 wire \deser_B.kept_shift_reg[119] ;
 wire \deser_B.kept_shift_reg[11] ;
 wire \deser_B.kept_shift_reg[120] ;
 wire \deser_B.kept_shift_reg[121] ;
 wire \deser_B.kept_shift_reg[122] ;
 wire \deser_B.kept_shift_reg[123] ;
 wire \deser_B.kept_shift_reg[124] ;
 wire \deser_B.kept_shift_reg[125] ;
 wire \deser_B.kept_shift_reg[126] ;
 wire \deser_B.kept_shift_reg[127] ;
 wire \deser_B.kept_shift_reg[12] ;
 wire \deser_B.kept_shift_reg[13] ;
 wire \deser_B.kept_shift_reg[14] ;
 wire \deser_B.kept_shift_reg[15] ;
 wire \deser_B.kept_shift_reg[16] ;
 wire \deser_B.kept_shift_reg[17] ;
 wire \deser_B.kept_shift_reg[18] ;
 wire \deser_B.kept_shift_reg[19] ;
 wire \deser_B.kept_shift_reg[1] ;
 wire \deser_B.kept_shift_reg[20] ;
 wire \deser_B.kept_shift_reg[21] ;
 wire \deser_B.kept_shift_reg[22] ;
 wire \deser_B.kept_shift_reg[23] ;
 wire \deser_B.kept_shift_reg[24] ;
 wire \deser_B.kept_shift_reg[25] ;
 wire \deser_B.kept_shift_reg[26] ;
 wire \deser_B.kept_shift_reg[27] ;
 wire \deser_B.kept_shift_reg[28] ;
 wire \deser_B.kept_shift_reg[29] ;
 wire \deser_B.kept_shift_reg[2] ;
 wire \deser_B.kept_shift_reg[30] ;
 wire \deser_B.kept_shift_reg[31] ;
 wire \deser_B.kept_shift_reg[32] ;
 wire \deser_B.kept_shift_reg[33] ;
 wire \deser_B.kept_shift_reg[34] ;
 wire \deser_B.kept_shift_reg[35] ;
 wire \deser_B.kept_shift_reg[36] ;
 wire \deser_B.kept_shift_reg[37] ;
 wire \deser_B.kept_shift_reg[38] ;
 wire \deser_B.kept_shift_reg[39] ;
 wire \deser_B.kept_shift_reg[3] ;
 wire \deser_B.kept_shift_reg[40] ;
 wire \deser_B.kept_shift_reg[41] ;
 wire \deser_B.kept_shift_reg[42] ;
 wire \deser_B.kept_shift_reg[43] ;
 wire \deser_B.kept_shift_reg[44] ;
 wire \deser_B.kept_shift_reg[45] ;
 wire \deser_B.kept_shift_reg[46] ;
 wire \deser_B.kept_shift_reg[47] ;
 wire \deser_B.kept_shift_reg[48] ;
 wire \deser_B.kept_shift_reg[49] ;
 wire \deser_B.kept_shift_reg[4] ;
 wire \deser_B.kept_shift_reg[50] ;
 wire \deser_B.kept_shift_reg[51] ;
 wire \deser_B.kept_shift_reg[52] ;
 wire \deser_B.kept_shift_reg[53] ;
 wire \deser_B.kept_shift_reg[54] ;
 wire \deser_B.kept_shift_reg[55] ;
 wire \deser_B.kept_shift_reg[56] ;
 wire \deser_B.kept_shift_reg[57] ;
 wire \deser_B.kept_shift_reg[58] ;
 wire \deser_B.kept_shift_reg[59] ;
 wire \deser_B.kept_shift_reg[5] ;
 wire \deser_B.kept_shift_reg[60] ;
 wire \deser_B.kept_shift_reg[61] ;
 wire \deser_B.kept_shift_reg[62] ;
 wire \deser_B.kept_shift_reg[63] ;
 wire \deser_B.kept_shift_reg[64] ;
 wire \deser_B.kept_shift_reg[65] ;
 wire \deser_B.kept_shift_reg[66] ;
 wire \deser_B.kept_shift_reg[67] ;
 wire \deser_B.kept_shift_reg[68] ;
 wire \deser_B.kept_shift_reg[69] ;
 wire \deser_B.kept_shift_reg[6] ;
 wire \deser_B.kept_shift_reg[70] ;
 wire \deser_B.kept_shift_reg[71] ;
 wire \deser_B.kept_shift_reg[72] ;
 wire \deser_B.kept_shift_reg[73] ;
 wire \deser_B.kept_shift_reg[74] ;
 wire \deser_B.kept_shift_reg[75] ;
 wire \deser_B.kept_shift_reg[76] ;
 wire \deser_B.kept_shift_reg[77] ;
 wire \deser_B.kept_shift_reg[78] ;
 wire \deser_B.kept_shift_reg[79] ;
 wire \deser_B.kept_shift_reg[7] ;
 wire \deser_B.kept_shift_reg[80] ;
 wire \deser_B.kept_shift_reg[81] ;
 wire \deser_B.kept_shift_reg[82] ;
 wire \deser_B.kept_shift_reg[83] ;
 wire \deser_B.kept_shift_reg[84] ;
 wire \deser_B.kept_shift_reg[85] ;
 wire \deser_B.kept_shift_reg[86] ;
 wire \deser_B.kept_shift_reg[87] ;
 wire \deser_B.kept_shift_reg[88] ;
 wire \deser_B.kept_shift_reg[89] ;
 wire \deser_B.kept_shift_reg[8] ;
 wire \deser_B.kept_shift_reg[90] ;
 wire \deser_B.kept_shift_reg[91] ;
 wire \deser_B.kept_shift_reg[92] ;
 wire \deser_B.kept_shift_reg[93] ;
 wire \deser_B.kept_shift_reg[94] ;
 wire \deser_B.kept_shift_reg[95] ;
 wire \deser_B.kept_shift_reg[96] ;
 wire \deser_B.kept_shift_reg[97] ;
 wire \deser_B.kept_shift_reg[98] ;
 wire \deser_B.kept_shift_reg[99] ;
 wire \deser_B.kept_shift_reg[9] ;
 wire \deser_B.receiving ;
 wire \ser_C.bit_idx[0] ;
 wire \ser_C.bit_idx[1] ;
 wire \ser_C.bit_idx[2] ;
 wire \ser_C.bit_idx[3] ;
 wire \ser_C.bit_idx[4] ;
 wire \ser_C.bit_idx[5] ;
 wire \ser_C.bit_idx[6] ;
 wire \ser_C.bit_idx[7] ;
 wire \ser_C.bit_idx[8] ;
 wire \ser_C.bit_idx[9] ;
 wire \ser_C.kept_bit_idx[0] ;
 wire \ser_C.kept_bit_idx[1] ;
 wire \ser_C.kept_bit_idx[2] ;
 wire \ser_C.kept_bit_idx[3] ;
 wire \ser_C.kept_bit_idx[4] ;
 wire \ser_C.kept_bit_idx[5] ;
 wire \ser_C.kept_bit_idx[6] ;
 wire \ser_C.kept_bit_idx[7] ;
 wire \ser_C.kept_bit_idx[8] ;
 wire \ser_C.kept_bit_idx[9] ;
 wire \ser_C.kept_shift_reg[0] ;
 wire \ser_C.kept_shift_reg[100] ;
 wire \ser_C.kept_shift_reg[101] ;
 wire \ser_C.kept_shift_reg[102] ;
 wire \ser_C.kept_shift_reg[103] ;
 wire \ser_C.kept_shift_reg[104] ;
 wire \ser_C.kept_shift_reg[105] ;
 wire \ser_C.kept_shift_reg[106] ;
 wire \ser_C.kept_shift_reg[107] ;
 wire \ser_C.kept_shift_reg[108] ;
 wire \ser_C.kept_shift_reg[109] ;
 wire \ser_C.kept_shift_reg[10] ;
 wire \ser_C.kept_shift_reg[110] ;
 wire \ser_C.kept_shift_reg[111] ;
 wire \ser_C.kept_shift_reg[112] ;
 wire \ser_C.kept_shift_reg[113] ;
 wire \ser_C.kept_shift_reg[114] ;
 wire \ser_C.kept_shift_reg[115] ;
 wire \ser_C.kept_shift_reg[116] ;
 wire \ser_C.kept_shift_reg[117] ;
 wire \ser_C.kept_shift_reg[118] ;
 wire \ser_C.kept_shift_reg[119] ;
 wire \ser_C.kept_shift_reg[11] ;
 wire \ser_C.kept_shift_reg[120] ;
 wire \ser_C.kept_shift_reg[121] ;
 wire \ser_C.kept_shift_reg[122] ;
 wire \ser_C.kept_shift_reg[123] ;
 wire \ser_C.kept_shift_reg[124] ;
 wire \ser_C.kept_shift_reg[125] ;
 wire \ser_C.kept_shift_reg[126] ;
 wire \ser_C.kept_shift_reg[127] ;
 wire \ser_C.kept_shift_reg[128] ;
 wire \ser_C.kept_shift_reg[129] ;
 wire \ser_C.kept_shift_reg[12] ;
 wire \ser_C.kept_shift_reg[130] ;
 wire \ser_C.kept_shift_reg[131] ;
 wire \ser_C.kept_shift_reg[132] ;
 wire \ser_C.kept_shift_reg[133] ;
 wire \ser_C.kept_shift_reg[134] ;
 wire \ser_C.kept_shift_reg[135] ;
 wire \ser_C.kept_shift_reg[136] ;
 wire \ser_C.kept_shift_reg[137] ;
 wire \ser_C.kept_shift_reg[138] ;
 wire \ser_C.kept_shift_reg[139] ;
 wire \ser_C.kept_shift_reg[13] ;
 wire \ser_C.kept_shift_reg[140] ;
 wire \ser_C.kept_shift_reg[141] ;
 wire \ser_C.kept_shift_reg[142] ;
 wire \ser_C.kept_shift_reg[143] ;
 wire \ser_C.kept_shift_reg[144] ;
 wire \ser_C.kept_shift_reg[145] ;
 wire \ser_C.kept_shift_reg[146] ;
 wire \ser_C.kept_shift_reg[147] ;
 wire \ser_C.kept_shift_reg[148] ;
 wire \ser_C.kept_shift_reg[149] ;
 wire \ser_C.kept_shift_reg[14] ;
 wire \ser_C.kept_shift_reg[150] ;
 wire \ser_C.kept_shift_reg[151] ;
 wire \ser_C.kept_shift_reg[152] ;
 wire \ser_C.kept_shift_reg[153] ;
 wire \ser_C.kept_shift_reg[154] ;
 wire \ser_C.kept_shift_reg[155] ;
 wire \ser_C.kept_shift_reg[156] ;
 wire \ser_C.kept_shift_reg[157] ;
 wire \ser_C.kept_shift_reg[158] ;
 wire \ser_C.kept_shift_reg[159] ;
 wire \ser_C.kept_shift_reg[15] ;
 wire \ser_C.kept_shift_reg[160] ;
 wire \ser_C.kept_shift_reg[161] ;
 wire \ser_C.kept_shift_reg[162] ;
 wire \ser_C.kept_shift_reg[163] ;
 wire \ser_C.kept_shift_reg[164] ;
 wire \ser_C.kept_shift_reg[165] ;
 wire \ser_C.kept_shift_reg[166] ;
 wire \ser_C.kept_shift_reg[167] ;
 wire \ser_C.kept_shift_reg[168] ;
 wire \ser_C.kept_shift_reg[169] ;
 wire \ser_C.kept_shift_reg[16] ;
 wire \ser_C.kept_shift_reg[170] ;
 wire \ser_C.kept_shift_reg[171] ;
 wire \ser_C.kept_shift_reg[172] ;
 wire \ser_C.kept_shift_reg[173] ;
 wire \ser_C.kept_shift_reg[174] ;
 wire \ser_C.kept_shift_reg[175] ;
 wire \ser_C.kept_shift_reg[176] ;
 wire \ser_C.kept_shift_reg[177] ;
 wire \ser_C.kept_shift_reg[178] ;
 wire \ser_C.kept_shift_reg[179] ;
 wire \ser_C.kept_shift_reg[17] ;
 wire \ser_C.kept_shift_reg[180] ;
 wire \ser_C.kept_shift_reg[181] ;
 wire \ser_C.kept_shift_reg[182] ;
 wire \ser_C.kept_shift_reg[183] ;
 wire \ser_C.kept_shift_reg[184] ;
 wire \ser_C.kept_shift_reg[185] ;
 wire \ser_C.kept_shift_reg[186] ;
 wire \ser_C.kept_shift_reg[187] ;
 wire \ser_C.kept_shift_reg[188] ;
 wire \ser_C.kept_shift_reg[189] ;
 wire \ser_C.kept_shift_reg[18] ;
 wire \ser_C.kept_shift_reg[190] ;
 wire \ser_C.kept_shift_reg[191] ;
 wire \ser_C.kept_shift_reg[192] ;
 wire \ser_C.kept_shift_reg[193] ;
 wire \ser_C.kept_shift_reg[194] ;
 wire \ser_C.kept_shift_reg[195] ;
 wire \ser_C.kept_shift_reg[196] ;
 wire \ser_C.kept_shift_reg[197] ;
 wire \ser_C.kept_shift_reg[198] ;
 wire \ser_C.kept_shift_reg[199] ;
 wire \ser_C.kept_shift_reg[19] ;
 wire \ser_C.kept_shift_reg[1] ;
 wire \ser_C.kept_shift_reg[200] ;
 wire \ser_C.kept_shift_reg[201] ;
 wire \ser_C.kept_shift_reg[202] ;
 wire \ser_C.kept_shift_reg[203] ;
 wire \ser_C.kept_shift_reg[204] ;
 wire \ser_C.kept_shift_reg[205] ;
 wire \ser_C.kept_shift_reg[206] ;
 wire \ser_C.kept_shift_reg[207] ;
 wire \ser_C.kept_shift_reg[208] ;
 wire \ser_C.kept_shift_reg[209] ;
 wire \ser_C.kept_shift_reg[20] ;
 wire \ser_C.kept_shift_reg[210] ;
 wire \ser_C.kept_shift_reg[211] ;
 wire \ser_C.kept_shift_reg[212] ;
 wire \ser_C.kept_shift_reg[213] ;
 wire \ser_C.kept_shift_reg[214] ;
 wire \ser_C.kept_shift_reg[215] ;
 wire \ser_C.kept_shift_reg[216] ;
 wire \ser_C.kept_shift_reg[217] ;
 wire \ser_C.kept_shift_reg[218] ;
 wire \ser_C.kept_shift_reg[219] ;
 wire \ser_C.kept_shift_reg[21] ;
 wire \ser_C.kept_shift_reg[220] ;
 wire \ser_C.kept_shift_reg[221] ;
 wire \ser_C.kept_shift_reg[222] ;
 wire \ser_C.kept_shift_reg[223] ;
 wire \ser_C.kept_shift_reg[224] ;
 wire \ser_C.kept_shift_reg[225] ;
 wire \ser_C.kept_shift_reg[226] ;
 wire \ser_C.kept_shift_reg[227] ;
 wire \ser_C.kept_shift_reg[228] ;
 wire \ser_C.kept_shift_reg[229] ;
 wire \ser_C.kept_shift_reg[22] ;
 wire \ser_C.kept_shift_reg[230] ;
 wire \ser_C.kept_shift_reg[231] ;
 wire \ser_C.kept_shift_reg[232] ;
 wire \ser_C.kept_shift_reg[233] ;
 wire \ser_C.kept_shift_reg[234] ;
 wire \ser_C.kept_shift_reg[235] ;
 wire \ser_C.kept_shift_reg[236] ;
 wire \ser_C.kept_shift_reg[237] ;
 wire \ser_C.kept_shift_reg[238] ;
 wire \ser_C.kept_shift_reg[239] ;
 wire \ser_C.kept_shift_reg[23] ;
 wire \ser_C.kept_shift_reg[240] ;
 wire \ser_C.kept_shift_reg[241] ;
 wire \ser_C.kept_shift_reg[242] ;
 wire \ser_C.kept_shift_reg[243] ;
 wire \ser_C.kept_shift_reg[244] ;
 wire \ser_C.kept_shift_reg[245] ;
 wire \ser_C.kept_shift_reg[246] ;
 wire \ser_C.kept_shift_reg[247] ;
 wire \ser_C.kept_shift_reg[248] ;
 wire \ser_C.kept_shift_reg[249] ;
 wire \ser_C.kept_shift_reg[24] ;
 wire \ser_C.kept_shift_reg[250] ;
 wire \ser_C.kept_shift_reg[251] ;
 wire \ser_C.kept_shift_reg[252] ;
 wire \ser_C.kept_shift_reg[253] ;
 wire \ser_C.kept_shift_reg[254] ;
 wire \ser_C.kept_shift_reg[255] ;
 wire \ser_C.kept_shift_reg[256] ;
 wire \ser_C.kept_shift_reg[257] ;
 wire \ser_C.kept_shift_reg[258] ;
 wire \ser_C.kept_shift_reg[259] ;
 wire \ser_C.kept_shift_reg[25] ;
 wire \ser_C.kept_shift_reg[260] ;
 wire \ser_C.kept_shift_reg[261] ;
 wire \ser_C.kept_shift_reg[262] ;
 wire \ser_C.kept_shift_reg[263] ;
 wire \ser_C.kept_shift_reg[264] ;
 wire \ser_C.kept_shift_reg[265] ;
 wire \ser_C.kept_shift_reg[266] ;
 wire \ser_C.kept_shift_reg[267] ;
 wire \ser_C.kept_shift_reg[268] ;
 wire \ser_C.kept_shift_reg[269] ;
 wire \ser_C.kept_shift_reg[26] ;
 wire \ser_C.kept_shift_reg[270] ;
 wire \ser_C.kept_shift_reg[271] ;
 wire \ser_C.kept_shift_reg[272] ;
 wire \ser_C.kept_shift_reg[273] ;
 wire \ser_C.kept_shift_reg[274] ;
 wire \ser_C.kept_shift_reg[275] ;
 wire \ser_C.kept_shift_reg[276] ;
 wire \ser_C.kept_shift_reg[277] ;
 wire \ser_C.kept_shift_reg[278] ;
 wire \ser_C.kept_shift_reg[279] ;
 wire \ser_C.kept_shift_reg[27] ;
 wire \ser_C.kept_shift_reg[280] ;
 wire \ser_C.kept_shift_reg[281] ;
 wire \ser_C.kept_shift_reg[282] ;
 wire \ser_C.kept_shift_reg[283] ;
 wire \ser_C.kept_shift_reg[284] ;
 wire \ser_C.kept_shift_reg[285] ;
 wire \ser_C.kept_shift_reg[286] ;
 wire \ser_C.kept_shift_reg[287] ;
 wire \ser_C.kept_shift_reg[288] ;
 wire \ser_C.kept_shift_reg[289] ;
 wire \ser_C.kept_shift_reg[28] ;
 wire \ser_C.kept_shift_reg[290] ;
 wire \ser_C.kept_shift_reg[291] ;
 wire \ser_C.kept_shift_reg[292] ;
 wire \ser_C.kept_shift_reg[293] ;
 wire \ser_C.kept_shift_reg[294] ;
 wire \ser_C.kept_shift_reg[295] ;
 wire \ser_C.kept_shift_reg[296] ;
 wire \ser_C.kept_shift_reg[297] ;
 wire \ser_C.kept_shift_reg[298] ;
 wire \ser_C.kept_shift_reg[299] ;
 wire \ser_C.kept_shift_reg[29] ;
 wire \ser_C.kept_shift_reg[2] ;
 wire \ser_C.kept_shift_reg[300] ;
 wire \ser_C.kept_shift_reg[301] ;
 wire \ser_C.kept_shift_reg[302] ;
 wire \ser_C.kept_shift_reg[303] ;
 wire \ser_C.kept_shift_reg[304] ;
 wire \ser_C.kept_shift_reg[305] ;
 wire \ser_C.kept_shift_reg[306] ;
 wire \ser_C.kept_shift_reg[307] ;
 wire \ser_C.kept_shift_reg[308] ;
 wire \ser_C.kept_shift_reg[309] ;
 wire \ser_C.kept_shift_reg[30] ;
 wire \ser_C.kept_shift_reg[310] ;
 wire \ser_C.kept_shift_reg[311] ;
 wire \ser_C.kept_shift_reg[312] ;
 wire \ser_C.kept_shift_reg[313] ;
 wire \ser_C.kept_shift_reg[314] ;
 wire \ser_C.kept_shift_reg[315] ;
 wire \ser_C.kept_shift_reg[316] ;
 wire \ser_C.kept_shift_reg[317] ;
 wire \ser_C.kept_shift_reg[318] ;
 wire \ser_C.kept_shift_reg[319] ;
 wire \ser_C.kept_shift_reg[31] ;
 wire \ser_C.kept_shift_reg[320] ;
 wire \ser_C.kept_shift_reg[321] ;
 wire \ser_C.kept_shift_reg[322] ;
 wire \ser_C.kept_shift_reg[323] ;
 wire \ser_C.kept_shift_reg[324] ;
 wire \ser_C.kept_shift_reg[325] ;
 wire \ser_C.kept_shift_reg[326] ;
 wire \ser_C.kept_shift_reg[327] ;
 wire \ser_C.kept_shift_reg[328] ;
 wire \ser_C.kept_shift_reg[329] ;
 wire \ser_C.kept_shift_reg[32] ;
 wire \ser_C.kept_shift_reg[330] ;
 wire \ser_C.kept_shift_reg[331] ;
 wire \ser_C.kept_shift_reg[332] ;
 wire \ser_C.kept_shift_reg[333] ;
 wire \ser_C.kept_shift_reg[334] ;
 wire \ser_C.kept_shift_reg[335] ;
 wire \ser_C.kept_shift_reg[336] ;
 wire \ser_C.kept_shift_reg[337] ;
 wire \ser_C.kept_shift_reg[338] ;
 wire \ser_C.kept_shift_reg[339] ;
 wire \ser_C.kept_shift_reg[33] ;
 wire \ser_C.kept_shift_reg[340] ;
 wire \ser_C.kept_shift_reg[341] ;
 wire \ser_C.kept_shift_reg[342] ;
 wire \ser_C.kept_shift_reg[343] ;
 wire \ser_C.kept_shift_reg[344] ;
 wire \ser_C.kept_shift_reg[345] ;
 wire \ser_C.kept_shift_reg[346] ;
 wire \ser_C.kept_shift_reg[347] ;
 wire \ser_C.kept_shift_reg[348] ;
 wire \ser_C.kept_shift_reg[349] ;
 wire \ser_C.kept_shift_reg[34] ;
 wire \ser_C.kept_shift_reg[350] ;
 wire \ser_C.kept_shift_reg[351] ;
 wire \ser_C.kept_shift_reg[352] ;
 wire \ser_C.kept_shift_reg[353] ;
 wire \ser_C.kept_shift_reg[354] ;
 wire \ser_C.kept_shift_reg[355] ;
 wire \ser_C.kept_shift_reg[356] ;
 wire \ser_C.kept_shift_reg[357] ;
 wire \ser_C.kept_shift_reg[358] ;
 wire \ser_C.kept_shift_reg[359] ;
 wire \ser_C.kept_shift_reg[35] ;
 wire \ser_C.kept_shift_reg[360] ;
 wire \ser_C.kept_shift_reg[361] ;
 wire \ser_C.kept_shift_reg[362] ;
 wire \ser_C.kept_shift_reg[363] ;
 wire \ser_C.kept_shift_reg[364] ;
 wire \ser_C.kept_shift_reg[365] ;
 wire \ser_C.kept_shift_reg[366] ;
 wire \ser_C.kept_shift_reg[367] ;
 wire \ser_C.kept_shift_reg[368] ;
 wire \ser_C.kept_shift_reg[369] ;
 wire \ser_C.kept_shift_reg[36] ;
 wire \ser_C.kept_shift_reg[370] ;
 wire \ser_C.kept_shift_reg[371] ;
 wire \ser_C.kept_shift_reg[372] ;
 wire \ser_C.kept_shift_reg[373] ;
 wire \ser_C.kept_shift_reg[374] ;
 wire \ser_C.kept_shift_reg[375] ;
 wire \ser_C.kept_shift_reg[376] ;
 wire \ser_C.kept_shift_reg[377] ;
 wire \ser_C.kept_shift_reg[378] ;
 wire \ser_C.kept_shift_reg[379] ;
 wire \ser_C.kept_shift_reg[37] ;
 wire \ser_C.kept_shift_reg[380] ;
 wire \ser_C.kept_shift_reg[381] ;
 wire \ser_C.kept_shift_reg[382] ;
 wire \ser_C.kept_shift_reg[383] ;
 wire \ser_C.kept_shift_reg[384] ;
 wire \ser_C.kept_shift_reg[385] ;
 wire \ser_C.kept_shift_reg[386] ;
 wire \ser_C.kept_shift_reg[387] ;
 wire \ser_C.kept_shift_reg[388] ;
 wire \ser_C.kept_shift_reg[389] ;
 wire \ser_C.kept_shift_reg[38] ;
 wire \ser_C.kept_shift_reg[390] ;
 wire \ser_C.kept_shift_reg[391] ;
 wire \ser_C.kept_shift_reg[392] ;
 wire \ser_C.kept_shift_reg[393] ;
 wire \ser_C.kept_shift_reg[394] ;
 wire \ser_C.kept_shift_reg[395] ;
 wire \ser_C.kept_shift_reg[396] ;
 wire \ser_C.kept_shift_reg[397] ;
 wire \ser_C.kept_shift_reg[398] ;
 wire \ser_C.kept_shift_reg[399] ;
 wire \ser_C.kept_shift_reg[39] ;
 wire \ser_C.kept_shift_reg[3] ;
 wire \ser_C.kept_shift_reg[400] ;
 wire \ser_C.kept_shift_reg[401] ;
 wire \ser_C.kept_shift_reg[402] ;
 wire \ser_C.kept_shift_reg[403] ;
 wire \ser_C.kept_shift_reg[404] ;
 wire \ser_C.kept_shift_reg[405] ;
 wire \ser_C.kept_shift_reg[406] ;
 wire \ser_C.kept_shift_reg[407] ;
 wire \ser_C.kept_shift_reg[408] ;
 wire \ser_C.kept_shift_reg[409] ;
 wire \ser_C.kept_shift_reg[40] ;
 wire \ser_C.kept_shift_reg[410] ;
 wire \ser_C.kept_shift_reg[411] ;
 wire \ser_C.kept_shift_reg[412] ;
 wire \ser_C.kept_shift_reg[413] ;
 wire \ser_C.kept_shift_reg[414] ;
 wire \ser_C.kept_shift_reg[415] ;
 wire \ser_C.kept_shift_reg[416] ;
 wire \ser_C.kept_shift_reg[417] ;
 wire \ser_C.kept_shift_reg[418] ;
 wire \ser_C.kept_shift_reg[419] ;
 wire \ser_C.kept_shift_reg[41] ;
 wire \ser_C.kept_shift_reg[420] ;
 wire \ser_C.kept_shift_reg[421] ;
 wire \ser_C.kept_shift_reg[422] ;
 wire \ser_C.kept_shift_reg[423] ;
 wire \ser_C.kept_shift_reg[424] ;
 wire \ser_C.kept_shift_reg[425] ;
 wire \ser_C.kept_shift_reg[426] ;
 wire \ser_C.kept_shift_reg[427] ;
 wire \ser_C.kept_shift_reg[428] ;
 wire \ser_C.kept_shift_reg[429] ;
 wire \ser_C.kept_shift_reg[42] ;
 wire \ser_C.kept_shift_reg[430] ;
 wire \ser_C.kept_shift_reg[431] ;
 wire \ser_C.kept_shift_reg[432] ;
 wire \ser_C.kept_shift_reg[433] ;
 wire \ser_C.kept_shift_reg[434] ;
 wire \ser_C.kept_shift_reg[435] ;
 wire \ser_C.kept_shift_reg[436] ;
 wire \ser_C.kept_shift_reg[437] ;
 wire \ser_C.kept_shift_reg[438] ;
 wire \ser_C.kept_shift_reg[439] ;
 wire \ser_C.kept_shift_reg[43] ;
 wire \ser_C.kept_shift_reg[440] ;
 wire \ser_C.kept_shift_reg[441] ;
 wire \ser_C.kept_shift_reg[442] ;
 wire \ser_C.kept_shift_reg[443] ;
 wire \ser_C.kept_shift_reg[444] ;
 wire \ser_C.kept_shift_reg[445] ;
 wire \ser_C.kept_shift_reg[446] ;
 wire \ser_C.kept_shift_reg[447] ;
 wire \ser_C.kept_shift_reg[448] ;
 wire \ser_C.kept_shift_reg[449] ;
 wire \ser_C.kept_shift_reg[44] ;
 wire \ser_C.kept_shift_reg[450] ;
 wire \ser_C.kept_shift_reg[451] ;
 wire \ser_C.kept_shift_reg[452] ;
 wire \ser_C.kept_shift_reg[453] ;
 wire \ser_C.kept_shift_reg[454] ;
 wire \ser_C.kept_shift_reg[455] ;
 wire \ser_C.kept_shift_reg[456] ;
 wire \ser_C.kept_shift_reg[457] ;
 wire \ser_C.kept_shift_reg[458] ;
 wire \ser_C.kept_shift_reg[459] ;
 wire \ser_C.kept_shift_reg[45] ;
 wire \ser_C.kept_shift_reg[460] ;
 wire \ser_C.kept_shift_reg[461] ;
 wire \ser_C.kept_shift_reg[462] ;
 wire \ser_C.kept_shift_reg[463] ;
 wire \ser_C.kept_shift_reg[464] ;
 wire \ser_C.kept_shift_reg[465] ;
 wire \ser_C.kept_shift_reg[466] ;
 wire \ser_C.kept_shift_reg[467] ;
 wire \ser_C.kept_shift_reg[468] ;
 wire \ser_C.kept_shift_reg[469] ;
 wire \ser_C.kept_shift_reg[46] ;
 wire \ser_C.kept_shift_reg[470] ;
 wire \ser_C.kept_shift_reg[471] ;
 wire \ser_C.kept_shift_reg[472] ;
 wire \ser_C.kept_shift_reg[473] ;
 wire \ser_C.kept_shift_reg[474] ;
 wire \ser_C.kept_shift_reg[475] ;
 wire \ser_C.kept_shift_reg[476] ;
 wire \ser_C.kept_shift_reg[477] ;
 wire \ser_C.kept_shift_reg[478] ;
 wire \ser_C.kept_shift_reg[479] ;
 wire \ser_C.kept_shift_reg[47] ;
 wire \ser_C.kept_shift_reg[480] ;
 wire \ser_C.kept_shift_reg[481] ;
 wire \ser_C.kept_shift_reg[482] ;
 wire \ser_C.kept_shift_reg[483] ;
 wire \ser_C.kept_shift_reg[484] ;
 wire \ser_C.kept_shift_reg[485] ;
 wire \ser_C.kept_shift_reg[486] ;
 wire \ser_C.kept_shift_reg[487] ;
 wire \ser_C.kept_shift_reg[488] ;
 wire \ser_C.kept_shift_reg[489] ;
 wire \ser_C.kept_shift_reg[48] ;
 wire \ser_C.kept_shift_reg[490] ;
 wire \ser_C.kept_shift_reg[491] ;
 wire \ser_C.kept_shift_reg[492] ;
 wire \ser_C.kept_shift_reg[493] ;
 wire \ser_C.kept_shift_reg[494] ;
 wire \ser_C.kept_shift_reg[495] ;
 wire \ser_C.kept_shift_reg[496] ;
 wire \ser_C.kept_shift_reg[497] ;
 wire \ser_C.kept_shift_reg[498] ;
 wire \ser_C.kept_shift_reg[499] ;
 wire \ser_C.kept_shift_reg[49] ;
 wire \ser_C.kept_shift_reg[4] ;
 wire \ser_C.kept_shift_reg[500] ;
 wire \ser_C.kept_shift_reg[501] ;
 wire \ser_C.kept_shift_reg[502] ;
 wire \ser_C.kept_shift_reg[503] ;
 wire \ser_C.kept_shift_reg[504] ;
 wire \ser_C.kept_shift_reg[505] ;
 wire \ser_C.kept_shift_reg[506] ;
 wire \ser_C.kept_shift_reg[507] ;
 wire \ser_C.kept_shift_reg[508] ;
 wire \ser_C.kept_shift_reg[509] ;
 wire \ser_C.kept_shift_reg[50] ;
 wire \ser_C.kept_shift_reg[510] ;
 wire \ser_C.kept_shift_reg[511] ;
 wire \ser_C.kept_shift_reg[51] ;
 wire \ser_C.kept_shift_reg[52] ;
 wire \ser_C.kept_shift_reg[53] ;
 wire \ser_C.kept_shift_reg[54] ;
 wire \ser_C.kept_shift_reg[55] ;
 wire \ser_C.kept_shift_reg[56] ;
 wire \ser_C.kept_shift_reg[57] ;
 wire \ser_C.kept_shift_reg[58] ;
 wire \ser_C.kept_shift_reg[59] ;
 wire \ser_C.kept_shift_reg[5] ;
 wire \ser_C.kept_shift_reg[60] ;
 wire \ser_C.kept_shift_reg[61] ;
 wire \ser_C.kept_shift_reg[62] ;
 wire \ser_C.kept_shift_reg[63] ;
 wire \ser_C.kept_shift_reg[64] ;
 wire \ser_C.kept_shift_reg[65] ;
 wire \ser_C.kept_shift_reg[66] ;
 wire \ser_C.kept_shift_reg[67] ;
 wire \ser_C.kept_shift_reg[68] ;
 wire \ser_C.kept_shift_reg[69] ;
 wire \ser_C.kept_shift_reg[6] ;
 wire \ser_C.kept_shift_reg[70] ;
 wire \ser_C.kept_shift_reg[71] ;
 wire \ser_C.kept_shift_reg[72] ;
 wire \ser_C.kept_shift_reg[73] ;
 wire \ser_C.kept_shift_reg[74] ;
 wire \ser_C.kept_shift_reg[75] ;
 wire \ser_C.kept_shift_reg[76] ;
 wire \ser_C.kept_shift_reg[77] ;
 wire \ser_C.kept_shift_reg[78] ;
 wire \ser_C.kept_shift_reg[79] ;
 wire \ser_C.kept_shift_reg[7] ;
 wire \ser_C.kept_shift_reg[80] ;
 wire \ser_C.kept_shift_reg[81] ;
 wire \ser_C.kept_shift_reg[82] ;
 wire \ser_C.kept_shift_reg[83] ;
 wire \ser_C.kept_shift_reg[84] ;
 wire \ser_C.kept_shift_reg[85] ;
 wire \ser_C.kept_shift_reg[86] ;
 wire \ser_C.kept_shift_reg[87] ;
 wire \ser_C.kept_shift_reg[88] ;
 wire \ser_C.kept_shift_reg[89] ;
 wire \ser_C.kept_shift_reg[8] ;
 wire \ser_C.kept_shift_reg[90] ;
 wire \ser_C.kept_shift_reg[91] ;
 wire \ser_C.kept_shift_reg[92] ;
 wire \ser_C.kept_shift_reg[93] ;
 wire \ser_C.kept_shift_reg[94] ;
 wire \ser_C.kept_shift_reg[95] ;
 wire \ser_C.kept_shift_reg[96] ;
 wire \ser_C.kept_shift_reg[97] ;
 wire \ser_C.kept_shift_reg[98] ;
 wire \ser_C.kept_shift_reg[99] ;
 wire \ser_C.kept_shift_reg[9] ;
 wire \ser_C.kept_transmitting ;
 wire \systolic_inst.ce_local ;
 wire \systolic_inst.cycle_cnt[0] ;
 wire \systolic_inst.cycle_cnt[10] ;
 wire \systolic_inst.cycle_cnt[11] ;
 wire \systolic_inst.cycle_cnt[12] ;
 wire \systolic_inst.cycle_cnt[13] ;
 wire \systolic_inst.cycle_cnt[14] ;
 wire \systolic_inst.cycle_cnt[15] ;
 wire \systolic_inst.cycle_cnt[16] ;
 wire \systolic_inst.cycle_cnt[17] ;
 wire \systolic_inst.cycle_cnt[18] ;
 wire \systolic_inst.cycle_cnt[19] ;
 wire \systolic_inst.cycle_cnt[1] ;
 wire \systolic_inst.cycle_cnt[20] ;
 wire \systolic_inst.cycle_cnt[21] ;
 wire \systolic_inst.cycle_cnt[22] ;
 wire \systolic_inst.cycle_cnt[23] ;
 wire \systolic_inst.cycle_cnt[24] ;
 wire \systolic_inst.cycle_cnt[25] ;
 wire \systolic_inst.cycle_cnt[26] ;
 wire \systolic_inst.cycle_cnt[27] ;
 wire \systolic_inst.cycle_cnt[28] ;
 wire \systolic_inst.cycle_cnt[29] ;
 wire \systolic_inst.cycle_cnt[2] ;
 wire \systolic_inst.cycle_cnt[30] ;
 wire \systolic_inst.cycle_cnt[31] ;
 wire \systolic_inst.cycle_cnt[3] ;
 wire \systolic_inst.cycle_cnt[4] ;
 wire \systolic_inst.cycle_cnt[5] ;
 wire \systolic_inst.cycle_cnt[6] ;
 wire \systolic_inst.cycle_cnt[7] ;
 wire \systolic_inst.cycle_cnt[8] ;
 wire \systolic_inst.cycle_cnt[9] ;

 sky130_fd_sc_hd__inv_2 _0528_ (.A(\systolic_inst.cycle_cnt[23] ),
    .Y(_0399_));
 sky130_fd_sc_hd__inv_2 _0529_ (.A(\systolic_inst.cycle_cnt[30] ),
    .Y(_0400_));
 sky130_fd_sc_hd__inv_2 _0530_ (.A(\systolic_inst.cycle_cnt[31] ),
    .Y(_0401_));
 sky130_fd_sc_hd__inv_2 _0531_ (.A(C_out_frame_sync),
    .Y(_0402_));
 sky130_fd_sc_hd__inv_2 _0532_ (.A(\deser_A.kept_receiving ),
    .Y(_0403_));
 sky130_fd_sc_hd__inv_2 _0533_ (.A(\deser_B.kept_receiving ),
    .Y(_0404_));
 sky130_fd_sc_hd__or4_2 _0534_ (.A(\systolic_inst.cycle_cnt[24] ),
    .B(\systolic_inst.cycle_cnt[25] ),
    .C(\systolic_inst.cycle_cnt[26] ),
    .D(\systolic_inst.cycle_cnt[27] ),
    .X(_0405_));
 sky130_fd_sc_hd__or4_2 _0535_ (.A(\systolic_inst.cycle_cnt[20] ),
    .B(\systolic_inst.cycle_cnt[21] ),
    .C(\systolic_inst.cycle_cnt[22] ),
    .D(\systolic_inst.cycle_cnt[23] ),
    .X(_0406_));
 sky130_fd_sc_hd__or4_2 _0536_ (.A(\systolic_inst.cycle_cnt[28] ),
    .B(\systolic_inst.cycle_cnt[29] ),
    .C(\systolic_inst.cycle_cnt[30] ),
    .D(\systolic_inst.cycle_cnt[31] ),
    .X(_0407_));
 sky130_fd_sc_hd__o21a_2 _0537_ (.A1(\systolic_inst.cycle_cnt[1] ),
    .A2(\systolic_inst.cycle_cnt[2] ),
    .B1(\systolic_inst.cycle_cnt[3] ),
    .X(_0408_));
 sky130_fd_sc_hd__or3_2 _0538_ (.A(\systolic_inst.cycle_cnt[8] ),
    .B(\systolic_inst.cycle_cnt[9] ),
    .C(\systolic_inst.cycle_cnt[10] ),
    .X(_0409_));
 sky130_fd_sc_hd__or4_2 _0539_ (.A(\systolic_inst.cycle_cnt[4] ),
    .B(\systolic_inst.cycle_cnt[5] ),
    .C(\systolic_inst.cycle_cnt[6] ),
    .D(\systolic_inst.cycle_cnt[7] ),
    .X(_0410_));
 sky130_fd_sc_hd__or4_2 _0540_ (.A(\systolic_inst.cycle_cnt[12] ),
    .B(\systolic_inst.cycle_cnt[13] ),
    .C(\systolic_inst.cycle_cnt[14] ),
    .D(\systolic_inst.cycle_cnt[15] ),
    .X(_0411_));
 sky130_fd_sc_hd__or4_2 _0541_ (.A(\systolic_inst.cycle_cnt[16] ),
    .B(\systolic_inst.cycle_cnt[17] ),
    .C(\systolic_inst.cycle_cnt[18] ),
    .D(\systolic_inst.cycle_cnt[19] ),
    .X(_0412_));
 sky130_fd_sc_hd__or4_2 _0542_ (.A(_0405_),
    .B(_0406_),
    .C(_0407_),
    .D(_0412_),
    .X(_0413_));
 sky130_fd_sc_hd__or4_2 _0543_ (.A(_0408_),
    .B(_0409_),
    .C(_0410_),
    .D(_0411_),
    .X(_0414_));
 sky130_fd_sc_hd__o31a_2 _0544_ (.A1(\systolic_inst.cycle_cnt[11] ),
    .A2(_0413_),
    .A3(_0414_),
    .B1(\systolic_inst.ce_local ),
    .X(_0003_));
 sky130_fd_sc_hd__and4_2 _0545_ (.A(\deser_A.bit_idx[1] ),
    .B(\deser_A.bit_idx[0] ),
    .C(\deser_A.bit_idx[3] ),
    .D(\deser_A.bit_idx[2] ),
    .X(_0415_));
 sky130_fd_sc_hd__and2_2 _0546_ (.A(\deser_A.bit_idx[4] ),
    .B(_0415_),
    .X(_0416_));
 sky130_fd_sc_hd__nand4_2 _0547_ (.A(\deser_A.receiving ),
    .B(\deser_A.bit_idx[5] ),
    .C(\deser_A.bit_idx[6] ),
    .D(_0416_),
    .Y(_0417_));
 sky130_fd_sc_hd__nor2_2 _0548_ (.A(\deser_A.bit_idx[7] ),
    .B(_0417_),
    .Y(_0418_));
 sky130_fd_sc_hd__nor2_2 _0549_ (.A(A_in_frame_sync),
    .B(\deser_A.receiving ),
    .Y(_0419_));
 sky130_fd_sc_hd__or2_2 _0550_ (.A(A_in_frame_sync),
    .B(\deser_A.receiving ),
    .X(_0420_));
 sky130_fd_sc_hd__nor2_2 _0551_ (.A(_0418_),
    .B(_0419_),
    .Y(_0000_));
 sky130_fd_sc_hd__and4_2 _0552_ (.A(\deser_B.bit_idx[1] ),
    .B(\deser_B.bit_idx[0] ),
    .C(\deser_B.bit_idx[3] ),
    .D(\deser_B.bit_idx[2] ),
    .X(_0421_));
 sky130_fd_sc_hd__and2_2 _0553_ (.A(\deser_B.bit_idx[4] ),
    .B(_0421_),
    .X(_0422_));
 sky130_fd_sc_hd__nand4_2 _0554_ (.A(\deser_B.receiving ),
    .B(\deser_B.bit_idx[5] ),
    .C(\deser_B.bit_idx[6] ),
    .D(_0422_),
    .Y(_0423_));
 sky130_fd_sc_hd__nor2_2 _0555_ (.A(\deser_B.bit_idx[7] ),
    .B(_0423_),
    .Y(_0424_));
 sky130_fd_sc_hd__nor2_2 _0556_ (.A(B_in_frame_sync),
    .B(\deser_B.receiving ),
    .Y(_0425_));
 sky130_fd_sc_hd__or2_2 _0557_ (.A(B_in_frame_sync),
    .B(\deser_B.receiving ),
    .X(_0426_));
 sky130_fd_sc_hd__nor2_2 _0558_ (.A(_0424_),
    .B(_0425_),
    .Y(_0001_));
 sky130_fd_sc_hd__nor2_2 _0559_ (.A(start),
    .B(\systolic_inst.ce_local ),
    .Y(_0427_));
 sky130_fd_sc_hd__or2_2 _0560_ (.A(start),
    .B(\systolic_inst.ce_local ),
    .X(_0428_));
 sky130_fd_sc_hd__nor2_2 _0561_ (.A(_0003_),
    .B(_0427_),
    .Y(_0004_));
 sky130_fd_sc_hd__and4b_2 _0562_ (.A_N(\ser_C.bit_idx[9] ),
    .B(\ser_C.bit_idx[8] ),
    .C(\ser_C.bit_idx[7] ),
    .D(\ser_C.bit_idx[6] ),
    .X(_0429_));
 sky130_fd_sc_hd__and4_2 _0563_ (.A(\ser_C.bit_idx[0] ),
    .B(\ser_C.bit_idx[1] ),
    .C(\ser_C.bit_idx[2] ),
    .D(\ser_C.bit_idx[3] ),
    .X(_0430_));
 sky130_fd_sc_hd__a41o_2 _0564_ (.A1(\ser_C.bit_idx[5] ),
    .A2(\ser_C.bit_idx[4] ),
    .A3(_0429_),
    .A4(_0430_),
    .B1(_0402_),
    .X(_0431_));
 sky130_fd_sc_hd__inv_2 _0565_ (.A(_0431_),
    .Y(_0002_));
 sky130_fd_sc_hd__mux2_1 _0566_ (.A0(\systolic_inst.ce_local ),
    .A1(_0427_),
    .S(\systolic_inst.cycle_cnt[0] ),
    .X(_0005_));
 sky130_fd_sc_hd__a21o_2 _0567_ (.A1(\systolic_inst.ce_local ),
    .A2(\systolic_inst.cycle_cnt[0] ),
    .B1(\systolic_inst.cycle_cnt[1] ),
    .X(_0432_));
 sky130_fd_sc_hd__and2_2 _0568_ (.A(\systolic_inst.cycle_cnt[0] ),
    .B(\systolic_inst.cycle_cnt[1] ),
    .X(_0433_));
 sky130_fd_sc_hd__and3_2 _0569_ (.A(\systolic_inst.ce_local ),
    .B(\systolic_inst.cycle_cnt[0] ),
    .C(\systolic_inst.cycle_cnt[1] ),
    .X(_0434_));
 sky130_fd_sc_hd__and2b_2 _0570_ (.A_N(\systolic_inst.ce_local ),
    .B(start),
    .X(_0435_));
 sky130_fd_sc_hd__nand2b_2 _0571_ (.A_N(\systolic_inst.ce_local ),
    .B(start),
    .Y(_0436_));
 sky130_fd_sc_hd__nor2_2 _0572_ (.A(_0434_),
    .B(_0435_),
    .Y(_0437_));
 sky130_fd_sc_hd__and2_2 _0573_ (.A(_0432_),
    .B(_0437_),
    .X(_0006_));
 sky130_fd_sc_hd__mux2_1 _0574_ (.A0(_0434_),
    .A1(_0437_),
    .S(\systolic_inst.cycle_cnt[2] ),
    .X(_0007_));
 sky130_fd_sc_hd__a31o_2 _0575_ (.A1(\systolic_inst.cycle_cnt[2] ),
    .A2(_0428_),
    .A3(_0433_),
    .B1(\systolic_inst.cycle_cnt[3] ),
    .X(_0438_));
 sky130_fd_sc_hd__and3_2 _0576_ (.A(\systolic_inst.cycle_cnt[2] ),
    .B(\systolic_inst.cycle_cnt[3] ),
    .C(_0434_),
    .X(_0439_));
 sky130_fd_sc_hd__nor2_2 _0577_ (.A(_0435_),
    .B(_0439_),
    .Y(_0440_));
 sky130_fd_sc_hd__and2_2 _0578_ (.A(_0438_),
    .B(_0440_),
    .X(_0008_));
 sky130_fd_sc_hd__mux2_1 _0579_ (.A0(_0439_),
    .A1(_0440_),
    .S(\systolic_inst.cycle_cnt[4] ),
    .X(_0009_));
 sky130_fd_sc_hd__and3_2 _0580_ (.A(\systolic_inst.cycle_cnt[2] ),
    .B(\systolic_inst.cycle_cnt[3] ),
    .C(\systolic_inst.cycle_cnt[4] ),
    .X(_0441_));
 sky130_fd_sc_hd__and3_2 _0581_ (.A(\systolic_inst.cycle_cnt[5] ),
    .B(_0434_),
    .C(_0441_),
    .X(_0442_));
 sky130_fd_sc_hd__nor2_2 _0582_ (.A(_0435_),
    .B(_0442_),
    .Y(_0443_));
 sky130_fd_sc_hd__and3_2 _0583_ (.A(_0428_),
    .B(_0433_),
    .C(_0441_),
    .X(_0444_));
 sky130_fd_sc_hd__o21a_2 _0584_ (.A1(\systolic_inst.cycle_cnt[5] ),
    .A2(_0444_),
    .B1(_0443_),
    .X(_0010_));
 sky130_fd_sc_hd__mux2_1 _0585_ (.A0(_0442_),
    .A1(_0443_),
    .S(\systolic_inst.cycle_cnt[6] ),
    .X(_0011_));
 sky130_fd_sc_hd__a31o_2 _0586_ (.A1(\systolic_inst.cycle_cnt[5] ),
    .A2(\systolic_inst.cycle_cnt[6] ),
    .A3(_0444_),
    .B1(\systolic_inst.cycle_cnt[7] ),
    .X(_0445_));
 sky130_fd_sc_hd__and3_2 _0587_ (.A(\systolic_inst.cycle_cnt[5] ),
    .B(\systolic_inst.cycle_cnt[6] ),
    .C(\systolic_inst.cycle_cnt[7] ),
    .X(_0446_));
 sky130_fd_sc_hd__and3_2 _0588_ (.A(_0433_),
    .B(_0441_),
    .C(_0446_),
    .X(_0447_));
 sky130_fd_sc_hd__and4_2 _0589_ (.A(\systolic_inst.ce_local ),
    .B(_0433_),
    .C(_0441_),
    .D(_0446_),
    .X(_0448_));
 sky130_fd_sc_hd__inv_2 _0590_ (.A(_0448_),
    .Y(_0449_));
 sky130_fd_sc_hd__and3_2 _0591_ (.A(_0436_),
    .B(_0445_),
    .C(_0449_),
    .X(_0012_));
 sky130_fd_sc_hd__a21oi_2 _0592_ (.A1(\systolic_inst.cycle_cnt[8] ),
    .A2(_0436_),
    .B1(_0448_),
    .Y(_0450_));
 sky130_fd_sc_hd__a21oi_2 _0593_ (.A1(\systolic_inst.cycle_cnt[8] ),
    .A2(_0448_),
    .B1(_0450_),
    .Y(_0013_));
 sky130_fd_sc_hd__and3_2 _0594_ (.A(\systolic_inst.cycle_cnt[8] ),
    .B(\systolic_inst.cycle_cnt[9] ),
    .C(_0448_),
    .X(_0451_));
 sky130_fd_sc_hd__nor2_2 _0595_ (.A(_0435_),
    .B(_0451_),
    .Y(_0452_));
 sky130_fd_sc_hd__and3_2 _0596_ (.A(\systolic_inst.cycle_cnt[8] ),
    .B(_0428_),
    .C(_0447_),
    .X(_0453_));
 sky130_fd_sc_hd__o21a_2 _0597_ (.A1(\systolic_inst.cycle_cnt[9] ),
    .A2(_0453_),
    .B1(_0452_),
    .X(_0014_));
 sky130_fd_sc_hd__mux2_1 _0598_ (.A0(_0451_),
    .A1(_0452_),
    .S(\systolic_inst.cycle_cnt[10] ),
    .X(_0015_));
 sky130_fd_sc_hd__a31o_2 _0599_ (.A1(\systolic_inst.cycle_cnt[9] ),
    .A2(\systolic_inst.cycle_cnt[10] ),
    .A3(_0453_),
    .B1(\systolic_inst.cycle_cnt[11] ),
    .X(_0454_));
 sky130_fd_sc_hd__and4_2 _0600_ (.A(\systolic_inst.cycle_cnt[8] ),
    .B(\systolic_inst.cycle_cnt[9] ),
    .C(\systolic_inst.cycle_cnt[10] ),
    .D(\systolic_inst.cycle_cnt[11] ),
    .X(_0455_));
 sky130_fd_sc_hd__and2_2 _0601_ (.A(_0448_),
    .B(_0455_),
    .X(_0456_));
 sky130_fd_sc_hd__inv_2 _0602_ (.A(_0456_),
    .Y(_0457_));
 sky130_fd_sc_hd__and3_2 _0603_ (.A(_0436_),
    .B(_0454_),
    .C(_0457_),
    .X(_0016_));
 sky130_fd_sc_hd__nand2_2 _0604_ (.A(\systolic_inst.cycle_cnt[12] ),
    .B(_0436_),
    .Y(_0458_));
 sky130_fd_sc_hd__mux2_1 _0605_ (.A0(_0458_),
    .A1(\systolic_inst.cycle_cnt[12] ),
    .S(_0456_),
    .X(_0459_));
 sky130_fd_sc_hd__inv_2 _0606_ (.A(_0459_),
    .Y(_0017_));
 sky130_fd_sc_hd__a22oi_2 _0607_ (.A1(\systolic_inst.cycle_cnt[13] ),
    .A2(_0436_),
    .B1(_0456_),
    .B2(\systolic_inst.cycle_cnt[12] ),
    .Y(_0460_));
 sky130_fd_sc_hd__and4_2 _0608_ (.A(\systolic_inst.cycle_cnt[12] ),
    .B(\systolic_inst.cycle_cnt[13] ),
    .C(_0448_),
    .D(_0455_),
    .X(_0461_));
 sky130_fd_sc_hd__nor2_2 _0609_ (.A(_0460_),
    .B(_0461_),
    .Y(_0018_));
 sky130_fd_sc_hd__a21oi_2 _0610_ (.A1(\systolic_inst.cycle_cnt[14] ),
    .A2(_0436_),
    .B1(_0461_),
    .Y(_0462_));
 sky130_fd_sc_hd__and3_2 _0611_ (.A(\systolic_inst.cycle_cnt[12] ),
    .B(\systolic_inst.cycle_cnt[13] ),
    .C(\systolic_inst.cycle_cnt[14] ),
    .X(_0463_));
 sky130_fd_sc_hd__a21oi_2 _0612_ (.A1(\systolic_inst.cycle_cnt[14] ),
    .A2(_0461_),
    .B1(_0462_),
    .Y(_0019_));
 sky130_fd_sc_hd__and3_2 _0613_ (.A(\systolic_inst.cycle_cnt[15] ),
    .B(_0455_),
    .C(_0463_),
    .X(_0464_));
 sky130_fd_sc_hd__and2_2 _0614_ (.A(_0448_),
    .B(_0464_),
    .X(_0465_));
 sky130_fd_sc_hd__nor2_2 _0615_ (.A(_0435_),
    .B(_0465_),
    .Y(_0466_));
 sky130_fd_sc_hd__and3b_2 _0616_ (.A_N(_0465_),
    .B(_0463_),
    .C(_0456_),
    .X(_0467_));
 sky130_fd_sc_hd__a21o_2 _0617_ (.A1(\systolic_inst.cycle_cnt[15] ),
    .A2(_0466_),
    .B1(_0467_),
    .X(_0020_));
 sky130_fd_sc_hd__mux2_1 _0618_ (.A0(_0465_),
    .A1(_0466_),
    .S(\systolic_inst.cycle_cnt[16] ),
    .X(_0021_));
 sky130_fd_sc_hd__and3_2 _0619_ (.A(\systolic_inst.cycle_cnt[16] ),
    .B(\systolic_inst.cycle_cnt[17] ),
    .C(_0465_),
    .X(_0468_));
 sky130_fd_sc_hd__a31oi_2 _0620_ (.A1(\systolic_inst.cycle_cnt[16] ),
    .A2(\systolic_inst.cycle_cnt[17] ),
    .A3(_0465_),
    .B1(_0435_),
    .Y(_0469_));
 sky130_fd_sc_hd__and3_2 _0621_ (.A(_0428_),
    .B(_0447_),
    .C(_0464_),
    .X(_0470_));
 sky130_fd_sc_hd__a21o_2 _0622_ (.A1(\systolic_inst.cycle_cnt[16] ),
    .A2(_0470_),
    .B1(\systolic_inst.cycle_cnt[17] ),
    .X(_0471_));
 sky130_fd_sc_hd__and2_2 _0623_ (.A(_0469_),
    .B(_0471_),
    .X(_0022_));
 sky130_fd_sc_hd__mux2_1 _0624_ (.A0(_0468_),
    .A1(_0469_),
    .S(\systolic_inst.cycle_cnt[18] ),
    .X(_0023_));
 sky130_fd_sc_hd__a41o_2 _0625_ (.A1(\systolic_inst.cycle_cnt[16] ),
    .A2(\systolic_inst.cycle_cnt[17] ),
    .A3(\systolic_inst.cycle_cnt[18] ),
    .A4(_0470_),
    .B1(\systolic_inst.cycle_cnt[19] ),
    .X(_0472_));
 sky130_fd_sc_hd__and4_2 _0626_ (.A(\systolic_inst.cycle_cnt[16] ),
    .B(\systolic_inst.cycle_cnt[17] ),
    .C(\systolic_inst.cycle_cnt[18] ),
    .D(\systolic_inst.cycle_cnt[19] ),
    .X(_0473_));
 sky130_fd_sc_hd__and3_2 _0627_ (.A(_0448_),
    .B(_0464_),
    .C(_0473_),
    .X(_0474_));
 sky130_fd_sc_hd__nor2_2 _0628_ (.A(_0435_),
    .B(_0474_),
    .Y(_0475_));
 sky130_fd_sc_hd__and2_2 _0629_ (.A(_0472_),
    .B(_0475_),
    .X(_0024_));
 sky130_fd_sc_hd__mux2_1 _0630_ (.A0(_0474_),
    .A1(_0475_),
    .S(\systolic_inst.cycle_cnt[20] ),
    .X(_0025_));
 sky130_fd_sc_hd__a31o_2 _0631_ (.A1(\systolic_inst.cycle_cnt[20] ),
    .A2(_0470_),
    .A3(_0473_),
    .B1(\systolic_inst.cycle_cnt[21] ),
    .X(_0476_));
 sky130_fd_sc_hd__nand3_2 _0632_ (.A(\systolic_inst.cycle_cnt[20] ),
    .B(\systolic_inst.cycle_cnt[21] ),
    .C(_0474_),
    .Y(_0477_));
 sky130_fd_sc_hd__and3_2 _0633_ (.A(_0436_),
    .B(_0476_),
    .C(_0477_),
    .X(_0026_));
 sky130_fd_sc_hd__nand2_2 _0634_ (.A(\systolic_inst.cycle_cnt[22] ),
    .B(_0436_),
    .Y(_0478_));
 sky130_fd_sc_hd__and3_2 _0635_ (.A(\systolic_inst.cycle_cnt[20] ),
    .B(\systolic_inst.cycle_cnt[21] ),
    .C(\systolic_inst.cycle_cnt[22] ),
    .X(_0479_));
 sky130_fd_sc_hd__nand2_2 _0636_ (.A(_0474_),
    .B(_0479_),
    .Y(_0480_));
 sky130_fd_sc_hd__a21boi_2 _0637_ (.A1(_0477_),
    .A2(_0478_),
    .B1_N(_0480_),
    .Y(_0027_));
 sky130_fd_sc_hd__nor2_2 _0638_ (.A(_0399_),
    .B(_0435_),
    .Y(_0481_));
 sky130_fd_sc_hd__mux2_1 _0639_ (.A0(_0399_),
    .A1(_0481_),
    .S(_0480_),
    .X(_0028_));
 sky130_fd_sc_hd__and3_2 _0640_ (.A(\systolic_inst.cycle_cnt[23] ),
    .B(_0473_),
    .C(_0479_),
    .X(_0482_));
 sky130_fd_sc_hd__and4_2 _0641_ (.A(\systolic_inst.ce_local ),
    .B(_0447_),
    .C(_0464_),
    .D(_0482_),
    .X(_0483_));
 sky130_fd_sc_hd__o21ai_2 _0642_ (.A1(\systolic_inst.cycle_cnt[24] ),
    .A2(_0483_),
    .B1(_0436_),
    .Y(_0484_));
 sky130_fd_sc_hd__a21oi_2 _0643_ (.A1(\systolic_inst.cycle_cnt[24] ),
    .A2(_0483_),
    .B1(_0484_),
    .Y(_0029_));
 sky130_fd_sc_hd__a31o_2 _0644_ (.A1(\systolic_inst.cycle_cnt[24] ),
    .A2(_0470_),
    .A3(_0482_),
    .B1(\systolic_inst.cycle_cnt[25] ),
    .X(_0485_));
 sky130_fd_sc_hd__and2_2 _0645_ (.A(\systolic_inst.cycle_cnt[24] ),
    .B(\systolic_inst.cycle_cnt[25] ),
    .X(_0486_));
 sky130_fd_sc_hd__nand2_2 _0646_ (.A(_0483_),
    .B(_0486_),
    .Y(_0487_));
 sky130_fd_sc_hd__and3_2 _0647_ (.A(_0436_),
    .B(_0485_),
    .C(_0487_),
    .X(_0030_));
 sky130_fd_sc_hd__nand2_2 _0648_ (.A(\systolic_inst.cycle_cnt[26] ),
    .B(_0436_),
    .Y(_0488_));
 sky130_fd_sc_hd__and3_2 _0649_ (.A(\systolic_inst.cycle_cnt[26] ),
    .B(_0483_),
    .C(_0486_),
    .X(_0489_));
 sky130_fd_sc_hd__a21oi_2 _0650_ (.A1(_0487_),
    .A2(_0488_),
    .B1(_0489_),
    .Y(_0031_));
 sky130_fd_sc_hd__and2_2 _0651_ (.A(\systolic_inst.cycle_cnt[27] ),
    .B(_0436_),
    .X(_0490_));
 sky130_fd_sc_hd__and3_2 _0652_ (.A(\systolic_inst.cycle_cnt[26] ),
    .B(\systolic_inst.cycle_cnt[27] ),
    .C(_0486_),
    .X(_0491_));
 sky130_fd_sc_hd__and4_2 _0653_ (.A(_0448_),
    .B(_0464_),
    .C(_0482_),
    .D(_0491_),
    .X(_0492_));
 sky130_fd_sc_hd__o21ba_2 _0654_ (.A1(_0489_),
    .A2(_0490_),
    .B1_N(_0492_),
    .X(_0032_));
 sky130_fd_sc_hd__and2_2 _0655_ (.A(\systolic_inst.cycle_cnt[28] ),
    .B(_0436_),
    .X(_0493_));
 sky130_fd_sc_hd__nand2_2 _0656_ (.A(\systolic_inst.cycle_cnt[28] ),
    .B(_0492_),
    .Y(_0494_));
 sky130_fd_sc_hd__o21a_2 _0657_ (.A1(_0492_),
    .A2(_0493_),
    .B1(_0494_),
    .X(_0033_));
 sky130_fd_sc_hd__nand2_2 _0658_ (.A(\systolic_inst.cycle_cnt[29] ),
    .B(_0436_),
    .Y(_0495_));
 sky130_fd_sc_hd__and3_2 _0659_ (.A(\systolic_inst.cycle_cnt[28] ),
    .B(\systolic_inst.cycle_cnt[29] ),
    .C(_0492_),
    .X(_0496_));
 sky130_fd_sc_hd__a21oi_2 _0660_ (.A1(_0494_),
    .A2(_0495_),
    .B1(_0496_),
    .Y(_0034_));
 sky130_fd_sc_hd__nor2_2 _0661_ (.A(_0400_),
    .B(_0435_),
    .Y(_0497_));
 sky130_fd_sc_hd__and4_2 _0662_ (.A(\systolic_inst.cycle_cnt[28] ),
    .B(\systolic_inst.cycle_cnt[29] ),
    .C(\systolic_inst.cycle_cnt[30] ),
    .D(_0492_),
    .X(_0498_));
 sky130_fd_sc_hd__mux2_1 _0663_ (.A0(_0497_),
    .A1(_0400_),
    .S(_0496_),
    .X(_0035_));
 sky130_fd_sc_hd__nor2_2 _0664_ (.A(_0401_),
    .B(_0435_),
    .Y(_0499_));
 sky130_fd_sc_hd__mux2_1 _0665_ (.A0(_0499_),
    .A1(_0401_),
    .S(_0498_),
    .X(_0036_));
 sky130_fd_sc_hd__mux2_1 _0666_ (.A0(\deser_A.receiving ),
    .A1(_0419_),
    .S(\deser_A.bit_idx[0] ),
    .X(_0037_));
 sky130_fd_sc_hd__and2b_2 _0667_ (.A_N(\deser_A.receiving ),
    .B(A_in_frame_sync),
    .X(_0500_));
 sky130_fd_sc_hd__nand2b_2 _0668_ (.A_N(\deser_A.receiving ),
    .B(A_in_frame_sync),
    .Y(_0501_));
 sky130_fd_sc_hd__and3_2 _0669_ (.A(\deser_A.receiving ),
    .B(\deser_A.bit_idx[1] ),
    .C(\deser_A.bit_idx[0] ),
    .X(_0502_));
 sky130_fd_sc_hd__nor2_2 _0670_ (.A(_0500_),
    .B(_0502_),
    .Y(_0503_));
 sky130_fd_sc_hd__a21o_2 _0671_ (.A1(\deser_A.bit_idx[0] ),
    .A2(_0420_),
    .B1(\deser_A.bit_idx[1] ),
    .X(_0504_));
 sky130_fd_sc_hd__and2_2 _0672_ (.A(_0503_),
    .B(_0504_),
    .X(_0038_));
 sky130_fd_sc_hd__mux2_1 _0673_ (.A0(_0502_),
    .A1(_0503_),
    .S(\deser_A.bit_idx[2] ),
    .X(_0039_));
 sky130_fd_sc_hd__a41o_2 _0674_ (.A1(\deser_A.bit_idx[1] ),
    .A2(\deser_A.bit_idx[0] ),
    .A3(\deser_A.bit_idx[2] ),
    .A4(_0420_),
    .B1(\deser_A.bit_idx[3] ),
    .X(_0505_));
 sky130_fd_sc_hd__nand2_2 _0675_ (.A(\deser_A.receiving ),
    .B(_0415_),
    .Y(_0506_));
 sky130_fd_sc_hd__and3_2 _0676_ (.A(_0501_),
    .B(_0505_),
    .C(_0506_),
    .X(_0040_));
 sky130_fd_sc_hd__nand2_2 _0677_ (.A(\deser_A.bit_idx[4] ),
    .B(_0501_),
    .Y(_0507_));
 sky130_fd_sc_hd__mux2_1 _0678_ (.A0(\deser_A.bit_idx[4] ),
    .A1(_0507_),
    .S(_0506_),
    .X(_0508_));
 sky130_fd_sc_hd__inv_2 _0679_ (.A(_0508_),
    .Y(_0041_));
 sky130_fd_sc_hd__nand3_2 _0680_ (.A(\deser_A.bit_idx[5] ),
    .B(_0416_),
    .C(_0420_),
    .Y(_0509_));
 sky130_fd_sc_hd__a31o_2 _0681_ (.A1(\deser_A.bit_idx[4] ),
    .A2(_0415_),
    .A3(_0420_),
    .B1(\deser_A.bit_idx[5] ),
    .X(_0510_));
 sky130_fd_sc_hd__and3_2 _0682_ (.A(_0501_),
    .B(_0509_),
    .C(_0510_),
    .X(_0042_));
 sky130_fd_sc_hd__a31o_2 _0683_ (.A1(\deser_A.bit_idx[5] ),
    .A2(_0416_),
    .A3(_0420_),
    .B1(\deser_A.bit_idx[6] ),
    .X(_0511_));
 sky130_fd_sc_hd__and3_2 _0684_ (.A(_0417_),
    .B(_0501_),
    .C(_0511_),
    .X(_0043_));
 sky130_fd_sc_hd__and3_2 _0685_ (.A(\deser_A.bit_idx[7] ),
    .B(_0417_),
    .C(_0501_),
    .X(_0512_));
 sky130_fd_sc_hd__or2_2 _0686_ (.A(_0418_),
    .B(_0512_),
    .X(_0044_));
 sky130_fd_sc_hd__mux2_1 _0687_ (.A0(\deser_A.receiving ),
    .A1(_0419_),
    .S(\deser_A.kept_bit_idx[0] ),
    .X(_0045_));
 sky130_fd_sc_hd__a21oi_2 _0688_ (.A1(\deser_A.kept_bit_idx[0] ),
    .A2(_0420_),
    .B1(\deser_A.kept_bit_idx[1] ),
    .Y(_0513_));
 sky130_fd_sc_hd__and3_2 _0689_ (.A(\deser_A.receiving ),
    .B(\deser_A.kept_bit_idx[0] ),
    .C(\deser_A.kept_bit_idx[1] ),
    .X(_0514_));
 sky130_fd_sc_hd__nor3_2 _0690_ (.A(_0500_),
    .B(_0513_),
    .C(_0514_),
    .Y(_0046_));
 sky130_fd_sc_hd__and3_2 _0691_ (.A(\deser_A.kept_bit_idx[0] ),
    .B(\deser_A.kept_bit_idx[1] ),
    .C(\deser_A.kept_bit_idx[2] ),
    .X(_0515_));
 sky130_fd_sc_hd__and4_2 _0692_ (.A(\deser_A.receiving ),
    .B(\deser_A.kept_bit_idx[0] ),
    .C(\deser_A.kept_bit_idx[1] ),
    .D(\deser_A.kept_bit_idx[2] ),
    .X(_0516_));
 sky130_fd_sc_hd__a21oi_2 _0693_ (.A1(\deser_A.kept_bit_idx[2] ),
    .A2(_0501_),
    .B1(_0514_),
    .Y(_0517_));
 sky130_fd_sc_hd__nor2_2 _0694_ (.A(_0516_),
    .B(_0517_),
    .Y(_0047_));
 sky130_fd_sc_hd__a21oi_2 _0695_ (.A1(\deser_A.kept_bit_idx[3] ),
    .A2(_0501_),
    .B1(_0516_),
    .Y(_0518_));
 sky130_fd_sc_hd__a21oi_2 _0696_ (.A1(\deser_A.kept_bit_idx[3] ),
    .A2(_0516_),
    .B1(_0518_),
    .Y(_0048_));
 sky130_fd_sc_hd__a22oi_2 _0697_ (.A1(\deser_A.kept_bit_idx[4] ),
    .A2(_0501_),
    .B1(_0516_),
    .B2(\deser_A.kept_bit_idx[3] ),
    .Y(_0519_));
 sky130_fd_sc_hd__a31o_2 _0698_ (.A1(\deser_A.kept_bit_idx[3] ),
    .A2(\deser_A.kept_bit_idx[4] ),
    .A3(_0516_),
    .B1(_0519_),
    .X(_0520_));
 sky130_fd_sc_hd__inv_2 _0699_ (.A(_0520_),
    .Y(_0049_));
 sky130_fd_sc_hd__and4_2 _0700_ (.A(\deser_A.kept_bit_idx[3] ),
    .B(\deser_A.kept_bit_idx[4] ),
    .C(\deser_A.kept_bit_idx[5] ),
    .D(_0516_),
    .X(_0521_));
 sky130_fd_sc_hd__inv_2 _0701_ (.A(_0521_),
    .Y(_0522_));
 sky130_fd_sc_hd__a41o_2 _0702_ (.A1(\deser_A.kept_bit_idx[3] ),
    .A2(\deser_A.kept_bit_idx[4] ),
    .A3(_0420_),
    .A4(_0515_),
    .B1(\deser_A.kept_bit_idx[5] ),
    .X(_0523_));
 sky130_fd_sc_hd__and3_2 _0703_ (.A(_0501_),
    .B(_0522_),
    .C(_0523_),
    .X(_0050_));
 sky130_fd_sc_hd__nand2_2 _0704_ (.A(\deser_A.kept_bit_idx[6] ),
    .B(_0521_),
    .Y(_0524_));
 sky130_fd_sc_hd__a21o_2 _0705_ (.A1(\deser_A.kept_bit_idx[6] ),
    .A2(_0501_),
    .B1(_0521_),
    .X(_0525_));
 sky130_fd_sc_hd__and2_2 _0706_ (.A(_0524_),
    .B(_0525_),
    .X(_0051_));
 sky130_fd_sc_hd__nand2_2 _0707_ (.A(\deser_A.kept_bit_idx[7] ),
    .B(_0501_),
    .Y(_0526_));
 sky130_fd_sc_hd__mux2_1 _0708_ (.A0(\deser_A.kept_bit_idx[7] ),
    .A1(_0526_),
    .S(_0524_),
    .X(_0527_));
 sky130_fd_sc_hd__inv_2 _0709_ (.A(_0527_),
    .Y(_0052_));
 sky130_fd_sc_hd__mux2_1 _0710_ (.A0(\deser_A.kept_shift_reg[1] ),
    .A1(\deser_A.kept_shift_reg[2] ),
    .S(\deser_A.receiving ),
    .X(_0053_));
 sky130_fd_sc_hd__mux2_1 _0711_ (.A0(\deser_A.kept_shift_reg[2] ),
    .A1(\deser_A.kept_shift_reg[3] ),
    .S(\deser_A.receiving ),
    .X(_0054_));
 sky130_fd_sc_hd__mux2_1 _0712_ (.A0(\deser_A.kept_shift_reg[3] ),
    .A1(\deser_A.kept_shift_reg[4] ),
    .S(\deser_A.receiving ),
    .X(_0055_));
 sky130_fd_sc_hd__mux2_1 _0713_ (.A0(\deser_A.kept_shift_reg[4] ),
    .A1(\deser_A.kept_shift_reg[5] ),
    .S(\deser_A.receiving ),
    .X(_0056_));
 sky130_fd_sc_hd__mux2_1 _0714_ (.A0(\deser_A.kept_shift_reg[5] ),
    .A1(\deser_A.kept_shift_reg[6] ),
    .S(\deser_A.receiving ),
    .X(_0057_));
 sky130_fd_sc_hd__mux2_1 _0715_ (.A0(\deser_A.kept_shift_reg[6] ),
    .A1(\deser_A.kept_shift_reg[7] ),
    .S(\deser_A.receiving ),
    .X(_0058_));
 sky130_fd_sc_hd__mux2_1 _0716_ (.A0(\deser_A.kept_shift_reg[7] ),
    .A1(\deser_A.kept_shift_reg[8] ),
    .S(\deser_A.receiving ),
    .X(_0059_));
 sky130_fd_sc_hd__mux2_1 _0717_ (.A0(\deser_A.kept_shift_reg[8] ),
    .A1(\deser_A.kept_shift_reg[9] ),
    .S(\deser_A.receiving ),
    .X(_0060_));
 sky130_fd_sc_hd__mux2_1 _0718_ (.A0(\deser_A.kept_shift_reg[9] ),
    .A1(\deser_A.kept_shift_reg[10] ),
    .S(\deser_A.receiving ),
    .X(_0061_));
 sky130_fd_sc_hd__mux2_1 _0719_ (.A0(\deser_A.kept_shift_reg[10] ),
    .A1(\deser_A.kept_shift_reg[11] ),
    .S(\deser_A.receiving ),
    .X(_0062_));
 sky130_fd_sc_hd__mux2_1 _0720_ (.A0(\deser_A.kept_shift_reg[11] ),
    .A1(\deser_A.kept_shift_reg[12] ),
    .S(\deser_A.receiving ),
    .X(_0063_));
 sky130_fd_sc_hd__mux2_1 _0721_ (.A0(\deser_A.kept_shift_reg[12] ),
    .A1(\deser_A.kept_shift_reg[13] ),
    .S(\deser_A.receiving ),
    .X(_0064_));
 sky130_fd_sc_hd__mux2_1 _0722_ (.A0(\deser_A.kept_shift_reg[13] ),
    .A1(\deser_A.kept_shift_reg[14] ),
    .S(\deser_A.receiving ),
    .X(_0065_));
 sky130_fd_sc_hd__mux2_1 _0723_ (.A0(\deser_A.kept_shift_reg[14] ),
    .A1(\deser_A.kept_shift_reg[15] ),
    .S(\deser_A.receiving ),
    .X(_0066_));
 sky130_fd_sc_hd__mux2_1 _0724_ (.A0(\deser_A.kept_shift_reg[15] ),
    .A1(\deser_A.kept_shift_reg[16] ),
    .S(\deser_A.receiving ),
    .X(_0067_));
 sky130_fd_sc_hd__mux2_1 _0725_ (.A0(\deser_A.kept_shift_reg[16] ),
    .A1(\deser_A.kept_shift_reg[17] ),
    .S(\deser_A.receiving ),
    .X(_0068_));
 sky130_fd_sc_hd__mux2_1 _0726_ (.A0(\deser_A.kept_shift_reg[17] ),
    .A1(\deser_A.kept_shift_reg[18] ),
    .S(\deser_A.receiving ),
    .X(_0069_));
 sky130_fd_sc_hd__mux2_1 _0727_ (.A0(\deser_A.kept_shift_reg[18] ),
    .A1(\deser_A.kept_shift_reg[19] ),
    .S(\deser_A.receiving ),
    .X(_0070_));
 sky130_fd_sc_hd__mux2_1 _0728_ (.A0(\deser_A.kept_shift_reg[19] ),
    .A1(\deser_A.kept_shift_reg[20] ),
    .S(\deser_A.receiving ),
    .X(_0071_));
 sky130_fd_sc_hd__mux2_1 _0729_ (.A0(\deser_A.kept_shift_reg[20] ),
    .A1(\deser_A.kept_shift_reg[21] ),
    .S(\deser_A.receiving ),
    .X(_0072_));
 sky130_fd_sc_hd__mux2_1 _0730_ (.A0(\deser_A.kept_shift_reg[21] ),
    .A1(\deser_A.kept_shift_reg[22] ),
    .S(\deser_A.receiving ),
    .X(_0073_));
 sky130_fd_sc_hd__mux2_1 _0731_ (.A0(\deser_A.kept_shift_reg[22] ),
    .A1(\deser_A.kept_shift_reg[23] ),
    .S(\deser_A.receiving ),
    .X(_0074_));
 sky130_fd_sc_hd__mux2_1 _0732_ (.A0(\deser_A.kept_shift_reg[23] ),
    .A1(\deser_A.kept_shift_reg[24] ),
    .S(\deser_A.receiving ),
    .X(_0075_));
 sky130_fd_sc_hd__mux2_1 _0733_ (.A0(\deser_A.kept_shift_reg[24] ),
    .A1(\deser_A.kept_shift_reg[25] ),
    .S(\deser_A.receiving ),
    .X(_0076_));
 sky130_fd_sc_hd__mux2_1 _0734_ (.A0(\deser_A.kept_shift_reg[25] ),
    .A1(\deser_A.kept_shift_reg[26] ),
    .S(\deser_A.receiving ),
    .X(_0077_));
 sky130_fd_sc_hd__mux2_1 _0735_ (.A0(\deser_A.kept_shift_reg[26] ),
    .A1(\deser_A.kept_shift_reg[27] ),
    .S(\deser_A.receiving ),
    .X(_0078_));
 sky130_fd_sc_hd__mux2_1 _0736_ (.A0(\deser_A.kept_shift_reg[27] ),
    .A1(\deser_A.kept_shift_reg[28] ),
    .S(\deser_A.receiving ),
    .X(_0079_));
 sky130_fd_sc_hd__mux2_1 _0737_ (.A0(\deser_A.kept_shift_reg[28] ),
    .A1(\deser_A.kept_shift_reg[29] ),
    .S(\deser_A.receiving ),
    .X(_0080_));
 sky130_fd_sc_hd__mux2_1 _0738_ (.A0(\deser_A.kept_shift_reg[29] ),
    .A1(\deser_A.kept_shift_reg[30] ),
    .S(\deser_A.receiving ),
    .X(_0081_));
 sky130_fd_sc_hd__mux2_1 _0739_ (.A0(\deser_A.kept_shift_reg[30] ),
    .A1(\deser_A.kept_shift_reg[31] ),
    .S(\deser_A.receiving ),
    .X(_0082_));
 sky130_fd_sc_hd__mux2_1 _0740_ (.A0(\deser_A.kept_shift_reg[31] ),
    .A1(\deser_A.kept_shift_reg[32] ),
    .S(\deser_A.receiving ),
    .X(_0083_));
 sky130_fd_sc_hd__mux2_1 _0741_ (.A0(\deser_A.kept_shift_reg[32] ),
    .A1(\deser_A.kept_shift_reg[33] ),
    .S(\deser_A.receiving ),
    .X(_0084_));
 sky130_fd_sc_hd__mux2_1 _0742_ (.A0(\deser_A.kept_shift_reg[33] ),
    .A1(\deser_A.kept_shift_reg[34] ),
    .S(\deser_A.receiving ),
    .X(_0085_));
 sky130_fd_sc_hd__mux2_1 _0743_ (.A0(\deser_A.kept_shift_reg[34] ),
    .A1(\deser_A.kept_shift_reg[35] ),
    .S(\deser_A.receiving ),
    .X(_0086_));
 sky130_fd_sc_hd__mux2_1 _0744_ (.A0(\deser_A.kept_shift_reg[35] ),
    .A1(\deser_A.kept_shift_reg[36] ),
    .S(\deser_A.receiving ),
    .X(_0087_));
 sky130_fd_sc_hd__mux2_1 _0745_ (.A0(\deser_A.kept_shift_reg[36] ),
    .A1(\deser_A.kept_shift_reg[37] ),
    .S(\deser_A.receiving ),
    .X(_0088_));
 sky130_fd_sc_hd__mux2_1 _0746_ (.A0(\deser_A.kept_shift_reg[37] ),
    .A1(\deser_A.kept_shift_reg[38] ),
    .S(\deser_A.receiving ),
    .X(_0089_));
 sky130_fd_sc_hd__mux2_1 _0747_ (.A0(\deser_A.kept_shift_reg[38] ),
    .A1(\deser_A.kept_shift_reg[39] ),
    .S(\deser_A.receiving ),
    .X(_0090_));
 sky130_fd_sc_hd__mux2_1 _0748_ (.A0(\deser_A.kept_shift_reg[39] ),
    .A1(\deser_A.kept_shift_reg[40] ),
    .S(\deser_A.receiving ),
    .X(_0091_));
 sky130_fd_sc_hd__mux2_1 _0749_ (.A0(\deser_A.kept_shift_reg[40] ),
    .A1(\deser_A.kept_shift_reg[41] ),
    .S(\deser_A.receiving ),
    .X(_0092_));
 sky130_fd_sc_hd__mux2_1 _0750_ (.A0(\deser_A.kept_shift_reg[41] ),
    .A1(\deser_A.kept_shift_reg[42] ),
    .S(\deser_A.receiving ),
    .X(_0093_));
 sky130_fd_sc_hd__mux2_1 _0751_ (.A0(\deser_A.kept_shift_reg[42] ),
    .A1(\deser_A.kept_shift_reg[43] ),
    .S(\deser_A.receiving ),
    .X(_0094_));
 sky130_fd_sc_hd__mux2_1 _0752_ (.A0(\deser_A.kept_shift_reg[43] ),
    .A1(\deser_A.kept_shift_reg[44] ),
    .S(\deser_A.receiving ),
    .X(_0095_));
 sky130_fd_sc_hd__mux2_1 _0753_ (.A0(\deser_A.kept_shift_reg[44] ),
    .A1(\deser_A.kept_shift_reg[45] ),
    .S(\deser_A.receiving ),
    .X(_0096_));
 sky130_fd_sc_hd__mux2_1 _0754_ (.A0(\deser_A.kept_shift_reg[45] ),
    .A1(\deser_A.kept_shift_reg[46] ),
    .S(\deser_A.receiving ),
    .X(_0097_));
 sky130_fd_sc_hd__mux2_1 _0755_ (.A0(\deser_A.kept_shift_reg[46] ),
    .A1(\deser_A.kept_shift_reg[47] ),
    .S(\deser_A.receiving ),
    .X(_0098_));
 sky130_fd_sc_hd__mux2_1 _0756_ (.A0(\deser_A.kept_shift_reg[47] ),
    .A1(\deser_A.kept_shift_reg[48] ),
    .S(\deser_A.receiving ),
    .X(_0099_));
 sky130_fd_sc_hd__mux2_1 _0757_ (.A0(\deser_A.kept_shift_reg[48] ),
    .A1(\deser_A.kept_shift_reg[49] ),
    .S(\deser_A.receiving ),
    .X(_0100_));
 sky130_fd_sc_hd__mux2_1 _0758_ (.A0(\deser_A.kept_shift_reg[49] ),
    .A1(\deser_A.kept_shift_reg[50] ),
    .S(\deser_A.receiving ),
    .X(_0101_));
 sky130_fd_sc_hd__mux2_1 _0759_ (.A0(\deser_A.kept_shift_reg[50] ),
    .A1(\deser_A.kept_shift_reg[51] ),
    .S(\deser_A.receiving ),
    .X(_0102_));
 sky130_fd_sc_hd__mux2_1 _0760_ (.A0(\deser_A.kept_shift_reg[51] ),
    .A1(\deser_A.kept_shift_reg[52] ),
    .S(\deser_A.receiving ),
    .X(_0103_));
 sky130_fd_sc_hd__mux2_1 _0761_ (.A0(\deser_A.kept_shift_reg[52] ),
    .A1(\deser_A.kept_shift_reg[53] ),
    .S(\deser_A.receiving ),
    .X(_0104_));
 sky130_fd_sc_hd__mux2_1 _0762_ (.A0(\deser_A.kept_shift_reg[53] ),
    .A1(\deser_A.kept_shift_reg[54] ),
    .S(\deser_A.receiving ),
    .X(_0105_));
 sky130_fd_sc_hd__mux2_1 _0763_ (.A0(\deser_A.kept_shift_reg[54] ),
    .A1(\deser_A.kept_shift_reg[55] ),
    .S(\deser_A.receiving ),
    .X(_0106_));
 sky130_fd_sc_hd__mux2_1 _0764_ (.A0(\deser_A.kept_shift_reg[55] ),
    .A1(\deser_A.kept_shift_reg[56] ),
    .S(\deser_A.receiving ),
    .X(_0107_));
 sky130_fd_sc_hd__mux2_1 _0765_ (.A0(\deser_A.kept_shift_reg[56] ),
    .A1(\deser_A.kept_shift_reg[57] ),
    .S(\deser_A.receiving ),
    .X(_0108_));
 sky130_fd_sc_hd__mux2_1 _0766_ (.A0(\deser_A.kept_shift_reg[57] ),
    .A1(\deser_A.kept_shift_reg[58] ),
    .S(\deser_A.receiving ),
    .X(_0109_));
 sky130_fd_sc_hd__mux2_1 _0767_ (.A0(\deser_A.kept_shift_reg[58] ),
    .A1(\deser_A.kept_shift_reg[59] ),
    .S(\deser_A.receiving ),
    .X(_0110_));
 sky130_fd_sc_hd__mux2_1 _0768_ (.A0(\deser_A.kept_shift_reg[59] ),
    .A1(\deser_A.kept_shift_reg[60] ),
    .S(\deser_A.receiving ),
    .X(_0111_));
 sky130_fd_sc_hd__mux2_1 _0769_ (.A0(\deser_A.kept_shift_reg[60] ),
    .A1(\deser_A.kept_shift_reg[61] ),
    .S(\deser_A.receiving ),
    .X(_0112_));
 sky130_fd_sc_hd__mux2_1 _0770_ (.A0(\deser_A.kept_shift_reg[61] ),
    .A1(\deser_A.kept_shift_reg[62] ),
    .S(\deser_A.receiving ),
    .X(_0113_));
 sky130_fd_sc_hd__mux2_1 _0771_ (.A0(\deser_A.kept_shift_reg[62] ),
    .A1(\deser_A.kept_shift_reg[63] ),
    .S(\deser_A.receiving ),
    .X(_0114_));
 sky130_fd_sc_hd__mux2_1 _0772_ (.A0(\deser_A.kept_shift_reg[63] ),
    .A1(\deser_A.kept_shift_reg[64] ),
    .S(\deser_A.receiving ),
    .X(_0115_));
 sky130_fd_sc_hd__mux2_1 _0773_ (.A0(\deser_A.kept_shift_reg[64] ),
    .A1(\deser_A.kept_shift_reg[65] ),
    .S(\deser_A.receiving ),
    .X(_0116_));
 sky130_fd_sc_hd__mux2_1 _0774_ (.A0(\deser_A.kept_shift_reg[65] ),
    .A1(\deser_A.kept_shift_reg[66] ),
    .S(\deser_A.receiving ),
    .X(_0117_));
 sky130_fd_sc_hd__mux2_1 _0775_ (.A0(\deser_A.kept_shift_reg[66] ),
    .A1(\deser_A.kept_shift_reg[67] ),
    .S(\deser_A.receiving ),
    .X(_0118_));
 sky130_fd_sc_hd__mux2_1 _0776_ (.A0(\deser_A.kept_shift_reg[67] ),
    .A1(\deser_A.kept_shift_reg[68] ),
    .S(\deser_A.receiving ),
    .X(_0119_));
 sky130_fd_sc_hd__mux2_1 _0777_ (.A0(\deser_A.kept_shift_reg[68] ),
    .A1(\deser_A.kept_shift_reg[69] ),
    .S(\deser_A.receiving ),
    .X(_0120_));
 sky130_fd_sc_hd__mux2_1 _0778_ (.A0(\deser_A.kept_shift_reg[69] ),
    .A1(\deser_A.kept_shift_reg[70] ),
    .S(\deser_A.receiving ),
    .X(_0121_));
 sky130_fd_sc_hd__mux2_1 _0779_ (.A0(\deser_A.kept_shift_reg[70] ),
    .A1(\deser_A.kept_shift_reg[71] ),
    .S(\deser_A.receiving ),
    .X(_0122_));
 sky130_fd_sc_hd__mux2_1 _0780_ (.A0(\deser_A.kept_shift_reg[71] ),
    .A1(\deser_A.kept_shift_reg[72] ),
    .S(\deser_A.receiving ),
    .X(_0123_));
 sky130_fd_sc_hd__mux2_1 _0781_ (.A0(\deser_A.kept_shift_reg[72] ),
    .A1(\deser_A.kept_shift_reg[73] ),
    .S(\deser_A.receiving ),
    .X(_0124_));
 sky130_fd_sc_hd__mux2_1 _0782_ (.A0(\deser_A.kept_shift_reg[73] ),
    .A1(\deser_A.kept_shift_reg[74] ),
    .S(\deser_A.receiving ),
    .X(_0125_));
 sky130_fd_sc_hd__mux2_1 _0783_ (.A0(\deser_A.kept_shift_reg[74] ),
    .A1(\deser_A.kept_shift_reg[75] ),
    .S(\deser_A.receiving ),
    .X(_0126_));
 sky130_fd_sc_hd__mux2_1 _0784_ (.A0(\deser_A.kept_shift_reg[75] ),
    .A1(\deser_A.kept_shift_reg[76] ),
    .S(\deser_A.receiving ),
    .X(_0127_));
 sky130_fd_sc_hd__mux2_1 _0785_ (.A0(\deser_A.kept_shift_reg[76] ),
    .A1(\deser_A.kept_shift_reg[77] ),
    .S(\deser_A.receiving ),
    .X(_0128_));
 sky130_fd_sc_hd__mux2_1 _0786_ (.A0(\deser_A.kept_shift_reg[77] ),
    .A1(\deser_A.kept_shift_reg[78] ),
    .S(\deser_A.receiving ),
    .X(_0129_));
 sky130_fd_sc_hd__mux2_1 _0787_ (.A0(\deser_A.kept_shift_reg[78] ),
    .A1(\deser_A.kept_shift_reg[79] ),
    .S(\deser_A.receiving ),
    .X(_0130_));
 sky130_fd_sc_hd__mux2_1 _0788_ (.A0(\deser_A.kept_shift_reg[79] ),
    .A1(\deser_A.kept_shift_reg[80] ),
    .S(\deser_A.receiving ),
    .X(_0131_));
 sky130_fd_sc_hd__mux2_1 _0789_ (.A0(\deser_A.kept_shift_reg[80] ),
    .A1(\deser_A.kept_shift_reg[81] ),
    .S(\deser_A.receiving ),
    .X(_0132_));
 sky130_fd_sc_hd__mux2_1 _0790_ (.A0(\deser_A.kept_shift_reg[81] ),
    .A1(\deser_A.kept_shift_reg[82] ),
    .S(\deser_A.receiving ),
    .X(_0133_));
 sky130_fd_sc_hd__mux2_1 _0791_ (.A0(\deser_A.kept_shift_reg[82] ),
    .A1(\deser_A.kept_shift_reg[83] ),
    .S(\deser_A.receiving ),
    .X(_0134_));
 sky130_fd_sc_hd__mux2_1 _0792_ (.A0(\deser_A.kept_shift_reg[83] ),
    .A1(\deser_A.kept_shift_reg[84] ),
    .S(\deser_A.receiving ),
    .X(_0135_));
 sky130_fd_sc_hd__mux2_1 _0793_ (.A0(\deser_A.kept_shift_reg[84] ),
    .A1(\deser_A.kept_shift_reg[85] ),
    .S(\deser_A.receiving ),
    .X(_0136_));
 sky130_fd_sc_hd__mux2_1 _0794_ (.A0(\deser_A.kept_shift_reg[85] ),
    .A1(\deser_A.kept_shift_reg[86] ),
    .S(\deser_A.receiving ),
    .X(_0137_));
 sky130_fd_sc_hd__mux2_1 _0795_ (.A0(\deser_A.kept_shift_reg[86] ),
    .A1(\deser_A.kept_shift_reg[87] ),
    .S(\deser_A.receiving ),
    .X(_0138_));
 sky130_fd_sc_hd__mux2_1 _0796_ (.A0(\deser_A.kept_shift_reg[87] ),
    .A1(\deser_A.kept_shift_reg[88] ),
    .S(\deser_A.receiving ),
    .X(_0139_));
 sky130_fd_sc_hd__mux2_1 _0797_ (.A0(\deser_A.kept_shift_reg[88] ),
    .A1(\deser_A.kept_shift_reg[89] ),
    .S(\deser_A.receiving ),
    .X(_0140_));
 sky130_fd_sc_hd__mux2_1 _0798_ (.A0(\deser_A.kept_shift_reg[89] ),
    .A1(\deser_A.kept_shift_reg[90] ),
    .S(\deser_A.receiving ),
    .X(_0141_));
 sky130_fd_sc_hd__mux2_1 _0799_ (.A0(\deser_A.kept_shift_reg[90] ),
    .A1(\deser_A.kept_shift_reg[91] ),
    .S(\deser_A.receiving ),
    .X(_0142_));
 sky130_fd_sc_hd__mux2_1 _0800_ (.A0(\deser_A.kept_shift_reg[91] ),
    .A1(\deser_A.kept_shift_reg[92] ),
    .S(\deser_A.receiving ),
    .X(_0143_));
 sky130_fd_sc_hd__mux2_1 _0801_ (.A0(\deser_A.kept_shift_reg[92] ),
    .A1(\deser_A.kept_shift_reg[93] ),
    .S(\deser_A.receiving ),
    .X(_0144_));
 sky130_fd_sc_hd__mux2_1 _0802_ (.A0(\deser_A.kept_shift_reg[93] ),
    .A1(\deser_A.kept_shift_reg[94] ),
    .S(\deser_A.receiving ),
    .X(_0145_));
 sky130_fd_sc_hd__mux2_1 _0803_ (.A0(\deser_A.kept_shift_reg[94] ),
    .A1(\deser_A.kept_shift_reg[95] ),
    .S(\deser_A.receiving ),
    .X(_0146_));
 sky130_fd_sc_hd__mux2_1 _0804_ (.A0(\deser_A.kept_shift_reg[95] ),
    .A1(\deser_A.kept_shift_reg[96] ),
    .S(\deser_A.receiving ),
    .X(_0147_));
 sky130_fd_sc_hd__mux2_1 _0805_ (.A0(\deser_A.kept_shift_reg[96] ),
    .A1(\deser_A.kept_shift_reg[97] ),
    .S(\deser_A.receiving ),
    .X(_0148_));
 sky130_fd_sc_hd__mux2_1 _0806_ (.A0(\deser_A.kept_shift_reg[97] ),
    .A1(\deser_A.kept_shift_reg[98] ),
    .S(\deser_A.receiving ),
    .X(_0149_));
 sky130_fd_sc_hd__mux2_1 _0807_ (.A0(\deser_A.kept_shift_reg[98] ),
    .A1(\deser_A.kept_shift_reg[99] ),
    .S(\deser_A.receiving ),
    .X(_0150_));
 sky130_fd_sc_hd__mux2_1 _0808_ (.A0(\deser_A.kept_shift_reg[99] ),
    .A1(\deser_A.kept_shift_reg[100] ),
    .S(\deser_A.receiving ),
    .X(_0151_));
 sky130_fd_sc_hd__mux2_1 _0809_ (.A0(\deser_A.kept_shift_reg[100] ),
    .A1(\deser_A.kept_shift_reg[101] ),
    .S(\deser_A.receiving ),
    .X(_0152_));
 sky130_fd_sc_hd__mux2_1 _0810_ (.A0(\deser_A.kept_shift_reg[101] ),
    .A1(\deser_A.kept_shift_reg[102] ),
    .S(\deser_A.receiving ),
    .X(_0153_));
 sky130_fd_sc_hd__mux2_1 _0811_ (.A0(\deser_A.kept_shift_reg[102] ),
    .A1(\deser_A.kept_shift_reg[103] ),
    .S(\deser_A.receiving ),
    .X(_0154_));
 sky130_fd_sc_hd__mux2_1 _0812_ (.A0(\deser_A.kept_shift_reg[103] ),
    .A1(\deser_A.kept_shift_reg[104] ),
    .S(\deser_A.receiving ),
    .X(_0155_));
 sky130_fd_sc_hd__mux2_1 _0813_ (.A0(\deser_A.kept_shift_reg[104] ),
    .A1(\deser_A.kept_shift_reg[105] ),
    .S(\deser_A.receiving ),
    .X(_0156_));
 sky130_fd_sc_hd__mux2_1 _0814_ (.A0(\deser_A.kept_shift_reg[105] ),
    .A1(\deser_A.kept_shift_reg[106] ),
    .S(\deser_A.receiving ),
    .X(_0157_));
 sky130_fd_sc_hd__mux2_1 _0815_ (.A0(\deser_A.kept_shift_reg[106] ),
    .A1(\deser_A.kept_shift_reg[107] ),
    .S(\deser_A.receiving ),
    .X(_0158_));
 sky130_fd_sc_hd__mux2_1 _0816_ (.A0(\deser_A.kept_shift_reg[107] ),
    .A1(\deser_A.kept_shift_reg[108] ),
    .S(\deser_A.receiving ),
    .X(_0159_));
 sky130_fd_sc_hd__mux2_1 _0817_ (.A0(\deser_A.kept_shift_reg[108] ),
    .A1(\deser_A.kept_shift_reg[109] ),
    .S(\deser_A.receiving ),
    .X(_0160_));
 sky130_fd_sc_hd__mux2_1 _0818_ (.A0(\deser_A.kept_shift_reg[109] ),
    .A1(\deser_A.kept_shift_reg[110] ),
    .S(\deser_A.receiving ),
    .X(_0161_));
 sky130_fd_sc_hd__mux2_1 _0819_ (.A0(\deser_A.kept_shift_reg[110] ),
    .A1(\deser_A.kept_shift_reg[111] ),
    .S(\deser_A.receiving ),
    .X(_0162_));
 sky130_fd_sc_hd__mux2_1 _0820_ (.A0(\deser_A.kept_shift_reg[111] ),
    .A1(\deser_A.kept_shift_reg[112] ),
    .S(\deser_A.receiving ),
    .X(_0163_));
 sky130_fd_sc_hd__mux2_1 _0821_ (.A0(\deser_A.kept_shift_reg[112] ),
    .A1(\deser_A.kept_shift_reg[113] ),
    .S(\deser_A.receiving ),
    .X(_0164_));
 sky130_fd_sc_hd__mux2_1 _0822_ (.A0(\deser_A.kept_shift_reg[113] ),
    .A1(\deser_A.kept_shift_reg[114] ),
    .S(\deser_A.receiving ),
    .X(_0165_));
 sky130_fd_sc_hd__mux2_1 _0823_ (.A0(\deser_A.kept_shift_reg[114] ),
    .A1(\deser_A.kept_shift_reg[115] ),
    .S(\deser_A.receiving ),
    .X(_0166_));
 sky130_fd_sc_hd__mux2_1 _0824_ (.A0(\deser_A.kept_shift_reg[115] ),
    .A1(\deser_A.kept_shift_reg[116] ),
    .S(\deser_A.receiving ),
    .X(_0167_));
 sky130_fd_sc_hd__mux2_1 _0825_ (.A0(\deser_A.kept_shift_reg[116] ),
    .A1(\deser_A.kept_shift_reg[117] ),
    .S(\deser_A.receiving ),
    .X(_0168_));
 sky130_fd_sc_hd__mux2_1 _0826_ (.A0(\deser_A.kept_shift_reg[117] ),
    .A1(\deser_A.kept_shift_reg[118] ),
    .S(\deser_A.receiving ),
    .X(_0169_));
 sky130_fd_sc_hd__mux2_1 _0827_ (.A0(\deser_A.kept_shift_reg[118] ),
    .A1(\deser_A.kept_shift_reg[119] ),
    .S(\deser_A.receiving ),
    .X(_0170_));
 sky130_fd_sc_hd__mux2_1 _0828_ (.A0(\deser_A.kept_shift_reg[119] ),
    .A1(\deser_A.kept_shift_reg[120] ),
    .S(\deser_A.receiving ),
    .X(_0171_));
 sky130_fd_sc_hd__mux2_1 _0829_ (.A0(\deser_A.kept_shift_reg[120] ),
    .A1(\deser_A.kept_shift_reg[121] ),
    .S(\deser_A.receiving ),
    .X(_0172_));
 sky130_fd_sc_hd__mux2_1 _0830_ (.A0(\deser_A.kept_shift_reg[121] ),
    .A1(\deser_A.kept_shift_reg[122] ),
    .S(\deser_A.receiving ),
    .X(_0173_));
 sky130_fd_sc_hd__mux2_1 _0831_ (.A0(\deser_A.kept_shift_reg[122] ),
    .A1(\deser_A.kept_shift_reg[123] ),
    .S(\deser_A.receiving ),
    .X(_0174_));
 sky130_fd_sc_hd__mux2_1 _0832_ (.A0(\deser_A.kept_shift_reg[123] ),
    .A1(\deser_A.kept_shift_reg[124] ),
    .S(\deser_A.receiving ),
    .X(_0175_));
 sky130_fd_sc_hd__mux2_1 _0833_ (.A0(\deser_A.kept_shift_reg[124] ),
    .A1(\deser_A.kept_shift_reg[125] ),
    .S(\deser_A.receiving ),
    .X(_0176_));
 sky130_fd_sc_hd__mux2_1 _0834_ (.A0(\deser_A.kept_shift_reg[125] ),
    .A1(\deser_A.kept_shift_reg[126] ),
    .S(\deser_A.receiving ),
    .X(_0177_));
 sky130_fd_sc_hd__mux2_1 _0835_ (.A0(\deser_A.kept_shift_reg[126] ),
    .A1(\deser_A.kept_shift_reg[127] ),
    .S(\deser_A.receiving ),
    .X(_0178_));
 sky130_fd_sc_hd__mux2_1 _0836_ (.A0(\deser_A.kept_shift_reg[127] ),
    .A1(A_in_serial_data),
    .S(\deser_A.receiving ),
    .X(_0179_));
 sky130_fd_sc_hd__mux2_1 _0837_ (.A0(\deser_B.receiving ),
    .A1(_0425_),
    .S(\deser_B.bit_idx[0] ),
    .X(_0180_));
 sky130_fd_sc_hd__and2b_2 _0838_ (.A_N(\deser_B.receiving ),
    .B(B_in_frame_sync),
    .X(_0347_));
 sky130_fd_sc_hd__nand2b_2 _0839_ (.A_N(\deser_B.receiving ),
    .B(B_in_frame_sync),
    .Y(_0348_));
 sky130_fd_sc_hd__and3_2 _0840_ (.A(\deser_B.receiving ),
    .B(\deser_B.bit_idx[1] ),
    .C(\deser_B.bit_idx[0] ),
    .X(_0349_));
 sky130_fd_sc_hd__nor2_2 _0841_ (.A(_0347_),
    .B(_0349_),
    .Y(_0350_));
 sky130_fd_sc_hd__a21o_2 _0842_ (.A1(\deser_B.bit_idx[0] ),
    .A2(_0426_),
    .B1(\deser_B.bit_idx[1] ),
    .X(_0351_));
 sky130_fd_sc_hd__and2_2 _0843_ (.A(_0350_),
    .B(_0351_),
    .X(_0181_));
 sky130_fd_sc_hd__mux2_1 _0844_ (.A0(_0349_),
    .A1(_0350_),
    .S(\deser_B.bit_idx[2] ),
    .X(_0182_));
 sky130_fd_sc_hd__a41o_2 _0845_ (.A1(\deser_B.bit_idx[1] ),
    .A2(\deser_B.bit_idx[0] ),
    .A3(\deser_B.bit_idx[2] ),
    .A4(_0426_),
    .B1(\deser_B.bit_idx[3] ),
    .X(_0352_));
 sky130_fd_sc_hd__nand2_2 _0846_ (.A(\deser_B.receiving ),
    .B(_0421_),
    .Y(_0353_));
 sky130_fd_sc_hd__and3_2 _0847_ (.A(_0348_),
    .B(_0352_),
    .C(_0353_),
    .X(_0183_));
 sky130_fd_sc_hd__nand2_2 _0848_ (.A(\deser_B.bit_idx[4] ),
    .B(_0348_),
    .Y(_0354_));
 sky130_fd_sc_hd__mux2_1 _0849_ (.A0(\deser_B.bit_idx[4] ),
    .A1(_0354_),
    .S(_0353_),
    .X(_0355_));
 sky130_fd_sc_hd__inv_2 _0850_ (.A(_0355_),
    .Y(_0184_));
 sky130_fd_sc_hd__a21oi_2 _0851_ (.A1(_0422_),
    .A2(_0426_),
    .B1(\deser_B.bit_idx[5] ),
    .Y(_0356_));
 sky130_fd_sc_hd__a31o_2 _0852_ (.A1(\deser_B.bit_idx[5] ),
    .A2(_0422_),
    .A3(_0426_),
    .B1(_0347_),
    .X(_0357_));
 sky130_fd_sc_hd__nor2_2 _0853_ (.A(_0356_),
    .B(_0357_),
    .Y(_0185_));
 sky130_fd_sc_hd__a31o_2 _0854_ (.A1(\deser_B.bit_idx[5] ),
    .A2(_0422_),
    .A3(_0426_),
    .B1(\deser_B.bit_idx[6] ),
    .X(_0358_));
 sky130_fd_sc_hd__and3_2 _0855_ (.A(_0423_),
    .B(_0348_),
    .C(_0358_),
    .X(_0186_));
 sky130_fd_sc_hd__and3_2 _0856_ (.A(\deser_B.bit_idx[7] ),
    .B(_0423_),
    .C(_0348_),
    .X(_0359_));
 sky130_fd_sc_hd__or2_2 _0857_ (.A(_0424_),
    .B(_0359_),
    .X(_0187_));
 sky130_fd_sc_hd__mux2_1 _0858_ (.A0(\deser_B.receiving ),
    .A1(_0425_),
    .S(\deser_B.kept_bit_idx[0] ),
    .X(_0188_));
 sky130_fd_sc_hd__a21oi_2 _0859_ (.A1(\deser_B.kept_bit_idx[0] ),
    .A2(_0426_),
    .B1(\deser_B.kept_bit_idx[1] ),
    .Y(_0360_));
 sky130_fd_sc_hd__and3_2 _0860_ (.A(\deser_B.receiving ),
    .B(\deser_B.kept_bit_idx[0] ),
    .C(\deser_B.kept_bit_idx[1] ),
    .X(_0361_));
 sky130_fd_sc_hd__nor3_2 _0861_ (.A(_0347_),
    .B(_0360_),
    .C(_0361_),
    .Y(_0189_));
 sky130_fd_sc_hd__and3_2 _0862_ (.A(\deser_B.kept_bit_idx[0] ),
    .B(\deser_B.kept_bit_idx[1] ),
    .C(\deser_B.kept_bit_idx[2] ),
    .X(_0362_));
 sky130_fd_sc_hd__and4_2 _0863_ (.A(\deser_B.receiving ),
    .B(\deser_B.kept_bit_idx[0] ),
    .C(\deser_B.kept_bit_idx[1] ),
    .D(\deser_B.kept_bit_idx[2] ),
    .X(_0363_));
 sky130_fd_sc_hd__a21oi_2 _0864_ (.A1(\deser_B.kept_bit_idx[2] ),
    .A2(_0348_),
    .B1(_0361_),
    .Y(_0364_));
 sky130_fd_sc_hd__nor2_2 _0865_ (.A(_0363_),
    .B(_0364_),
    .Y(_0190_));
 sky130_fd_sc_hd__a21oi_2 _0866_ (.A1(\deser_B.kept_bit_idx[3] ),
    .A2(_0348_),
    .B1(_0363_),
    .Y(_0365_));
 sky130_fd_sc_hd__a21oi_2 _0867_ (.A1(\deser_B.kept_bit_idx[3] ),
    .A2(_0363_),
    .B1(_0365_),
    .Y(_0191_));
 sky130_fd_sc_hd__a22oi_2 _0868_ (.A1(\deser_B.kept_bit_idx[4] ),
    .A2(_0348_),
    .B1(_0363_),
    .B2(\deser_B.kept_bit_idx[3] ),
    .Y(_0366_));
 sky130_fd_sc_hd__a31o_2 _0869_ (.A1(\deser_B.kept_bit_idx[3] ),
    .A2(\deser_B.kept_bit_idx[4] ),
    .A3(_0363_),
    .B1(_0366_),
    .X(_0367_));
 sky130_fd_sc_hd__inv_2 _0870_ (.A(_0367_),
    .Y(_0192_));
 sky130_fd_sc_hd__and4_2 _0871_ (.A(\deser_B.kept_bit_idx[3] ),
    .B(\deser_B.kept_bit_idx[4] ),
    .C(\deser_B.kept_bit_idx[5] ),
    .D(_0363_),
    .X(_0368_));
 sky130_fd_sc_hd__inv_2 _0872_ (.A(_0368_),
    .Y(_0369_));
 sky130_fd_sc_hd__a41o_2 _0873_ (.A1(\deser_B.kept_bit_idx[3] ),
    .A2(\deser_B.kept_bit_idx[4] ),
    .A3(_0426_),
    .A4(_0362_),
    .B1(\deser_B.kept_bit_idx[5] ),
    .X(_0370_));
 sky130_fd_sc_hd__and3_2 _0874_ (.A(_0348_),
    .B(_0369_),
    .C(_0370_),
    .X(_0193_));
 sky130_fd_sc_hd__nand2_2 _0875_ (.A(\deser_B.kept_bit_idx[6] ),
    .B(_0368_),
    .Y(_0371_));
 sky130_fd_sc_hd__a21o_2 _0876_ (.A1(\deser_B.kept_bit_idx[6] ),
    .A2(_0348_),
    .B1(_0368_),
    .X(_0372_));
 sky130_fd_sc_hd__and2_2 _0877_ (.A(_0371_),
    .B(_0372_),
    .X(_0194_));
 sky130_fd_sc_hd__nand2_2 _0878_ (.A(\deser_B.kept_bit_idx[7] ),
    .B(_0348_),
    .Y(_0373_));
 sky130_fd_sc_hd__mux2_1 _0879_ (.A0(\deser_B.kept_bit_idx[7] ),
    .A1(_0373_),
    .S(_0371_),
    .X(_0374_));
 sky130_fd_sc_hd__inv_2 _0880_ (.A(_0374_),
    .Y(_0195_));
 sky130_fd_sc_hd__o21ai_2 _0881_ (.A1(_0403_),
    .A2(_0418_),
    .B1(_0501_),
    .Y(_0196_));
 sky130_fd_sc_hd__mux2_1 _0882_ (.A0(\deser_B.kept_shift_reg[1] ),
    .A1(\deser_B.kept_shift_reg[2] ),
    .S(\deser_B.receiving ),
    .X(_0197_));
 sky130_fd_sc_hd__mux2_1 _0883_ (.A0(\deser_B.kept_shift_reg[2] ),
    .A1(\deser_B.kept_shift_reg[3] ),
    .S(\deser_B.receiving ),
    .X(_0198_));
 sky130_fd_sc_hd__mux2_1 _0884_ (.A0(\deser_B.kept_shift_reg[3] ),
    .A1(\deser_B.kept_shift_reg[4] ),
    .S(\deser_B.receiving ),
    .X(_0199_));
 sky130_fd_sc_hd__mux2_1 _0885_ (.A0(\deser_B.kept_shift_reg[4] ),
    .A1(\deser_B.kept_shift_reg[5] ),
    .S(\deser_B.receiving ),
    .X(_0200_));
 sky130_fd_sc_hd__mux2_1 _0886_ (.A0(\deser_B.kept_shift_reg[5] ),
    .A1(\deser_B.kept_shift_reg[6] ),
    .S(\deser_B.receiving ),
    .X(_0201_));
 sky130_fd_sc_hd__mux2_1 _0887_ (.A0(\deser_B.kept_shift_reg[6] ),
    .A1(\deser_B.kept_shift_reg[7] ),
    .S(\deser_B.receiving ),
    .X(_0202_));
 sky130_fd_sc_hd__mux2_1 _0888_ (.A0(\deser_B.kept_shift_reg[7] ),
    .A1(\deser_B.kept_shift_reg[8] ),
    .S(\deser_B.receiving ),
    .X(_0203_));
 sky130_fd_sc_hd__mux2_1 _0889_ (.A0(\deser_B.kept_shift_reg[8] ),
    .A1(\deser_B.kept_shift_reg[9] ),
    .S(\deser_B.receiving ),
    .X(_0204_));
 sky130_fd_sc_hd__mux2_1 _0890_ (.A0(\deser_B.kept_shift_reg[9] ),
    .A1(\deser_B.kept_shift_reg[10] ),
    .S(\deser_B.receiving ),
    .X(_0205_));
 sky130_fd_sc_hd__mux2_1 _0891_ (.A0(\deser_B.kept_shift_reg[10] ),
    .A1(\deser_B.kept_shift_reg[11] ),
    .S(\deser_B.receiving ),
    .X(_0206_));
 sky130_fd_sc_hd__mux2_1 _0892_ (.A0(\deser_B.kept_shift_reg[11] ),
    .A1(\deser_B.kept_shift_reg[12] ),
    .S(\deser_B.receiving ),
    .X(_0207_));
 sky130_fd_sc_hd__mux2_1 _0893_ (.A0(\deser_B.kept_shift_reg[12] ),
    .A1(\deser_B.kept_shift_reg[13] ),
    .S(\deser_B.receiving ),
    .X(_0208_));
 sky130_fd_sc_hd__mux2_1 _0894_ (.A0(\deser_B.kept_shift_reg[13] ),
    .A1(\deser_B.kept_shift_reg[14] ),
    .S(\deser_B.receiving ),
    .X(_0209_));
 sky130_fd_sc_hd__mux2_1 _0895_ (.A0(\deser_B.kept_shift_reg[14] ),
    .A1(\deser_B.kept_shift_reg[15] ),
    .S(\deser_B.receiving ),
    .X(_0210_));
 sky130_fd_sc_hd__mux2_1 _0896_ (.A0(\deser_B.kept_shift_reg[15] ),
    .A1(\deser_B.kept_shift_reg[16] ),
    .S(\deser_B.receiving ),
    .X(_0211_));
 sky130_fd_sc_hd__mux2_1 _0897_ (.A0(\deser_B.kept_shift_reg[16] ),
    .A1(\deser_B.kept_shift_reg[17] ),
    .S(\deser_B.receiving ),
    .X(_0212_));
 sky130_fd_sc_hd__mux2_1 _0898_ (.A0(\deser_B.kept_shift_reg[17] ),
    .A1(\deser_B.kept_shift_reg[18] ),
    .S(\deser_B.receiving ),
    .X(_0213_));
 sky130_fd_sc_hd__mux2_1 _0899_ (.A0(\deser_B.kept_shift_reg[18] ),
    .A1(\deser_B.kept_shift_reg[19] ),
    .S(\deser_B.receiving ),
    .X(_0214_));
 sky130_fd_sc_hd__mux2_1 _0900_ (.A0(\deser_B.kept_shift_reg[19] ),
    .A1(\deser_B.kept_shift_reg[20] ),
    .S(\deser_B.receiving ),
    .X(_0215_));
 sky130_fd_sc_hd__mux2_1 _0901_ (.A0(\deser_B.kept_shift_reg[20] ),
    .A1(\deser_B.kept_shift_reg[21] ),
    .S(\deser_B.receiving ),
    .X(_0216_));
 sky130_fd_sc_hd__mux2_1 _0902_ (.A0(\deser_B.kept_shift_reg[21] ),
    .A1(\deser_B.kept_shift_reg[22] ),
    .S(\deser_B.receiving ),
    .X(_0217_));
 sky130_fd_sc_hd__mux2_1 _0903_ (.A0(\deser_B.kept_shift_reg[22] ),
    .A1(\deser_B.kept_shift_reg[23] ),
    .S(\deser_B.receiving ),
    .X(_0218_));
 sky130_fd_sc_hd__mux2_1 _0904_ (.A0(\deser_B.kept_shift_reg[23] ),
    .A1(\deser_B.kept_shift_reg[24] ),
    .S(\deser_B.receiving ),
    .X(_0219_));
 sky130_fd_sc_hd__mux2_1 _0905_ (.A0(\deser_B.kept_shift_reg[24] ),
    .A1(\deser_B.kept_shift_reg[25] ),
    .S(\deser_B.receiving ),
    .X(_0220_));
 sky130_fd_sc_hd__mux2_1 _0906_ (.A0(\deser_B.kept_shift_reg[25] ),
    .A1(\deser_B.kept_shift_reg[26] ),
    .S(\deser_B.receiving ),
    .X(_0221_));
 sky130_fd_sc_hd__mux2_1 _0907_ (.A0(\deser_B.kept_shift_reg[26] ),
    .A1(\deser_B.kept_shift_reg[27] ),
    .S(\deser_B.receiving ),
    .X(_0222_));
 sky130_fd_sc_hd__mux2_1 _0908_ (.A0(\deser_B.kept_shift_reg[27] ),
    .A1(\deser_B.kept_shift_reg[28] ),
    .S(\deser_B.receiving ),
    .X(_0223_));
 sky130_fd_sc_hd__mux2_1 _0909_ (.A0(\deser_B.kept_shift_reg[28] ),
    .A1(\deser_B.kept_shift_reg[29] ),
    .S(\deser_B.receiving ),
    .X(_0224_));
 sky130_fd_sc_hd__mux2_1 _0910_ (.A0(\deser_B.kept_shift_reg[29] ),
    .A1(\deser_B.kept_shift_reg[30] ),
    .S(\deser_B.receiving ),
    .X(_0225_));
 sky130_fd_sc_hd__mux2_1 _0911_ (.A0(\deser_B.kept_shift_reg[30] ),
    .A1(\deser_B.kept_shift_reg[31] ),
    .S(\deser_B.receiving ),
    .X(_0226_));
 sky130_fd_sc_hd__mux2_1 _0912_ (.A0(\deser_B.kept_shift_reg[31] ),
    .A1(\deser_B.kept_shift_reg[32] ),
    .S(\deser_B.receiving ),
    .X(_0227_));
 sky130_fd_sc_hd__mux2_1 _0913_ (.A0(\deser_B.kept_shift_reg[32] ),
    .A1(\deser_B.kept_shift_reg[33] ),
    .S(\deser_B.receiving ),
    .X(_0228_));
 sky130_fd_sc_hd__mux2_1 _0914_ (.A0(\deser_B.kept_shift_reg[33] ),
    .A1(\deser_B.kept_shift_reg[34] ),
    .S(\deser_B.receiving ),
    .X(_0229_));
 sky130_fd_sc_hd__mux2_1 _0915_ (.A0(\deser_B.kept_shift_reg[34] ),
    .A1(\deser_B.kept_shift_reg[35] ),
    .S(\deser_B.receiving ),
    .X(_0230_));
 sky130_fd_sc_hd__mux2_1 _0916_ (.A0(\deser_B.kept_shift_reg[35] ),
    .A1(\deser_B.kept_shift_reg[36] ),
    .S(\deser_B.receiving ),
    .X(_0231_));
 sky130_fd_sc_hd__mux2_1 _0917_ (.A0(\deser_B.kept_shift_reg[36] ),
    .A1(\deser_B.kept_shift_reg[37] ),
    .S(\deser_B.receiving ),
    .X(_0232_));
 sky130_fd_sc_hd__mux2_1 _0918_ (.A0(\deser_B.kept_shift_reg[37] ),
    .A1(\deser_B.kept_shift_reg[38] ),
    .S(\deser_B.receiving ),
    .X(_0233_));
 sky130_fd_sc_hd__mux2_1 _0919_ (.A0(\deser_B.kept_shift_reg[38] ),
    .A1(\deser_B.kept_shift_reg[39] ),
    .S(\deser_B.receiving ),
    .X(_0234_));
 sky130_fd_sc_hd__mux2_1 _0920_ (.A0(\deser_B.kept_shift_reg[39] ),
    .A1(\deser_B.kept_shift_reg[40] ),
    .S(\deser_B.receiving ),
    .X(_0235_));
 sky130_fd_sc_hd__mux2_1 _0921_ (.A0(\deser_B.kept_shift_reg[40] ),
    .A1(\deser_B.kept_shift_reg[41] ),
    .S(\deser_B.receiving ),
    .X(_0236_));
 sky130_fd_sc_hd__mux2_1 _0922_ (.A0(\deser_B.kept_shift_reg[41] ),
    .A1(\deser_B.kept_shift_reg[42] ),
    .S(\deser_B.receiving ),
    .X(_0237_));
 sky130_fd_sc_hd__mux2_1 _0923_ (.A0(\deser_B.kept_shift_reg[42] ),
    .A1(\deser_B.kept_shift_reg[43] ),
    .S(\deser_B.receiving ),
    .X(_0238_));
 sky130_fd_sc_hd__mux2_1 _0924_ (.A0(\deser_B.kept_shift_reg[43] ),
    .A1(\deser_B.kept_shift_reg[44] ),
    .S(\deser_B.receiving ),
    .X(_0239_));
 sky130_fd_sc_hd__mux2_1 _0925_ (.A0(\deser_B.kept_shift_reg[44] ),
    .A1(\deser_B.kept_shift_reg[45] ),
    .S(\deser_B.receiving ),
    .X(_0240_));
 sky130_fd_sc_hd__mux2_1 _0926_ (.A0(\deser_B.kept_shift_reg[45] ),
    .A1(\deser_B.kept_shift_reg[46] ),
    .S(\deser_B.receiving ),
    .X(_0241_));
 sky130_fd_sc_hd__mux2_1 _0927_ (.A0(\deser_B.kept_shift_reg[46] ),
    .A1(\deser_B.kept_shift_reg[47] ),
    .S(\deser_B.receiving ),
    .X(_0242_));
 sky130_fd_sc_hd__mux2_1 _0928_ (.A0(\deser_B.kept_shift_reg[47] ),
    .A1(\deser_B.kept_shift_reg[48] ),
    .S(\deser_B.receiving ),
    .X(_0243_));
 sky130_fd_sc_hd__mux2_1 _0929_ (.A0(\deser_B.kept_shift_reg[48] ),
    .A1(\deser_B.kept_shift_reg[49] ),
    .S(\deser_B.receiving ),
    .X(_0244_));
 sky130_fd_sc_hd__mux2_1 _0930_ (.A0(\deser_B.kept_shift_reg[49] ),
    .A1(\deser_B.kept_shift_reg[50] ),
    .S(\deser_B.receiving ),
    .X(_0245_));
 sky130_fd_sc_hd__mux2_1 _0931_ (.A0(\deser_B.kept_shift_reg[50] ),
    .A1(\deser_B.kept_shift_reg[51] ),
    .S(\deser_B.receiving ),
    .X(_0246_));
 sky130_fd_sc_hd__mux2_1 _0932_ (.A0(\deser_B.kept_shift_reg[51] ),
    .A1(\deser_B.kept_shift_reg[52] ),
    .S(\deser_B.receiving ),
    .X(_0247_));
 sky130_fd_sc_hd__mux2_1 _0933_ (.A0(\deser_B.kept_shift_reg[52] ),
    .A1(\deser_B.kept_shift_reg[53] ),
    .S(\deser_B.receiving ),
    .X(_0248_));
 sky130_fd_sc_hd__mux2_1 _0934_ (.A0(\deser_B.kept_shift_reg[53] ),
    .A1(\deser_B.kept_shift_reg[54] ),
    .S(\deser_B.receiving ),
    .X(_0249_));
 sky130_fd_sc_hd__mux2_1 _0935_ (.A0(\deser_B.kept_shift_reg[54] ),
    .A1(\deser_B.kept_shift_reg[55] ),
    .S(\deser_B.receiving ),
    .X(_0250_));
 sky130_fd_sc_hd__mux2_1 _0936_ (.A0(\deser_B.kept_shift_reg[55] ),
    .A1(\deser_B.kept_shift_reg[56] ),
    .S(\deser_B.receiving ),
    .X(_0251_));
 sky130_fd_sc_hd__mux2_1 _0937_ (.A0(\deser_B.kept_shift_reg[56] ),
    .A1(\deser_B.kept_shift_reg[57] ),
    .S(\deser_B.receiving ),
    .X(_0252_));
 sky130_fd_sc_hd__mux2_1 _0938_ (.A0(\deser_B.kept_shift_reg[57] ),
    .A1(\deser_B.kept_shift_reg[58] ),
    .S(\deser_B.receiving ),
    .X(_0253_));
 sky130_fd_sc_hd__mux2_1 _0939_ (.A0(\deser_B.kept_shift_reg[58] ),
    .A1(\deser_B.kept_shift_reg[59] ),
    .S(\deser_B.receiving ),
    .X(_0254_));
 sky130_fd_sc_hd__mux2_1 _0940_ (.A0(\deser_B.kept_shift_reg[59] ),
    .A1(\deser_B.kept_shift_reg[60] ),
    .S(\deser_B.receiving ),
    .X(_0255_));
 sky130_fd_sc_hd__mux2_1 _0941_ (.A0(\deser_B.kept_shift_reg[60] ),
    .A1(\deser_B.kept_shift_reg[61] ),
    .S(\deser_B.receiving ),
    .X(_0256_));
 sky130_fd_sc_hd__mux2_1 _0942_ (.A0(\deser_B.kept_shift_reg[61] ),
    .A1(\deser_B.kept_shift_reg[62] ),
    .S(\deser_B.receiving ),
    .X(_0257_));
 sky130_fd_sc_hd__mux2_1 _0943_ (.A0(\deser_B.kept_shift_reg[62] ),
    .A1(\deser_B.kept_shift_reg[63] ),
    .S(\deser_B.receiving ),
    .X(_0258_));
 sky130_fd_sc_hd__mux2_1 _0944_ (.A0(\deser_B.kept_shift_reg[63] ),
    .A1(\deser_B.kept_shift_reg[64] ),
    .S(\deser_B.receiving ),
    .X(_0259_));
 sky130_fd_sc_hd__mux2_1 _0945_ (.A0(\deser_B.kept_shift_reg[64] ),
    .A1(\deser_B.kept_shift_reg[65] ),
    .S(\deser_B.receiving ),
    .X(_0260_));
 sky130_fd_sc_hd__mux2_1 _0946_ (.A0(\deser_B.kept_shift_reg[65] ),
    .A1(\deser_B.kept_shift_reg[66] ),
    .S(\deser_B.receiving ),
    .X(_0261_));
 sky130_fd_sc_hd__mux2_1 _0947_ (.A0(\deser_B.kept_shift_reg[66] ),
    .A1(\deser_B.kept_shift_reg[67] ),
    .S(\deser_B.receiving ),
    .X(_0262_));
 sky130_fd_sc_hd__mux2_1 _0948_ (.A0(\deser_B.kept_shift_reg[67] ),
    .A1(\deser_B.kept_shift_reg[68] ),
    .S(\deser_B.receiving ),
    .X(_0263_));
 sky130_fd_sc_hd__mux2_1 _0949_ (.A0(\deser_B.kept_shift_reg[68] ),
    .A1(\deser_B.kept_shift_reg[69] ),
    .S(\deser_B.receiving ),
    .X(_0264_));
 sky130_fd_sc_hd__mux2_1 _0950_ (.A0(\deser_B.kept_shift_reg[69] ),
    .A1(\deser_B.kept_shift_reg[70] ),
    .S(\deser_B.receiving ),
    .X(_0265_));
 sky130_fd_sc_hd__mux2_1 _0951_ (.A0(\deser_B.kept_shift_reg[70] ),
    .A1(\deser_B.kept_shift_reg[71] ),
    .S(\deser_B.receiving ),
    .X(_0266_));
 sky130_fd_sc_hd__mux2_1 _0952_ (.A0(\deser_B.kept_shift_reg[71] ),
    .A1(\deser_B.kept_shift_reg[72] ),
    .S(\deser_B.receiving ),
    .X(_0267_));
 sky130_fd_sc_hd__mux2_1 _0953_ (.A0(\deser_B.kept_shift_reg[72] ),
    .A1(\deser_B.kept_shift_reg[73] ),
    .S(\deser_B.receiving ),
    .X(_0268_));
 sky130_fd_sc_hd__mux2_1 _0954_ (.A0(\deser_B.kept_shift_reg[73] ),
    .A1(\deser_B.kept_shift_reg[74] ),
    .S(\deser_B.receiving ),
    .X(_0269_));
 sky130_fd_sc_hd__mux2_1 _0955_ (.A0(\deser_B.kept_shift_reg[74] ),
    .A1(\deser_B.kept_shift_reg[75] ),
    .S(\deser_B.receiving ),
    .X(_0270_));
 sky130_fd_sc_hd__mux2_1 _0956_ (.A0(\deser_B.kept_shift_reg[75] ),
    .A1(\deser_B.kept_shift_reg[76] ),
    .S(\deser_B.receiving ),
    .X(_0271_));
 sky130_fd_sc_hd__mux2_1 _0957_ (.A0(\deser_B.kept_shift_reg[76] ),
    .A1(\deser_B.kept_shift_reg[77] ),
    .S(\deser_B.receiving ),
    .X(_0272_));
 sky130_fd_sc_hd__mux2_1 _0958_ (.A0(\deser_B.kept_shift_reg[77] ),
    .A1(\deser_B.kept_shift_reg[78] ),
    .S(\deser_B.receiving ),
    .X(_0273_));
 sky130_fd_sc_hd__mux2_1 _0959_ (.A0(\deser_B.kept_shift_reg[78] ),
    .A1(\deser_B.kept_shift_reg[79] ),
    .S(\deser_B.receiving ),
    .X(_0274_));
 sky130_fd_sc_hd__mux2_1 _0960_ (.A0(\deser_B.kept_shift_reg[79] ),
    .A1(\deser_B.kept_shift_reg[80] ),
    .S(\deser_B.receiving ),
    .X(_0275_));
 sky130_fd_sc_hd__mux2_1 _0961_ (.A0(\deser_B.kept_shift_reg[80] ),
    .A1(\deser_B.kept_shift_reg[81] ),
    .S(\deser_B.receiving ),
    .X(_0276_));
 sky130_fd_sc_hd__mux2_1 _0962_ (.A0(\deser_B.kept_shift_reg[81] ),
    .A1(\deser_B.kept_shift_reg[82] ),
    .S(\deser_B.receiving ),
    .X(_0277_));
 sky130_fd_sc_hd__mux2_1 _0963_ (.A0(\deser_B.kept_shift_reg[82] ),
    .A1(\deser_B.kept_shift_reg[83] ),
    .S(\deser_B.receiving ),
    .X(_0278_));
 sky130_fd_sc_hd__mux2_1 _0964_ (.A0(\deser_B.kept_shift_reg[83] ),
    .A1(\deser_B.kept_shift_reg[84] ),
    .S(\deser_B.receiving ),
    .X(_0279_));
 sky130_fd_sc_hd__mux2_1 _0965_ (.A0(\deser_B.kept_shift_reg[84] ),
    .A1(\deser_B.kept_shift_reg[85] ),
    .S(\deser_B.receiving ),
    .X(_0280_));
 sky130_fd_sc_hd__mux2_1 _0966_ (.A0(\deser_B.kept_shift_reg[85] ),
    .A1(\deser_B.kept_shift_reg[86] ),
    .S(\deser_B.receiving ),
    .X(_0281_));
 sky130_fd_sc_hd__mux2_1 _0967_ (.A0(\deser_B.kept_shift_reg[86] ),
    .A1(\deser_B.kept_shift_reg[87] ),
    .S(\deser_B.receiving ),
    .X(_0282_));
 sky130_fd_sc_hd__mux2_1 _0968_ (.A0(\deser_B.kept_shift_reg[87] ),
    .A1(\deser_B.kept_shift_reg[88] ),
    .S(\deser_B.receiving ),
    .X(_0283_));
 sky130_fd_sc_hd__mux2_1 _0969_ (.A0(\deser_B.kept_shift_reg[88] ),
    .A1(\deser_B.kept_shift_reg[89] ),
    .S(\deser_B.receiving ),
    .X(_0284_));
 sky130_fd_sc_hd__mux2_1 _0970_ (.A0(\deser_B.kept_shift_reg[89] ),
    .A1(\deser_B.kept_shift_reg[90] ),
    .S(\deser_B.receiving ),
    .X(_0285_));
 sky130_fd_sc_hd__mux2_1 _0971_ (.A0(\deser_B.kept_shift_reg[90] ),
    .A1(\deser_B.kept_shift_reg[91] ),
    .S(\deser_B.receiving ),
    .X(_0286_));
 sky130_fd_sc_hd__mux2_1 _0972_ (.A0(\deser_B.kept_shift_reg[91] ),
    .A1(\deser_B.kept_shift_reg[92] ),
    .S(\deser_B.receiving ),
    .X(_0287_));
 sky130_fd_sc_hd__mux2_1 _0973_ (.A0(\deser_B.kept_shift_reg[92] ),
    .A1(\deser_B.kept_shift_reg[93] ),
    .S(\deser_B.receiving ),
    .X(_0288_));
 sky130_fd_sc_hd__mux2_1 _0974_ (.A0(\deser_B.kept_shift_reg[93] ),
    .A1(\deser_B.kept_shift_reg[94] ),
    .S(\deser_B.receiving ),
    .X(_0289_));
 sky130_fd_sc_hd__mux2_1 _0975_ (.A0(\deser_B.kept_shift_reg[94] ),
    .A1(\deser_B.kept_shift_reg[95] ),
    .S(\deser_B.receiving ),
    .X(_0290_));
 sky130_fd_sc_hd__mux2_1 _0976_ (.A0(\deser_B.kept_shift_reg[95] ),
    .A1(\deser_B.kept_shift_reg[96] ),
    .S(\deser_B.receiving ),
    .X(_0291_));
 sky130_fd_sc_hd__mux2_1 _0977_ (.A0(\deser_B.kept_shift_reg[96] ),
    .A1(\deser_B.kept_shift_reg[97] ),
    .S(\deser_B.receiving ),
    .X(_0292_));
 sky130_fd_sc_hd__mux2_1 _0978_ (.A0(\deser_B.kept_shift_reg[97] ),
    .A1(\deser_B.kept_shift_reg[98] ),
    .S(\deser_B.receiving ),
    .X(_0293_));
 sky130_fd_sc_hd__mux2_1 _0979_ (.A0(\deser_B.kept_shift_reg[98] ),
    .A1(\deser_B.kept_shift_reg[99] ),
    .S(\deser_B.receiving ),
    .X(_0294_));
 sky130_fd_sc_hd__mux2_1 _0980_ (.A0(\deser_B.kept_shift_reg[99] ),
    .A1(\deser_B.kept_shift_reg[100] ),
    .S(\deser_B.receiving ),
    .X(_0295_));
 sky130_fd_sc_hd__mux2_1 _0981_ (.A0(\deser_B.kept_shift_reg[100] ),
    .A1(\deser_B.kept_shift_reg[101] ),
    .S(\deser_B.receiving ),
    .X(_0296_));
 sky130_fd_sc_hd__mux2_1 _0982_ (.A0(\deser_B.kept_shift_reg[101] ),
    .A1(\deser_B.kept_shift_reg[102] ),
    .S(\deser_B.receiving ),
    .X(_0297_));
 sky130_fd_sc_hd__mux2_1 _0983_ (.A0(\deser_B.kept_shift_reg[102] ),
    .A1(\deser_B.kept_shift_reg[103] ),
    .S(\deser_B.receiving ),
    .X(_0298_));
 sky130_fd_sc_hd__mux2_1 _0984_ (.A0(\deser_B.kept_shift_reg[103] ),
    .A1(\deser_B.kept_shift_reg[104] ),
    .S(\deser_B.receiving ),
    .X(_0299_));
 sky130_fd_sc_hd__mux2_1 _0985_ (.A0(\deser_B.kept_shift_reg[104] ),
    .A1(\deser_B.kept_shift_reg[105] ),
    .S(\deser_B.receiving ),
    .X(_0300_));
 sky130_fd_sc_hd__mux2_1 _0986_ (.A0(\deser_B.kept_shift_reg[105] ),
    .A1(\deser_B.kept_shift_reg[106] ),
    .S(\deser_B.receiving ),
    .X(_0301_));
 sky130_fd_sc_hd__mux2_1 _0987_ (.A0(\deser_B.kept_shift_reg[106] ),
    .A1(\deser_B.kept_shift_reg[107] ),
    .S(\deser_B.receiving ),
    .X(_0302_));
 sky130_fd_sc_hd__mux2_1 _0988_ (.A0(\deser_B.kept_shift_reg[107] ),
    .A1(\deser_B.kept_shift_reg[108] ),
    .S(\deser_B.receiving ),
    .X(_0303_));
 sky130_fd_sc_hd__mux2_1 _0989_ (.A0(\deser_B.kept_shift_reg[108] ),
    .A1(\deser_B.kept_shift_reg[109] ),
    .S(\deser_B.receiving ),
    .X(_0304_));
 sky130_fd_sc_hd__mux2_1 _0990_ (.A0(\deser_B.kept_shift_reg[109] ),
    .A1(\deser_B.kept_shift_reg[110] ),
    .S(\deser_B.receiving ),
    .X(_0305_));
 sky130_fd_sc_hd__mux2_1 _0991_ (.A0(\deser_B.kept_shift_reg[110] ),
    .A1(\deser_B.kept_shift_reg[111] ),
    .S(\deser_B.receiving ),
    .X(_0306_));
 sky130_fd_sc_hd__mux2_1 _0992_ (.A0(\deser_B.kept_shift_reg[111] ),
    .A1(\deser_B.kept_shift_reg[112] ),
    .S(\deser_B.receiving ),
    .X(_0307_));
 sky130_fd_sc_hd__mux2_1 _0993_ (.A0(\deser_B.kept_shift_reg[112] ),
    .A1(\deser_B.kept_shift_reg[113] ),
    .S(\deser_B.receiving ),
    .X(_0308_));
 sky130_fd_sc_hd__mux2_1 _0994_ (.A0(\deser_B.kept_shift_reg[113] ),
    .A1(\deser_B.kept_shift_reg[114] ),
    .S(\deser_B.receiving ),
    .X(_0309_));
 sky130_fd_sc_hd__mux2_1 _0995_ (.A0(\deser_B.kept_shift_reg[114] ),
    .A1(\deser_B.kept_shift_reg[115] ),
    .S(\deser_B.receiving ),
    .X(_0310_));
 sky130_fd_sc_hd__mux2_1 _0996_ (.A0(\deser_B.kept_shift_reg[115] ),
    .A1(\deser_B.kept_shift_reg[116] ),
    .S(\deser_B.receiving ),
    .X(_0311_));
 sky130_fd_sc_hd__mux2_1 _0997_ (.A0(\deser_B.kept_shift_reg[116] ),
    .A1(\deser_B.kept_shift_reg[117] ),
    .S(\deser_B.receiving ),
    .X(_0312_));
 sky130_fd_sc_hd__mux2_1 _0998_ (.A0(\deser_B.kept_shift_reg[117] ),
    .A1(\deser_B.kept_shift_reg[118] ),
    .S(\deser_B.receiving ),
    .X(_0313_));
 sky130_fd_sc_hd__mux2_1 _0999_ (.A0(\deser_B.kept_shift_reg[118] ),
    .A1(\deser_B.kept_shift_reg[119] ),
    .S(\deser_B.receiving ),
    .X(_0314_));
 sky130_fd_sc_hd__mux2_1 _1000_ (.A0(\deser_B.kept_shift_reg[119] ),
    .A1(\deser_B.kept_shift_reg[120] ),
    .S(\deser_B.receiving ),
    .X(_0315_));
 sky130_fd_sc_hd__mux2_1 _1001_ (.A0(\deser_B.kept_shift_reg[120] ),
    .A1(\deser_B.kept_shift_reg[121] ),
    .S(\deser_B.receiving ),
    .X(_0316_));
 sky130_fd_sc_hd__mux2_1 _1002_ (.A0(\deser_B.kept_shift_reg[121] ),
    .A1(\deser_B.kept_shift_reg[122] ),
    .S(\deser_B.receiving ),
    .X(_0317_));
 sky130_fd_sc_hd__mux2_1 _1003_ (.A0(\deser_B.kept_shift_reg[122] ),
    .A1(\deser_B.kept_shift_reg[123] ),
    .S(\deser_B.receiving ),
    .X(_0318_));
 sky130_fd_sc_hd__mux2_1 _1004_ (.A0(\deser_B.kept_shift_reg[123] ),
    .A1(\deser_B.kept_shift_reg[124] ),
    .S(\deser_B.receiving ),
    .X(_0319_));
 sky130_fd_sc_hd__mux2_1 _1005_ (.A0(\deser_B.kept_shift_reg[124] ),
    .A1(\deser_B.kept_shift_reg[125] ),
    .S(\deser_B.receiving ),
    .X(_0320_));
 sky130_fd_sc_hd__mux2_1 _1006_ (.A0(\deser_B.kept_shift_reg[125] ),
    .A1(\deser_B.kept_shift_reg[126] ),
    .S(\deser_B.receiving ),
    .X(_0321_));
 sky130_fd_sc_hd__mux2_1 _1007_ (.A0(\deser_B.kept_shift_reg[126] ),
    .A1(\deser_B.kept_shift_reg[127] ),
    .S(\deser_B.receiving ),
    .X(_0322_));
 sky130_fd_sc_hd__mux2_1 _1008_ (.A0(\deser_B.kept_shift_reg[127] ),
    .A1(B_in_serial_data),
    .S(\deser_B.receiving ),
    .X(_0323_));
 sky130_fd_sc_hd__and2_2 _1009_ (.A(\deser_B.receiving ),
    .B(\deser_B.kept_shift_reg[1] ),
    .X(_0375_));
 sky130_fd_sc_hd__a221o_2 _1010_ (.A1(\deser_B.kept_shift_reg[0] ),
    .A2(_0425_),
    .B1(_0347_),
    .B2(B_in_serial_data),
    .C1(_0375_),
    .X(_0324_));
 sky130_fd_sc_hd__and2_2 _1011_ (.A(\deser_A.receiving ),
    .B(\deser_A.kept_shift_reg[1] ),
    .X(_0376_));
 sky130_fd_sc_hd__a221o_2 _1012_ (.A1(\deser_A.kept_shift_reg[0] ),
    .A2(_0419_),
    .B1(_0500_),
    .B2(A_in_serial_data),
    .C1(_0376_),
    .X(_0325_));
 sky130_fd_sc_hd__xor2_2 _1013_ (.A(\ser_C.bit_idx[0] ),
    .B(C_out_frame_sync),
    .X(_0326_));
 sky130_fd_sc_hd__and3_2 _1014_ (.A(\ser_C.bit_idx[0] ),
    .B(\ser_C.bit_idx[1] ),
    .C(C_out_frame_sync),
    .X(_0377_));
 sky130_fd_sc_hd__a21oi_2 _1015_ (.A1(\ser_C.bit_idx[0] ),
    .A2(C_out_frame_sync),
    .B1(\ser_C.bit_idx[1] ),
    .Y(_0378_));
 sky130_fd_sc_hd__nor2_2 _1016_ (.A(_0377_),
    .B(_0378_),
    .Y(_0327_));
 sky130_fd_sc_hd__and4_2 _1017_ (.A(\ser_C.bit_idx[0] ),
    .B(\ser_C.bit_idx[1] ),
    .C(\ser_C.bit_idx[2] ),
    .D(C_out_frame_sync),
    .X(_0379_));
 sky130_fd_sc_hd__nor2_2 _1018_ (.A(\ser_C.bit_idx[2] ),
    .B(_0377_),
    .Y(_0380_));
 sky130_fd_sc_hd__nor2_2 _1019_ (.A(_0379_),
    .B(_0380_),
    .Y(_0328_));
 sky130_fd_sc_hd__xor2_2 _1020_ (.A(\ser_C.bit_idx[3] ),
    .B(_0379_),
    .X(_0329_));
 sky130_fd_sc_hd__and3_2 _1021_ (.A(\ser_C.bit_idx[3] ),
    .B(\ser_C.bit_idx[4] ),
    .C(_0379_),
    .X(_0381_));
 sky130_fd_sc_hd__a21oi_2 _1022_ (.A1(\ser_C.bit_idx[3] ),
    .A2(_0379_),
    .B1(\ser_C.bit_idx[4] ),
    .Y(_0382_));
 sky130_fd_sc_hd__nor2_2 _1023_ (.A(_0381_),
    .B(_0382_),
    .Y(_0330_));
 sky130_fd_sc_hd__xor2_2 _1024_ (.A(\ser_C.bit_idx[5] ),
    .B(_0381_),
    .X(_0331_));
 sky130_fd_sc_hd__and3_2 _1025_ (.A(\ser_C.bit_idx[5] ),
    .B(\ser_C.bit_idx[6] ),
    .C(_0381_),
    .X(_0383_));
 sky130_fd_sc_hd__a21oi_2 _1026_ (.A1(\ser_C.bit_idx[5] ),
    .A2(_0381_),
    .B1(\ser_C.bit_idx[6] ),
    .Y(_0384_));
 sky130_fd_sc_hd__nor2_2 _1027_ (.A(_0383_),
    .B(_0384_),
    .Y(_0332_));
 sky130_fd_sc_hd__xor2_2 _1028_ (.A(\ser_C.bit_idx[7] ),
    .B(_0383_),
    .X(_0333_));
 sky130_fd_sc_hd__and3_2 _1029_ (.A(\ser_C.bit_idx[7] ),
    .B(\ser_C.bit_idx[8] ),
    .C(_0383_),
    .X(_0385_));
 sky130_fd_sc_hd__a21oi_2 _1030_ (.A1(\ser_C.bit_idx[7] ),
    .A2(_0383_),
    .B1(\ser_C.bit_idx[8] ),
    .Y(_0386_));
 sky130_fd_sc_hd__nor2_2 _1031_ (.A(_0385_),
    .B(_0386_),
    .Y(_0334_));
 sky130_fd_sc_hd__xor2_2 _1032_ (.A(\ser_C.bit_idx[9] ),
    .B(_0385_),
    .X(_0335_));
 sky130_fd_sc_hd__o21ai_2 _1033_ (.A1(_0404_),
    .A2(_0424_),
    .B1(_0348_),
    .Y(_0336_));
 sky130_fd_sc_hd__nand2_2 _1034_ (.A(\ser_C.kept_bit_idx[0] ),
    .B(C_out_frame_sync),
    .Y(_0387_));
 sky130_fd_sc_hd__or2_2 _1035_ (.A(\ser_C.kept_bit_idx[0] ),
    .B(C_out_frame_sync),
    .X(_0388_));
 sky130_fd_sc_hd__and2_2 _1036_ (.A(_0387_),
    .B(_0388_),
    .X(_0337_));
 sky130_fd_sc_hd__xnor2_2 _1037_ (.A(\ser_C.kept_bit_idx[1] ),
    .B(_0387_),
    .Y(_0338_));
 sky130_fd_sc_hd__and4_2 _1038_ (.A(\ser_C.kept_bit_idx[0] ),
    .B(C_out_frame_sync),
    .C(\ser_C.kept_bit_idx[1] ),
    .D(\ser_C.kept_bit_idx[2] ),
    .X(_0389_));
 sky130_fd_sc_hd__a31o_2 _1039_ (.A1(\ser_C.kept_bit_idx[0] ),
    .A2(C_out_frame_sync),
    .A3(\ser_C.kept_bit_idx[1] ),
    .B1(\ser_C.kept_bit_idx[2] ),
    .X(_0390_));
 sky130_fd_sc_hd__and2b_2 _1040_ (.A_N(_0389_),
    .B(_0390_),
    .X(_0339_));
 sky130_fd_sc_hd__nand2_2 _1041_ (.A(\ser_C.kept_bit_idx[3] ),
    .B(_0389_),
    .Y(_0391_));
 sky130_fd_sc_hd__or2_2 _1042_ (.A(\ser_C.kept_bit_idx[3] ),
    .B(_0389_),
    .X(_0392_));
 sky130_fd_sc_hd__and2_2 _1043_ (.A(_0391_),
    .B(_0392_),
    .X(_0340_));
 sky130_fd_sc_hd__xnor2_2 _1044_ (.A(\ser_C.kept_bit_idx[4] ),
    .B(_0391_),
    .Y(_0341_));
 sky130_fd_sc_hd__and4_2 _1045_ (.A(\ser_C.kept_bit_idx[3] ),
    .B(\ser_C.kept_bit_idx[4] ),
    .C(\ser_C.kept_bit_idx[5] ),
    .D(_0389_),
    .X(_0393_));
 sky130_fd_sc_hd__a31o_2 _1046_ (.A1(\ser_C.kept_bit_idx[3] ),
    .A2(\ser_C.kept_bit_idx[4] ),
    .A3(_0389_),
    .B1(\ser_C.kept_bit_idx[5] ),
    .X(_0394_));
 sky130_fd_sc_hd__and2b_2 _1047_ (.A_N(_0393_),
    .B(_0394_),
    .X(_0342_));
 sky130_fd_sc_hd__xor2_2 _1048_ (.A(\ser_C.kept_bit_idx[6] ),
    .B(_0393_),
    .X(_0343_));
 sky130_fd_sc_hd__and3_2 _1049_ (.A(\ser_C.kept_bit_idx[6] ),
    .B(\ser_C.kept_bit_idx[7] ),
    .C(_0393_),
    .X(_0395_));
 sky130_fd_sc_hd__a21oi_2 _1050_ (.A1(\ser_C.kept_bit_idx[6] ),
    .A2(_0393_),
    .B1(\ser_C.kept_bit_idx[7] ),
    .Y(_0396_));
 sky130_fd_sc_hd__nor2_2 _1051_ (.A(_0395_),
    .B(_0396_),
    .Y(_0344_));
 sky130_fd_sc_hd__nand2_2 _1052_ (.A(\ser_C.kept_bit_idx[8] ),
    .B(_0395_),
    .Y(_0397_));
 sky130_fd_sc_hd__or2_2 _1053_ (.A(\ser_C.kept_bit_idx[8] ),
    .B(_0395_),
    .X(_0398_));
 sky130_fd_sc_hd__and2_2 _1054_ (.A(_0397_),
    .B(_0398_),
    .X(_0345_));
 sky130_fd_sc_hd__xnor2_2 _1055_ (.A(\ser_C.kept_bit_idx[9] ),
    .B(_0397_),
    .Y(_0346_));
 sky130_fd_sc_hd__dfrtp_2 _1056_ (.CLK(clk),
    .D(_0005_),
    .RESET_B(rst_n),
    .Q(\systolic_inst.cycle_cnt[0] ));
 sky130_fd_sc_hd__dfrtp_2 _1057_ (.CLK(clk),
    .D(_0006_),
    .RESET_B(rst_n),
    .Q(\systolic_inst.cycle_cnt[1] ));
 sky130_fd_sc_hd__dfrtp_2 _1058_ (.CLK(clk),
    .D(_0007_),
    .RESET_B(rst_n),
    .Q(\systolic_inst.cycle_cnt[2] ));
 sky130_fd_sc_hd__dfrtp_2 _1059_ (.CLK(clk),
    .D(_0008_),
    .RESET_B(rst_n),
    .Q(\systolic_inst.cycle_cnt[3] ));
 sky130_fd_sc_hd__dfrtp_2 _1060_ (.CLK(clk),
    .D(_0009_),
    .RESET_B(rst_n),
    .Q(\systolic_inst.cycle_cnt[4] ));
 sky130_fd_sc_hd__dfrtp_2 _1061_ (.CLK(clk),
    .D(_0010_),
    .RESET_B(rst_n),
    .Q(\systolic_inst.cycle_cnt[5] ));
 sky130_fd_sc_hd__dfrtp_2 _1062_ (.CLK(clk),
    .D(_0011_),
    .RESET_B(rst_n),
    .Q(\systolic_inst.cycle_cnt[6] ));
 sky130_fd_sc_hd__dfrtp_2 _1063_ (.CLK(clk),
    .D(_0012_),
    .RESET_B(rst_n),
    .Q(\systolic_inst.cycle_cnt[7] ));
 sky130_fd_sc_hd__dfrtp_2 _1064_ (.CLK(clk),
    .D(_0013_),
    .RESET_B(rst_n),
    .Q(\systolic_inst.cycle_cnt[8] ));
 sky130_fd_sc_hd__dfrtp_2 _1065_ (.CLK(clk),
    .D(_0014_),
    .RESET_B(rst_n),
    .Q(\systolic_inst.cycle_cnt[9] ));
 sky130_fd_sc_hd__dfrtp_2 _1066_ (.CLK(clk),
    .D(_0015_),
    .RESET_B(rst_n),
    .Q(\systolic_inst.cycle_cnt[10] ));
 sky130_fd_sc_hd__dfrtp_2 _1067_ (.CLK(clk),
    .D(_0016_),
    .RESET_B(rst_n),
    .Q(\systolic_inst.cycle_cnt[11] ));
 sky130_fd_sc_hd__dfrtp_2 _1068_ (.CLK(clk),
    .D(_0017_),
    .RESET_B(rst_n),
    .Q(\systolic_inst.cycle_cnt[12] ));
 sky130_fd_sc_hd__dfrtp_2 _1069_ (.CLK(clk),
    .D(_0018_),
    .RESET_B(rst_n),
    .Q(\systolic_inst.cycle_cnt[13] ));
 sky130_fd_sc_hd__dfrtp_2 _1070_ (.CLK(clk),
    .D(_0019_),
    .RESET_B(rst_n),
    .Q(\systolic_inst.cycle_cnt[14] ));
 sky130_fd_sc_hd__dfrtp_2 _1071_ (.CLK(clk),
    .D(_0020_),
    .RESET_B(rst_n),
    .Q(\systolic_inst.cycle_cnt[15] ));
 sky130_fd_sc_hd__dfrtp_2 _1072_ (.CLK(clk),
    .D(_0021_),
    .RESET_B(rst_n),
    .Q(\systolic_inst.cycle_cnt[16] ));
 sky130_fd_sc_hd__dfrtp_2 _1073_ (.CLK(clk),
    .D(_0022_),
    .RESET_B(rst_n),
    .Q(\systolic_inst.cycle_cnt[17] ));
 sky130_fd_sc_hd__dfrtp_2 _1074_ (.CLK(clk),
    .D(_0023_),
    .RESET_B(rst_n),
    .Q(\systolic_inst.cycle_cnt[18] ));
 sky130_fd_sc_hd__dfrtp_2 _1075_ (.CLK(clk),
    .D(_0024_),
    .RESET_B(rst_n),
    .Q(\systolic_inst.cycle_cnt[19] ));
 sky130_fd_sc_hd__dfrtp_2 _1076_ (.CLK(clk),
    .D(_0025_),
    .RESET_B(rst_n),
    .Q(\systolic_inst.cycle_cnt[20] ));
 sky130_fd_sc_hd__dfrtp_2 _1077_ (.CLK(clk),
    .D(_0026_),
    .RESET_B(rst_n),
    .Q(\systolic_inst.cycle_cnt[21] ));
 sky130_fd_sc_hd__dfrtp_2 _1078_ (.CLK(clk),
    .D(_0027_),
    .RESET_B(rst_n),
    .Q(\systolic_inst.cycle_cnt[22] ));
 sky130_fd_sc_hd__dfrtp_2 _1079_ (.CLK(clk),
    .D(_0028_),
    .RESET_B(rst_n),
    .Q(\systolic_inst.cycle_cnt[23] ));
 sky130_fd_sc_hd__dfrtp_2 _1080_ (.CLK(clk),
    .D(_0029_),
    .RESET_B(rst_n),
    .Q(\systolic_inst.cycle_cnt[24] ));
 sky130_fd_sc_hd__dfrtp_2 _1081_ (.CLK(clk),
    .D(_0030_),
    .RESET_B(rst_n),
    .Q(\systolic_inst.cycle_cnt[25] ));
 sky130_fd_sc_hd__dfrtp_2 _1082_ (.CLK(clk),
    .D(_0031_),
    .RESET_B(rst_n),
    .Q(\systolic_inst.cycle_cnt[26] ));
 sky130_fd_sc_hd__dfrtp_2 _1083_ (.CLK(clk),
    .D(_0032_),
    .RESET_B(rst_n),
    .Q(\systolic_inst.cycle_cnt[27] ));
 sky130_fd_sc_hd__dfrtp_2 _1084_ (.CLK(clk),
    .D(_0033_),
    .RESET_B(rst_n),
    .Q(\systolic_inst.cycle_cnt[28] ));
 sky130_fd_sc_hd__dfrtp_2 _1085_ (.CLK(clk),
    .D(_0034_),
    .RESET_B(rst_n),
    .Q(\systolic_inst.cycle_cnt[29] ));
 sky130_fd_sc_hd__dfrtp_2 _1086_ (.CLK(clk),
    .D(_0035_),
    .RESET_B(rst_n),
    .Q(\systolic_inst.cycle_cnt[30] ));
 sky130_fd_sc_hd__dfrtp_2 _1087_ (.CLK(clk),
    .D(_0036_),
    .RESET_B(rst_n),
    .Q(\systolic_inst.cycle_cnt[31] ));
 sky130_fd_sc_hd__dfrtp_2 _1088_ (.CLK(A_in_serial_clk),
    .D(_0037_),
    .RESET_B(rst_n),
    .Q(\deser_A.bit_idx[0] ));
 sky130_fd_sc_hd__dfrtp_2 _1089_ (.CLK(A_in_serial_clk),
    .D(_0038_),
    .RESET_B(rst_n),
    .Q(\deser_A.bit_idx[1] ));
 sky130_fd_sc_hd__dfrtp_2 _1090_ (.CLK(A_in_serial_clk),
    .D(_0039_),
    .RESET_B(rst_n),
    .Q(\deser_A.bit_idx[2] ));
 sky130_fd_sc_hd__dfrtp_2 _1091_ (.CLK(A_in_serial_clk),
    .D(_0040_),
    .RESET_B(rst_n),
    .Q(\deser_A.bit_idx[3] ));
 sky130_fd_sc_hd__dfrtp_2 _1092_ (.CLK(A_in_serial_clk),
    .D(_0041_),
    .RESET_B(rst_n),
    .Q(\deser_A.bit_idx[4] ));
 sky130_fd_sc_hd__dfrtp_2 _1093_ (.CLK(A_in_serial_clk),
    .D(_0042_),
    .RESET_B(rst_n),
    .Q(\deser_A.bit_idx[5] ));
 sky130_fd_sc_hd__dfrtp_2 _1094_ (.CLK(A_in_serial_clk),
    .D(_0043_),
    .RESET_B(rst_n),
    .Q(\deser_A.bit_idx[6] ));
 sky130_fd_sc_hd__dfrtp_2 _1095_ (.CLK(A_in_serial_clk),
    .D(_0044_),
    .RESET_B(rst_n),
    .Q(\deser_A.bit_idx[7] ));
 sky130_fd_sc_hd__dfrtp_2 _1096_ (.CLK(A_in_serial_clk),
    .D(_0045_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_bit_idx[0] ));
 sky130_fd_sc_hd__dfrtp_2 _1097_ (.CLK(A_in_serial_clk),
    .D(_0046_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_bit_idx[1] ));
 sky130_fd_sc_hd__dfrtp_2 _1098_ (.CLK(A_in_serial_clk),
    .D(_0047_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_bit_idx[2] ));
 sky130_fd_sc_hd__dfrtp_2 _1099_ (.CLK(A_in_serial_clk),
    .D(_0048_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_bit_idx[3] ));
 sky130_fd_sc_hd__dfrtp_2 _1100_ (.CLK(A_in_serial_clk),
    .D(_0049_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_bit_idx[4] ));
 sky130_fd_sc_hd__dfrtp_2 _1101_ (.CLK(A_in_serial_clk),
    .D(_0050_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_bit_idx[5] ));
 sky130_fd_sc_hd__dfrtp_2 _1102_ (.CLK(A_in_serial_clk),
    .D(_0051_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_bit_idx[6] ));
 sky130_fd_sc_hd__dfrtp_2 _1103_ (.CLK(A_in_serial_clk),
    .D(_0052_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_bit_idx[7] ));
 sky130_fd_sc_hd__dfrtp_2 _1104_ (.CLK(A_in_serial_clk),
    .D(_0000_),
    .RESET_B(rst_n),
    .Q(\deser_A.receiving ));
 sky130_fd_sc_hd__dfrtp_2 _1105_ (.CLK(A_in_serial_clk),
    .D(_0053_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[1] ));
 sky130_fd_sc_hd__dfrtp_2 _1106_ (.CLK(A_in_serial_clk),
    .D(_0054_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[2] ));
 sky130_fd_sc_hd__dfrtp_2 _1107_ (.CLK(A_in_serial_clk),
    .D(_0055_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[3] ));
 sky130_fd_sc_hd__dfrtp_2 _1108_ (.CLK(A_in_serial_clk),
    .D(_0056_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[4] ));
 sky130_fd_sc_hd__dfrtp_2 _1109_ (.CLK(A_in_serial_clk),
    .D(_0057_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[5] ));
 sky130_fd_sc_hd__dfrtp_2 _1110_ (.CLK(A_in_serial_clk),
    .D(_0058_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[6] ));
 sky130_fd_sc_hd__dfrtp_2 _1111_ (.CLK(A_in_serial_clk),
    .D(_0059_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[7] ));
 sky130_fd_sc_hd__dfrtp_2 _1112_ (.CLK(A_in_serial_clk),
    .D(_0060_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[8] ));
 sky130_fd_sc_hd__dfrtp_2 _1113_ (.CLK(A_in_serial_clk),
    .D(_0061_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[9] ));
 sky130_fd_sc_hd__dfrtp_2 _1114_ (.CLK(A_in_serial_clk),
    .D(_0062_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[10] ));
 sky130_fd_sc_hd__dfrtp_2 _1115_ (.CLK(A_in_serial_clk),
    .D(_0063_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[11] ));
 sky130_fd_sc_hd__dfrtp_2 _1116_ (.CLK(A_in_serial_clk),
    .D(_0064_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[12] ));
 sky130_fd_sc_hd__dfrtp_2 _1117_ (.CLK(A_in_serial_clk),
    .D(_0065_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[13] ));
 sky130_fd_sc_hd__dfrtp_2 _1118_ (.CLK(A_in_serial_clk),
    .D(_0066_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[14] ));
 sky130_fd_sc_hd__dfrtp_2 _1119_ (.CLK(A_in_serial_clk),
    .D(_0067_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[15] ));
 sky130_fd_sc_hd__dfrtp_2 _1120_ (.CLK(A_in_serial_clk),
    .D(_0068_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[16] ));
 sky130_fd_sc_hd__dfrtp_2 _1121_ (.CLK(A_in_serial_clk),
    .D(_0069_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[17] ));
 sky130_fd_sc_hd__dfrtp_2 _1122_ (.CLK(A_in_serial_clk),
    .D(_0070_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[18] ));
 sky130_fd_sc_hd__dfrtp_2 _1123_ (.CLK(A_in_serial_clk),
    .D(_0071_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[19] ));
 sky130_fd_sc_hd__dfrtp_2 _1124_ (.CLK(A_in_serial_clk),
    .D(_0072_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[20] ));
 sky130_fd_sc_hd__dfrtp_2 _1125_ (.CLK(A_in_serial_clk),
    .D(_0073_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[21] ));
 sky130_fd_sc_hd__dfrtp_2 _1126_ (.CLK(A_in_serial_clk),
    .D(_0074_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[22] ));
 sky130_fd_sc_hd__dfrtp_2 _1127_ (.CLK(A_in_serial_clk),
    .D(_0075_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[23] ));
 sky130_fd_sc_hd__dfrtp_2 _1128_ (.CLK(A_in_serial_clk),
    .D(_0076_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[24] ));
 sky130_fd_sc_hd__dfrtp_2 _1129_ (.CLK(A_in_serial_clk),
    .D(_0077_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[25] ));
 sky130_fd_sc_hd__dfrtp_2 _1130_ (.CLK(A_in_serial_clk),
    .D(_0078_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[26] ));
 sky130_fd_sc_hd__dfrtp_2 _1131_ (.CLK(A_in_serial_clk),
    .D(_0079_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[27] ));
 sky130_fd_sc_hd__dfrtp_2 _1132_ (.CLK(A_in_serial_clk),
    .D(_0080_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[28] ));
 sky130_fd_sc_hd__dfrtp_2 _1133_ (.CLK(A_in_serial_clk),
    .D(_0081_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[29] ));
 sky130_fd_sc_hd__dfrtp_2 _1134_ (.CLK(A_in_serial_clk),
    .D(_0082_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[30] ));
 sky130_fd_sc_hd__dfrtp_2 _1135_ (.CLK(A_in_serial_clk),
    .D(_0083_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[31] ));
 sky130_fd_sc_hd__dfrtp_2 _1136_ (.CLK(A_in_serial_clk),
    .D(_0084_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[32] ));
 sky130_fd_sc_hd__dfrtp_2 _1137_ (.CLK(A_in_serial_clk),
    .D(_0085_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[33] ));
 sky130_fd_sc_hd__dfrtp_2 _1138_ (.CLK(A_in_serial_clk),
    .D(_0086_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[34] ));
 sky130_fd_sc_hd__dfrtp_2 _1139_ (.CLK(A_in_serial_clk),
    .D(_0087_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[35] ));
 sky130_fd_sc_hd__dfrtp_2 _1140_ (.CLK(A_in_serial_clk),
    .D(_0088_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[36] ));
 sky130_fd_sc_hd__dfrtp_2 _1141_ (.CLK(A_in_serial_clk),
    .D(_0089_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[37] ));
 sky130_fd_sc_hd__dfrtp_2 _1142_ (.CLK(A_in_serial_clk),
    .D(_0090_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[38] ));
 sky130_fd_sc_hd__dfrtp_2 _1143_ (.CLK(A_in_serial_clk),
    .D(_0091_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[39] ));
 sky130_fd_sc_hd__dfrtp_2 _1144_ (.CLK(A_in_serial_clk),
    .D(_0092_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[40] ));
 sky130_fd_sc_hd__dfrtp_2 _1145_ (.CLK(A_in_serial_clk),
    .D(_0093_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[41] ));
 sky130_fd_sc_hd__dfrtp_2 _1146_ (.CLK(A_in_serial_clk),
    .D(_0094_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[42] ));
 sky130_fd_sc_hd__dfrtp_2 _1147_ (.CLK(A_in_serial_clk),
    .D(_0095_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[43] ));
 sky130_fd_sc_hd__dfrtp_2 _1148_ (.CLK(A_in_serial_clk),
    .D(_0096_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[44] ));
 sky130_fd_sc_hd__dfrtp_2 _1149_ (.CLK(A_in_serial_clk),
    .D(_0097_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[45] ));
 sky130_fd_sc_hd__dfrtp_2 _1150_ (.CLK(A_in_serial_clk),
    .D(_0098_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[46] ));
 sky130_fd_sc_hd__dfrtp_2 _1151_ (.CLK(A_in_serial_clk),
    .D(_0099_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[47] ));
 sky130_fd_sc_hd__dfrtp_2 _1152_ (.CLK(A_in_serial_clk),
    .D(_0100_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[48] ));
 sky130_fd_sc_hd__dfrtp_2 _1153_ (.CLK(A_in_serial_clk),
    .D(_0101_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[49] ));
 sky130_fd_sc_hd__dfrtp_2 _1154_ (.CLK(A_in_serial_clk),
    .D(_0102_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[50] ));
 sky130_fd_sc_hd__dfrtp_2 _1155_ (.CLK(A_in_serial_clk),
    .D(_0103_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[51] ));
 sky130_fd_sc_hd__dfrtp_2 _1156_ (.CLK(A_in_serial_clk),
    .D(_0104_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[52] ));
 sky130_fd_sc_hd__dfrtp_2 _1157_ (.CLK(A_in_serial_clk),
    .D(_0105_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[53] ));
 sky130_fd_sc_hd__dfrtp_2 _1158_ (.CLK(A_in_serial_clk),
    .D(_0106_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[54] ));
 sky130_fd_sc_hd__dfrtp_2 _1159_ (.CLK(A_in_serial_clk),
    .D(_0107_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[55] ));
 sky130_fd_sc_hd__dfrtp_2 _1160_ (.CLK(A_in_serial_clk),
    .D(_0108_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[56] ));
 sky130_fd_sc_hd__dfrtp_2 _1161_ (.CLK(A_in_serial_clk),
    .D(_0109_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[57] ));
 sky130_fd_sc_hd__dfrtp_2 _1162_ (.CLK(A_in_serial_clk),
    .D(_0110_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[58] ));
 sky130_fd_sc_hd__dfrtp_2 _1163_ (.CLK(A_in_serial_clk),
    .D(_0111_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[59] ));
 sky130_fd_sc_hd__dfrtp_2 _1164_ (.CLK(A_in_serial_clk),
    .D(_0112_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[60] ));
 sky130_fd_sc_hd__dfrtp_2 _1165_ (.CLK(A_in_serial_clk),
    .D(_0113_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[61] ));
 sky130_fd_sc_hd__dfrtp_2 _1166_ (.CLK(A_in_serial_clk),
    .D(_0114_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[62] ));
 sky130_fd_sc_hd__dfrtp_2 _1167_ (.CLK(A_in_serial_clk),
    .D(_0115_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[63] ));
 sky130_fd_sc_hd__dfrtp_2 _1168_ (.CLK(A_in_serial_clk),
    .D(_0116_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[64] ));
 sky130_fd_sc_hd__dfrtp_2 _1169_ (.CLK(A_in_serial_clk),
    .D(_0117_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[65] ));
 sky130_fd_sc_hd__dfrtp_2 _1170_ (.CLK(A_in_serial_clk),
    .D(_0118_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[66] ));
 sky130_fd_sc_hd__dfrtp_2 _1171_ (.CLK(A_in_serial_clk),
    .D(_0119_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[67] ));
 sky130_fd_sc_hd__dfrtp_2 _1172_ (.CLK(A_in_serial_clk),
    .D(_0120_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[68] ));
 sky130_fd_sc_hd__dfrtp_2 _1173_ (.CLK(A_in_serial_clk),
    .D(_0121_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[69] ));
 sky130_fd_sc_hd__dfrtp_2 _1174_ (.CLK(A_in_serial_clk),
    .D(_0122_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[70] ));
 sky130_fd_sc_hd__dfrtp_2 _1175_ (.CLK(A_in_serial_clk),
    .D(_0123_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[71] ));
 sky130_fd_sc_hd__dfrtp_2 _1176_ (.CLK(A_in_serial_clk),
    .D(_0124_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[72] ));
 sky130_fd_sc_hd__dfrtp_2 _1177_ (.CLK(A_in_serial_clk),
    .D(_0125_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[73] ));
 sky130_fd_sc_hd__dfrtp_2 _1178_ (.CLK(A_in_serial_clk),
    .D(_0126_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[74] ));
 sky130_fd_sc_hd__dfrtp_2 _1179_ (.CLK(A_in_serial_clk),
    .D(_0127_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[75] ));
 sky130_fd_sc_hd__dfrtp_2 _1180_ (.CLK(A_in_serial_clk),
    .D(_0128_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[76] ));
 sky130_fd_sc_hd__dfrtp_2 _1181_ (.CLK(A_in_serial_clk),
    .D(_0129_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[77] ));
 sky130_fd_sc_hd__dfrtp_2 _1182_ (.CLK(A_in_serial_clk),
    .D(_0130_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[78] ));
 sky130_fd_sc_hd__dfrtp_2 _1183_ (.CLK(A_in_serial_clk),
    .D(_0131_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[79] ));
 sky130_fd_sc_hd__dfrtp_2 _1184_ (.CLK(A_in_serial_clk),
    .D(_0132_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[80] ));
 sky130_fd_sc_hd__dfrtp_2 _1185_ (.CLK(A_in_serial_clk),
    .D(_0133_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[81] ));
 sky130_fd_sc_hd__dfrtp_2 _1186_ (.CLK(A_in_serial_clk),
    .D(_0134_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[82] ));
 sky130_fd_sc_hd__dfrtp_2 _1187_ (.CLK(A_in_serial_clk),
    .D(_0135_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[83] ));
 sky130_fd_sc_hd__dfrtp_2 _1188_ (.CLK(A_in_serial_clk),
    .D(_0136_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[84] ));
 sky130_fd_sc_hd__dfrtp_2 _1189_ (.CLK(A_in_serial_clk),
    .D(_0137_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[85] ));
 sky130_fd_sc_hd__dfrtp_2 _1190_ (.CLK(A_in_serial_clk),
    .D(_0138_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[86] ));
 sky130_fd_sc_hd__dfrtp_2 _1191_ (.CLK(A_in_serial_clk),
    .D(_0139_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[87] ));
 sky130_fd_sc_hd__dfrtp_2 _1192_ (.CLK(A_in_serial_clk),
    .D(_0140_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[88] ));
 sky130_fd_sc_hd__dfrtp_2 _1193_ (.CLK(A_in_serial_clk),
    .D(_0141_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[89] ));
 sky130_fd_sc_hd__dfrtp_2 _1194_ (.CLK(A_in_serial_clk),
    .D(_0142_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[90] ));
 sky130_fd_sc_hd__dfrtp_2 _1195_ (.CLK(A_in_serial_clk),
    .D(_0143_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[91] ));
 sky130_fd_sc_hd__dfrtp_2 _1196_ (.CLK(A_in_serial_clk),
    .D(_0144_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[92] ));
 sky130_fd_sc_hd__dfrtp_2 _1197_ (.CLK(A_in_serial_clk),
    .D(_0145_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[93] ));
 sky130_fd_sc_hd__dfrtp_2 _1198_ (.CLK(A_in_serial_clk),
    .D(_0146_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[94] ));
 sky130_fd_sc_hd__dfrtp_2 _1199_ (.CLK(A_in_serial_clk),
    .D(_0147_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[95] ));
 sky130_fd_sc_hd__dfrtp_2 _1200_ (.CLK(A_in_serial_clk),
    .D(_0148_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[96] ));
 sky130_fd_sc_hd__dfrtp_2 _1201_ (.CLK(A_in_serial_clk),
    .D(_0149_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[97] ));
 sky130_fd_sc_hd__dfrtp_2 _1202_ (.CLK(A_in_serial_clk),
    .D(_0150_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[98] ));
 sky130_fd_sc_hd__dfrtp_2 _1203_ (.CLK(A_in_serial_clk),
    .D(_0151_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[99] ));
 sky130_fd_sc_hd__dfrtp_2 _1204_ (.CLK(A_in_serial_clk),
    .D(_0152_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[100] ));
 sky130_fd_sc_hd__dfrtp_2 _1205_ (.CLK(A_in_serial_clk),
    .D(_0153_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[101] ));
 sky130_fd_sc_hd__dfrtp_2 _1206_ (.CLK(A_in_serial_clk),
    .D(_0154_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[102] ));
 sky130_fd_sc_hd__dfrtp_2 _1207_ (.CLK(A_in_serial_clk),
    .D(_0155_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[103] ));
 sky130_fd_sc_hd__dfrtp_2 _1208_ (.CLK(A_in_serial_clk),
    .D(_0156_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[104] ));
 sky130_fd_sc_hd__dfrtp_2 _1209_ (.CLK(A_in_serial_clk),
    .D(_0157_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[105] ));
 sky130_fd_sc_hd__dfrtp_2 _1210_ (.CLK(A_in_serial_clk),
    .D(_0158_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[106] ));
 sky130_fd_sc_hd__dfrtp_2 _1211_ (.CLK(A_in_serial_clk),
    .D(_0159_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[107] ));
 sky130_fd_sc_hd__dfrtp_2 _1212_ (.CLK(A_in_serial_clk),
    .D(_0160_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[108] ));
 sky130_fd_sc_hd__dfrtp_2 _1213_ (.CLK(A_in_serial_clk),
    .D(_0161_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[109] ));
 sky130_fd_sc_hd__dfrtp_2 _1214_ (.CLK(A_in_serial_clk),
    .D(_0162_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[110] ));
 sky130_fd_sc_hd__dfrtp_2 _1215_ (.CLK(A_in_serial_clk),
    .D(_0163_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[111] ));
 sky130_fd_sc_hd__dfrtp_2 _1216_ (.CLK(A_in_serial_clk),
    .D(_0164_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[112] ));
 sky130_fd_sc_hd__dfrtp_2 _1217_ (.CLK(A_in_serial_clk),
    .D(_0165_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[113] ));
 sky130_fd_sc_hd__dfrtp_2 _1218_ (.CLK(A_in_serial_clk),
    .D(_0166_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[114] ));
 sky130_fd_sc_hd__dfrtp_2 _1219_ (.CLK(A_in_serial_clk),
    .D(_0167_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[115] ));
 sky130_fd_sc_hd__dfrtp_2 _1220_ (.CLK(A_in_serial_clk),
    .D(_0168_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[116] ));
 sky130_fd_sc_hd__dfrtp_2 _1221_ (.CLK(A_in_serial_clk),
    .D(_0169_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[117] ));
 sky130_fd_sc_hd__dfrtp_2 _1222_ (.CLK(A_in_serial_clk),
    .D(_0170_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[118] ));
 sky130_fd_sc_hd__dfrtp_2 _1223_ (.CLK(A_in_serial_clk),
    .D(_0171_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[119] ));
 sky130_fd_sc_hd__dfrtp_2 _1224_ (.CLK(A_in_serial_clk),
    .D(_0172_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[120] ));
 sky130_fd_sc_hd__dfrtp_2 _1225_ (.CLK(A_in_serial_clk),
    .D(_0173_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[121] ));
 sky130_fd_sc_hd__dfrtp_2 _1226_ (.CLK(A_in_serial_clk),
    .D(_0174_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[122] ));
 sky130_fd_sc_hd__dfrtp_2 _1227_ (.CLK(A_in_serial_clk),
    .D(_0175_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[123] ));
 sky130_fd_sc_hd__dfrtp_2 _1228_ (.CLK(A_in_serial_clk),
    .D(_0176_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[124] ));
 sky130_fd_sc_hd__dfrtp_2 _1229_ (.CLK(A_in_serial_clk),
    .D(_0177_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[125] ));
 sky130_fd_sc_hd__dfrtp_2 _1230_ (.CLK(A_in_serial_clk),
    .D(_0178_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[126] ));
 sky130_fd_sc_hd__dfrtp_2 _1231_ (.CLK(A_in_serial_clk),
    .D(_0179_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[127] ));
 sky130_fd_sc_hd__dfrtp_2 _1232_ (.CLK(B_in_serial_clk),
    .D(_0180_),
    .RESET_B(rst_n),
    .Q(\deser_B.bit_idx[0] ));
 sky130_fd_sc_hd__dfrtp_2 _1233_ (.CLK(B_in_serial_clk),
    .D(_0181_),
    .RESET_B(rst_n),
    .Q(\deser_B.bit_idx[1] ));
 sky130_fd_sc_hd__dfrtp_2 _1234_ (.CLK(B_in_serial_clk),
    .D(_0182_),
    .RESET_B(rst_n),
    .Q(\deser_B.bit_idx[2] ));
 sky130_fd_sc_hd__dfrtp_2 _1235_ (.CLK(B_in_serial_clk),
    .D(_0183_),
    .RESET_B(rst_n),
    .Q(\deser_B.bit_idx[3] ));
 sky130_fd_sc_hd__dfrtp_2 _1236_ (.CLK(B_in_serial_clk),
    .D(_0184_),
    .RESET_B(rst_n),
    .Q(\deser_B.bit_idx[4] ));
 sky130_fd_sc_hd__dfrtp_2 _1237_ (.CLK(B_in_serial_clk),
    .D(_0185_),
    .RESET_B(rst_n),
    .Q(\deser_B.bit_idx[5] ));
 sky130_fd_sc_hd__dfrtp_2 _1238_ (.CLK(B_in_serial_clk),
    .D(_0186_),
    .RESET_B(rst_n),
    .Q(\deser_B.bit_idx[6] ));
 sky130_fd_sc_hd__dfrtp_2 _1239_ (.CLK(B_in_serial_clk),
    .D(_0187_),
    .RESET_B(rst_n),
    .Q(\deser_B.bit_idx[7] ));
 sky130_fd_sc_hd__dfrtp_2 _1240_ (.CLK(B_in_serial_clk),
    .D(_0188_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_bit_idx[0] ));
 sky130_fd_sc_hd__dfrtp_2 _1241_ (.CLK(B_in_serial_clk),
    .D(_0189_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_bit_idx[1] ));
 sky130_fd_sc_hd__dfrtp_2 _1242_ (.CLK(B_in_serial_clk),
    .D(_0190_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_bit_idx[2] ));
 sky130_fd_sc_hd__dfrtp_2 _1243_ (.CLK(B_in_serial_clk),
    .D(_0191_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_bit_idx[3] ));
 sky130_fd_sc_hd__dfrtp_2 _1244_ (.CLK(B_in_serial_clk),
    .D(_0192_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_bit_idx[4] ));
 sky130_fd_sc_hd__dfrtp_2 _1245_ (.CLK(B_in_serial_clk),
    .D(_0193_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_bit_idx[5] ));
 sky130_fd_sc_hd__dfrtp_2 _1246_ (.CLK(B_in_serial_clk),
    .D(_0194_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_bit_idx[6] ));
 sky130_fd_sc_hd__dfrtp_2 _1247_ (.CLK(B_in_serial_clk),
    .D(_0195_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_bit_idx[7] ));
 sky130_fd_sc_hd__dfrtp_2 _1248_ (.CLK(B_in_serial_clk),
    .D(_0001_),
    .RESET_B(rst_n),
    .Q(\deser_B.receiving ));
 sky130_fd_sc_hd__dfrtp_2 _1249_ (.CLK(A_in_serial_clk),
    .D(_0196_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_receiving ));
 sky130_fd_sc_hd__dfrtp_2 _1250_ (.CLK(B_in_serial_clk),
    .D(_0197_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[1] ));
 sky130_fd_sc_hd__dfrtp_2 _1251_ (.CLK(B_in_serial_clk),
    .D(_0198_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[2] ));
 sky130_fd_sc_hd__dfrtp_2 _1252_ (.CLK(B_in_serial_clk),
    .D(_0199_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[3] ));
 sky130_fd_sc_hd__dfrtp_2 _1253_ (.CLK(B_in_serial_clk),
    .D(_0200_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[4] ));
 sky130_fd_sc_hd__dfrtp_2 _1254_ (.CLK(B_in_serial_clk),
    .D(_0201_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[5] ));
 sky130_fd_sc_hd__dfrtp_2 _1255_ (.CLK(B_in_serial_clk),
    .D(_0202_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[6] ));
 sky130_fd_sc_hd__dfrtp_2 _1256_ (.CLK(B_in_serial_clk),
    .D(_0203_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[7] ));
 sky130_fd_sc_hd__dfrtp_2 _1257_ (.CLK(B_in_serial_clk),
    .D(_0204_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[8] ));
 sky130_fd_sc_hd__dfrtp_2 _1258_ (.CLK(B_in_serial_clk),
    .D(_0205_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[9] ));
 sky130_fd_sc_hd__dfrtp_2 _1259_ (.CLK(B_in_serial_clk),
    .D(_0206_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[10] ));
 sky130_fd_sc_hd__dfrtp_2 _1260_ (.CLK(B_in_serial_clk),
    .D(_0207_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[11] ));
 sky130_fd_sc_hd__dfrtp_2 _1261_ (.CLK(B_in_serial_clk),
    .D(_0208_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[12] ));
 sky130_fd_sc_hd__dfrtp_2 _1262_ (.CLK(B_in_serial_clk),
    .D(_0209_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[13] ));
 sky130_fd_sc_hd__dfrtp_2 _1263_ (.CLK(B_in_serial_clk),
    .D(_0210_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[14] ));
 sky130_fd_sc_hd__dfrtp_2 _1264_ (.CLK(B_in_serial_clk),
    .D(_0211_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[15] ));
 sky130_fd_sc_hd__dfrtp_2 _1265_ (.CLK(B_in_serial_clk),
    .D(_0212_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[16] ));
 sky130_fd_sc_hd__dfrtp_2 _1266_ (.CLK(B_in_serial_clk),
    .D(_0213_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[17] ));
 sky130_fd_sc_hd__dfrtp_2 _1267_ (.CLK(B_in_serial_clk),
    .D(_0214_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[18] ));
 sky130_fd_sc_hd__dfrtp_2 _1268_ (.CLK(B_in_serial_clk),
    .D(_0215_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[19] ));
 sky130_fd_sc_hd__dfrtp_2 _1269_ (.CLK(B_in_serial_clk),
    .D(_0216_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[20] ));
 sky130_fd_sc_hd__dfrtp_2 _1270_ (.CLK(B_in_serial_clk),
    .D(_0217_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[21] ));
 sky130_fd_sc_hd__dfrtp_2 _1271_ (.CLK(B_in_serial_clk),
    .D(_0218_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[22] ));
 sky130_fd_sc_hd__dfrtp_2 _1272_ (.CLK(B_in_serial_clk),
    .D(_0219_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[23] ));
 sky130_fd_sc_hd__dfrtp_2 _1273_ (.CLK(B_in_serial_clk),
    .D(_0220_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[24] ));
 sky130_fd_sc_hd__dfrtp_2 _1274_ (.CLK(B_in_serial_clk),
    .D(_0221_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[25] ));
 sky130_fd_sc_hd__dfrtp_2 _1275_ (.CLK(B_in_serial_clk),
    .D(_0222_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[26] ));
 sky130_fd_sc_hd__dfrtp_2 _1276_ (.CLK(B_in_serial_clk),
    .D(_0223_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[27] ));
 sky130_fd_sc_hd__dfrtp_2 _1277_ (.CLK(B_in_serial_clk),
    .D(_0224_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[28] ));
 sky130_fd_sc_hd__dfrtp_2 _1278_ (.CLK(B_in_serial_clk),
    .D(_0225_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[29] ));
 sky130_fd_sc_hd__dfrtp_2 _1279_ (.CLK(B_in_serial_clk),
    .D(_0226_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[30] ));
 sky130_fd_sc_hd__dfrtp_2 _1280_ (.CLK(B_in_serial_clk),
    .D(_0227_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[31] ));
 sky130_fd_sc_hd__dfrtp_2 _1281_ (.CLK(B_in_serial_clk),
    .D(_0228_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[32] ));
 sky130_fd_sc_hd__dfrtp_2 _1282_ (.CLK(B_in_serial_clk),
    .D(_0229_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[33] ));
 sky130_fd_sc_hd__dfrtp_2 _1283_ (.CLK(B_in_serial_clk),
    .D(_0230_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[34] ));
 sky130_fd_sc_hd__dfrtp_2 _1284_ (.CLK(B_in_serial_clk),
    .D(_0231_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[35] ));
 sky130_fd_sc_hd__dfrtp_2 _1285_ (.CLK(B_in_serial_clk),
    .D(_0232_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[36] ));
 sky130_fd_sc_hd__dfrtp_2 _1286_ (.CLK(B_in_serial_clk),
    .D(_0233_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[37] ));
 sky130_fd_sc_hd__dfrtp_2 _1287_ (.CLK(B_in_serial_clk),
    .D(_0234_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[38] ));
 sky130_fd_sc_hd__dfrtp_2 _1288_ (.CLK(B_in_serial_clk),
    .D(_0235_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[39] ));
 sky130_fd_sc_hd__dfrtp_2 _1289_ (.CLK(B_in_serial_clk),
    .D(_0236_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[40] ));
 sky130_fd_sc_hd__dfrtp_2 _1290_ (.CLK(B_in_serial_clk),
    .D(_0237_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[41] ));
 sky130_fd_sc_hd__dfrtp_2 _1291_ (.CLK(B_in_serial_clk),
    .D(_0238_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[42] ));
 sky130_fd_sc_hd__dfrtp_2 _1292_ (.CLK(B_in_serial_clk),
    .D(_0239_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[43] ));
 sky130_fd_sc_hd__dfrtp_2 _1293_ (.CLK(B_in_serial_clk),
    .D(_0240_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[44] ));
 sky130_fd_sc_hd__dfrtp_2 _1294_ (.CLK(B_in_serial_clk),
    .D(_0241_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[45] ));
 sky130_fd_sc_hd__dfrtp_2 _1295_ (.CLK(B_in_serial_clk),
    .D(_0242_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[46] ));
 sky130_fd_sc_hd__dfrtp_2 _1296_ (.CLK(B_in_serial_clk),
    .D(_0243_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[47] ));
 sky130_fd_sc_hd__dfrtp_2 _1297_ (.CLK(B_in_serial_clk),
    .D(_0244_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[48] ));
 sky130_fd_sc_hd__dfrtp_2 _1298_ (.CLK(B_in_serial_clk),
    .D(_0245_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[49] ));
 sky130_fd_sc_hd__dfrtp_2 _1299_ (.CLK(B_in_serial_clk),
    .D(_0246_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[50] ));
 sky130_fd_sc_hd__dfrtp_2 _1300_ (.CLK(B_in_serial_clk),
    .D(_0247_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[51] ));
 sky130_fd_sc_hd__dfrtp_2 _1301_ (.CLK(B_in_serial_clk),
    .D(_0248_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[52] ));
 sky130_fd_sc_hd__dfrtp_2 _1302_ (.CLK(B_in_serial_clk),
    .D(_0249_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[53] ));
 sky130_fd_sc_hd__dfrtp_2 _1303_ (.CLK(B_in_serial_clk),
    .D(_0250_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[54] ));
 sky130_fd_sc_hd__dfrtp_2 _1304_ (.CLK(B_in_serial_clk),
    .D(_0251_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[55] ));
 sky130_fd_sc_hd__dfrtp_2 _1305_ (.CLK(B_in_serial_clk),
    .D(_0252_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[56] ));
 sky130_fd_sc_hd__dfrtp_2 _1306_ (.CLK(B_in_serial_clk),
    .D(_0253_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[57] ));
 sky130_fd_sc_hd__dfrtp_2 _1307_ (.CLK(B_in_serial_clk),
    .D(_0254_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[58] ));
 sky130_fd_sc_hd__dfrtp_2 _1308_ (.CLK(B_in_serial_clk),
    .D(_0255_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[59] ));
 sky130_fd_sc_hd__dfrtp_2 _1309_ (.CLK(B_in_serial_clk),
    .D(_0256_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[60] ));
 sky130_fd_sc_hd__dfrtp_2 _1310_ (.CLK(B_in_serial_clk),
    .D(_0257_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[61] ));
 sky130_fd_sc_hd__dfrtp_2 _1311_ (.CLK(B_in_serial_clk),
    .D(_0258_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[62] ));
 sky130_fd_sc_hd__dfrtp_2 _1312_ (.CLK(B_in_serial_clk),
    .D(_0259_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[63] ));
 sky130_fd_sc_hd__dfrtp_2 _1313_ (.CLK(B_in_serial_clk),
    .D(_0260_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[64] ));
 sky130_fd_sc_hd__dfrtp_2 _1314_ (.CLK(B_in_serial_clk),
    .D(_0261_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[65] ));
 sky130_fd_sc_hd__dfrtp_2 _1315_ (.CLK(B_in_serial_clk),
    .D(_0262_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[66] ));
 sky130_fd_sc_hd__dfrtp_2 _1316_ (.CLK(B_in_serial_clk),
    .D(_0263_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[67] ));
 sky130_fd_sc_hd__dfrtp_2 _1317_ (.CLK(B_in_serial_clk),
    .D(_0264_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[68] ));
 sky130_fd_sc_hd__dfrtp_2 _1318_ (.CLK(B_in_serial_clk),
    .D(_0265_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[69] ));
 sky130_fd_sc_hd__dfrtp_2 _1319_ (.CLK(B_in_serial_clk),
    .D(_0266_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[70] ));
 sky130_fd_sc_hd__dfrtp_2 _1320_ (.CLK(B_in_serial_clk),
    .D(_0267_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[71] ));
 sky130_fd_sc_hd__dfrtp_2 _1321_ (.CLK(B_in_serial_clk),
    .D(_0268_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[72] ));
 sky130_fd_sc_hd__dfrtp_2 _1322_ (.CLK(B_in_serial_clk),
    .D(_0269_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[73] ));
 sky130_fd_sc_hd__dfrtp_2 _1323_ (.CLK(B_in_serial_clk),
    .D(_0270_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[74] ));
 sky130_fd_sc_hd__dfrtp_2 _1324_ (.CLK(B_in_serial_clk),
    .D(_0271_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[75] ));
 sky130_fd_sc_hd__dfrtp_2 _1325_ (.CLK(B_in_serial_clk),
    .D(_0272_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[76] ));
 sky130_fd_sc_hd__dfrtp_2 _1326_ (.CLK(B_in_serial_clk),
    .D(_0273_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[77] ));
 sky130_fd_sc_hd__dfrtp_2 _1327_ (.CLK(B_in_serial_clk),
    .D(_0274_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[78] ));
 sky130_fd_sc_hd__dfrtp_2 _1328_ (.CLK(B_in_serial_clk),
    .D(_0275_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[79] ));
 sky130_fd_sc_hd__dfrtp_2 _1329_ (.CLK(B_in_serial_clk),
    .D(_0276_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[80] ));
 sky130_fd_sc_hd__dfrtp_2 _1330_ (.CLK(B_in_serial_clk),
    .D(_0277_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[81] ));
 sky130_fd_sc_hd__dfrtp_2 _1331_ (.CLK(B_in_serial_clk),
    .D(_0278_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[82] ));
 sky130_fd_sc_hd__dfrtp_2 _1332_ (.CLK(B_in_serial_clk),
    .D(_0279_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[83] ));
 sky130_fd_sc_hd__dfrtp_2 _1333_ (.CLK(B_in_serial_clk),
    .D(_0280_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[84] ));
 sky130_fd_sc_hd__dfrtp_2 _1334_ (.CLK(B_in_serial_clk),
    .D(_0281_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[85] ));
 sky130_fd_sc_hd__dfrtp_2 _1335_ (.CLK(B_in_serial_clk),
    .D(_0282_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[86] ));
 sky130_fd_sc_hd__dfrtp_2 _1336_ (.CLK(B_in_serial_clk),
    .D(_0283_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[87] ));
 sky130_fd_sc_hd__dfrtp_2 _1337_ (.CLK(B_in_serial_clk),
    .D(_0284_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[88] ));
 sky130_fd_sc_hd__dfrtp_2 _1338_ (.CLK(B_in_serial_clk),
    .D(_0285_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[89] ));
 sky130_fd_sc_hd__dfrtp_2 _1339_ (.CLK(B_in_serial_clk),
    .D(_0286_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[90] ));
 sky130_fd_sc_hd__dfrtp_2 _1340_ (.CLK(B_in_serial_clk),
    .D(_0287_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[91] ));
 sky130_fd_sc_hd__dfrtp_2 _1341_ (.CLK(B_in_serial_clk),
    .D(_0288_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[92] ));
 sky130_fd_sc_hd__dfrtp_2 _1342_ (.CLK(B_in_serial_clk),
    .D(_0289_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[93] ));
 sky130_fd_sc_hd__dfrtp_2 _1343_ (.CLK(B_in_serial_clk),
    .D(_0290_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[94] ));
 sky130_fd_sc_hd__dfrtp_2 _1344_ (.CLK(B_in_serial_clk),
    .D(_0291_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[95] ));
 sky130_fd_sc_hd__dfrtp_2 _1345_ (.CLK(B_in_serial_clk),
    .D(_0292_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[96] ));
 sky130_fd_sc_hd__dfrtp_2 _1346_ (.CLK(B_in_serial_clk),
    .D(_0293_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[97] ));
 sky130_fd_sc_hd__dfrtp_2 _1347_ (.CLK(B_in_serial_clk),
    .D(_0294_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[98] ));
 sky130_fd_sc_hd__dfrtp_2 _1348_ (.CLK(B_in_serial_clk),
    .D(_0295_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[99] ));
 sky130_fd_sc_hd__dfrtp_2 _1349_ (.CLK(B_in_serial_clk),
    .D(_0296_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[100] ));
 sky130_fd_sc_hd__dfrtp_2 _1350_ (.CLK(B_in_serial_clk),
    .D(_0297_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[101] ));
 sky130_fd_sc_hd__dfrtp_2 _1351_ (.CLK(B_in_serial_clk),
    .D(_0298_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[102] ));
 sky130_fd_sc_hd__dfrtp_2 _1352_ (.CLK(B_in_serial_clk),
    .D(_0299_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[103] ));
 sky130_fd_sc_hd__dfrtp_2 _1353_ (.CLK(B_in_serial_clk),
    .D(_0300_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[104] ));
 sky130_fd_sc_hd__dfrtp_2 _1354_ (.CLK(B_in_serial_clk),
    .D(_0301_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[105] ));
 sky130_fd_sc_hd__dfrtp_2 _1355_ (.CLK(B_in_serial_clk),
    .D(_0302_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[106] ));
 sky130_fd_sc_hd__dfrtp_2 _1356_ (.CLK(B_in_serial_clk),
    .D(_0303_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[107] ));
 sky130_fd_sc_hd__dfrtp_2 _1357_ (.CLK(B_in_serial_clk),
    .D(_0304_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[108] ));
 sky130_fd_sc_hd__dfrtp_2 _1358_ (.CLK(B_in_serial_clk),
    .D(_0305_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[109] ));
 sky130_fd_sc_hd__dfrtp_2 _1359_ (.CLK(B_in_serial_clk),
    .D(_0306_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[110] ));
 sky130_fd_sc_hd__dfrtp_2 _1360_ (.CLK(B_in_serial_clk),
    .D(_0307_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[111] ));
 sky130_fd_sc_hd__dfrtp_2 _1361_ (.CLK(B_in_serial_clk),
    .D(_0308_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[112] ));
 sky130_fd_sc_hd__dfrtp_2 _1362_ (.CLK(B_in_serial_clk),
    .D(_0309_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[113] ));
 sky130_fd_sc_hd__dfrtp_2 _1363_ (.CLK(B_in_serial_clk),
    .D(_0310_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[114] ));
 sky130_fd_sc_hd__dfrtp_2 _1364_ (.CLK(B_in_serial_clk),
    .D(_0311_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[115] ));
 sky130_fd_sc_hd__dfrtp_2 _1365_ (.CLK(B_in_serial_clk),
    .D(_0312_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[116] ));
 sky130_fd_sc_hd__dfrtp_2 _1366_ (.CLK(B_in_serial_clk),
    .D(_0313_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[117] ));
 sky130_fd_sc_hd__dfrtp_2 _1367_ (.CLK(B_in_serial_clk),
    .D(_0314_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[118] ));
 sky130_fd_sc_hd__dfrtp_2 _1368_ (.CLK(B_in_serial_clk),
    .D(_0315_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[119] ));
 sky130_fd_sc_hd__dfrtp_2 _1369_ (.CLK(B_in_serial_clk),
    .D(_0316_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[120] ));
 sky130_fd_sc_hd__dfrtp_2 _1370_ (.CLK(B_in_serial_clk),
    .D(_0317_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[121] ));
 sky130_fd_sc_hd__dfrtp_2 _1371_ (.CLK(B_in_serial_clk),
    .D(_0318_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[122] ));
 sky130_fd_sc_hd__dfrtp_2 _1372_ (.CLK(B_in_serial_clk),
    .D(_0319_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[123] ));
 sky130_fd_sc_hd__dfrtp_2 _1373_ (.CLK(B_in_serial_clk),
    .D(_0320_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[124] ));
 sky130_fd_sc_hd__dfrtp_2 _1374_ (.CLK(B_in_serial_clk),
    .D(_0321_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[125] ));
 sky130_fd_sc_hd__dfrtp_2 _1375_ (.CLK(B_in_serial_clk),
    .D(_0322_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[126] ));
 sky130_fd_sc_hd__dfrtp_2 _1376_ (.CLK(B_in_serial_clk),
    .D(_0323_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[127] ));
 sky130_fd_sc_hd__dfrtp_2 _1377_ (.CLK(B_in_serial_clk),
    .D(_0324_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_shift_reg[0] ));
 sky130_fd_sc_hd__dfrtp_2 _1378_ (.CLK(A_in_serial_clk),
    .D(_0325_),
    .RESET_B(rst_n),
    .Q(\deser_A.kept_shift_reg[0] ));
 sky130_fd_sc_hd__dfrtp_2 _1379_ (.CLK(clk),
    .D(_0004_),
    .RESET_B(rst_n),
    .Q(\systolic_inst.ce_local ));
 sky130_fd_sc_hd__dfrtp_2 _1380_ (.CLK(clk),
    .D(_0003_),
    .RESET_B(rst_n),
    .Q(done));
 sky130_fd_sc_hd__dfrtp_2 _1381_ (.CLK(clk),
    .D(_0326_),
    .RESET_B(rst_n),
    .Q(\ser_C.bit_idx[0] ));
 sky130_fd_sc_hd__dfrtp_2 _1382_ (.CLK(clk),
    .D(_0327_),
    .RESET_B(rst_n),
    .Q(\ser_C.bit_idx[1] ));
 sky130_fd_sc_hd__dfrtp_2 _1383_ (.CLK(clk),
    .D(_0328_),
    .RESET_B(rst_n),
    .Q(\ser_C.bit_idx[2] ));
 sky130_fd_sc_hd__dfrtp_2 _1384_ (.CLK(clk),
    .D(_0329_),
    .RESET_B(rst_n),
    .Q(\ser_C.bit_idx[3] ));
 sky130_fd_sc_hd__dfrtp_2 _1385_ (.CLK(clk),
    .D(_0330_),
    .RESET_B(rst_n),
    .Q(\ser_C.bit_idx[4] ));
 sky130_fd_sc_hd__dfrtp_2 _1386_ (.CLK(clk),
    .D(_0331_),
    .RESET_B(rst_n),
    .Q(\ser_C.bit_idx[5] ));
 sky130_fd_sc_hd__dfrtp_2 _1387_ (.CLK(clk),
    .D(_0332_),
    .RESET_B(rst_n),
    .Q(\ser_C.bit_idx[6] ));
 sky130_fd_sc_hd__dfrtp_2 _1388_ (.CLK(clk),
    .D(_0333_),
    .RESET_B(rst_n),
    .Q(\ser_C.bit_idx[7] ));
 sky130_fd_sc_hd__dfrtp_2 _1389_ (.CLK(clk),
    .D(_0334_),
    .RESET_B(rst_n),
    .Q(\ser_C.bit_idx[8] ));
 sky130_fd_sc_hd__dfrtp_2 _1390_ (.CLK(clk),
    .D(_0335_),
    .RESET_B(rst_n),
    .Q(\ser_C.bit_idx[9] ));
 sky130_fd_sc_hd__dfrtp_2 _1391_ (.CLK(B_in_serial_clk),
    .D(_0336_),
    .RESET_B(rst_n),
    .Q(\deser_B.kept_receiving ));
 sky130_fd_sc_hd__dfrtp_2 _1392_ (.CLK(clk),
    .D(_0002_),
    .RESET_B(rst_n),
    .Q(C_out_frame_sync));
 sky130_fd_sc_hd__dfrtp_2 _1393_ (.CLK(clk),
    .D(_0337_),
    .RESET_B(rst_n),
    .Q(\ser_C.kept_bit_idx[0] ));
 sky130_fd_sc_hd__dfrtp_2 _1394_ (.CLK(clk),
    .D(_0338_),
    .RESET_B(rst_n),
    .Q(\ser_C.kept_bit_idx[1] ));
 sky130_fd_sc_hd__dfrtp_2 _1395_ (.CLK(clk),
    .D(_0339_),
    .RESET_B(rst_n),
    .Q(\ser_C.kept_bit_idx[2] ));
 sky130_fd_sc_hd__dfrtp_2 _1396_ (.CLK(clk),
    .D(_0340_),
    .RESET_B(rst_n),
    .Q(\ser_C.kept_bit_idx[3] ));
 sky130_fd_sc_hd__dfrtp_2 _1397_ (.CLK(clk),
    .D(_0341_),
    .RESET_B(rst_n),
    .Q(\ser_C.kept_bit_idx[4] ));
 sky130_fd_sc_hd__dfrtp_2 _1398_ (.CLK(clk),
    .D(_0342_),
    .RESET_B(rst_n),
    .Q(\ser_C.kept_bit_idx[5] ));
 sky130_fd_sc_hd__dfrtp_2 _1399_ (.CLK(clk),
    .D(_0343_),
    .RESET_B(rst_n),
    .Q(\ser_C.kept_bit_idx[6] ));
 sky130_fd_sc_hd__dfrtp_2 _1400_ (.CLK(clk),
    .D(_0344_),
    .RESET_B(rst_n),
    .Q(\ser_C.kept_bit_idx[7] ));
 sky130_fd_sc_hd__dfrtp_2 _1401_ (.CLK(clk),
    .D(_0345_),
    .RESET_B(rst_n),
    .Q(\ser_C.kept_bit_idx[8] ));
 sky130_fd_sc_hd__dfrtp_2 _1402_ (.CLK(clk),
    .D(_0346_),
    .RESET_B(rst_n),
    .Q(\ser_C.kept_bit_idx[9] ));
 sky130_fd_sc_hd__conb_1 _1403_ (.LO(C_out_serial_data));
 sky130_fd_sc_hd__conb_1 _1404_ (.LO(\ser_C.kept_shift_reg[0] ));
 sky130_fd_sc_hd__conb_1 _1405_ (.LO(\ser_C.kept_shift_reg[1] ));
 sky130_fd_sc_hd__conb_1 _1406_ (.LO(\ser_C.kept_shift_reg[2] ));
 sky130_fd_sc_hd__conb_1 _1407_ (.LO(\ser_C.kept_shift_reg[3] ));
 sky130_fd_sc_hd__conb_1 _1408_ (.LO(\ser_C.kept_shift_reg[4] ));
 sky130_fd_sc_hd__conb_1 _1409_ (.LO(\ser_C.kept_shift_reg[5] ));
 sky130_fd_sc_hd__conb_1 _1410_ (.LO(\ser_C.kept_shift_reg[6] ));
 sky130_fd_sc_hd__conb_1 _1411_ (.LO(\ser_C.kept_shift_reg[7] ));
 sky130_fd_sc_hd__conb_1 _1412_ (.LO(\ser_C.kept_shift_reg[8] ));
 sky130_fd_sc_hd__conb_1 _1413_ (.LO(\ser_C.kept_shift_reg[9] ));
 sky130_fd_sc_hd__conb_1 _1414_ (.LO(\ser_C.kept_shift_reg[10] ));
 sky130_fd_sc_hd__conb_1 _1415_ (.LO(\ser_C.kept_shift_reg[11] ));
 sky130_fd_sc_hd__conb_1 _1416_ (.LO(\ser_C.kept_shift_reg[12] ));
 sky130_fd_sc_hd__conb_1 _1417_ (.LO(\ser_C.kept_shift_reg[13] ));
 sky130_fd_sc_hd__conb_1 _1418_ (.LO(\ser_C.kept_shift_reg[14] ));
 sky130_fd_sc_hd__conb_1 _1419_ (.LO(\ser_C.kept_shift_reg[15] ));
 sky130_fd_sc_hd__conb_1 _1420_ (.LO(\ser_C.kept_shift_reg[16] ));
 sky130_fd_sc_hd__conb_1 _1421_ (.LO(\ser_C.kept_shift_reg[17] ));
 sky130_fd_sc_hd__conb_1 _1422_ (.LO(\ser_C.kept_shift_reg[18] ));
 sky130_fd_sc_hd__conb_1 _1423_ (.LO(\ser_C.kept_shift_reg[19] ));
 sky130_fd_sc_hd__conb_1 _1424_ (.LO(\ser_C.kept_shift_reg[20] ));
 sky130_fd_sc_hd__conb_1 _1425_ (.LO(\ser_C.kept_shift_reg[21] ));
 sky130_fd_sc_hd__conb_1 _1426_ (.LO(\ser_C.kept_shift_reg[22] ));
 sky130_fd_sc_hd__conb_1 _1427_ (.LO(\ser_C.kept_shift_reg[23] ));
 sky130_fd_sc_hd__conb_1 _1428_ (.LO(\ser_C.kept_shift_reg[24] ));
 sky130_fd_sc_hd__conb_1 _1429_ (.LO(\ser_C.kept_shift_reg[25] ));
 sky130_fd_sc_hd__conb_1 _1430_ (.LO(\ser_C.kept_shift_reg[26] ));
 sky130_fd_sc_hd__conb_1 _1431_ (.LO(\ser_C.kept_shift_reg[27] ));
 sky130_fd_sc_hd__conb_1 _1432_ (.LO(\ser_C.kept_shift_reg[28] ));
 sky130_fd_sc_hd__conb_1 _1433_ (.LO(\ser_C.kept_shift_reg[29] ));
 sky130_fd_sc_hd__conb_1 _1434_ (.LO(\ser_C.kept_shift_reg[30] ));
 sky130_fd_sc_hd__conb_1 _1435_ (.LO(\ser_C.kept_shift_reg[31] ));
 sky130_fd_sc_hd__conb_1 _1436_ (.LO(\ser_C.kept_shift_reg[32] ));
 sky130_fd_sc_hd__conb_1 _1437_ (.LO(\ser_C.kept_shift_reg[33] ));
 sky130_fd_sc_hd__conb_1 _1438_ (.LO(\ser_C.kept_shift_reg[34] ));
 sky130_fd_sc_hd__conb_1 _1439_ (.LO(\ser_C.kept_shift_reg[35] ));
 sky130_fd_sc_hd__conb_1 _1440_ (.LO(\ser_C.kept_shift_reg[36] ));
 sky130_fd_sc_hd__conb_1 _1441_ (.LO(\ser_C.kept_shift_reg[37] ));
 sky130_fd_sc_hd__conb_1 _1442_ (.LO(\ser_C.kept_shift_reg[38] ));
 sky130_fd_sc_hd__conb_1 _1443_ (.LO(\ser_C.kept_shift_reg[39] ));
 sky130_fd_sc_hd__conb_1 _1444_ (.LO(\ser_C.kept_shift_reg[40] ));
 sky130_fd_sc_hd__conb_1 _1445_ (.LO(\ser_C.kept_shift_reg[41] ));
 sky130_fd_sc_hd__conb_1 _1446_ (.LO(\ser_C.kept_shift_reg[42] ));
 sky130_fd_sc_hd__conb_1 _1447_ (.LO(\ser_C.kept_shift_reg[43] ));
 sky130_fd_sc_hd__conb_1 _1448_ (.LO(\ser_C.kept_shift_reg[44] ));
 sky130_fd_sc_hd__conb_1 _1449_ (.LO(\ser_C.kept_shift_reg[45] ));
 sky130_fd_sc_hd__conb_1 _1450_ (.LO(\ser_C.kept_shift_reg[46] ));
 sky130_fd_sc_hd__conb_1 _1451_ (.LO(\ser_C.kept_shift_reg[47] ));
 sky130_fd_sc_hd__conb_1 _1452_ (.LO(\ser_C.kept_shift_reg[48] ));
 sky130_fd_sc_hd__conb_1 _1453_ (.LO(\ser_C.kept_shift_reg[49] ));
 sky130_fd_sc_hd__conb_1 _1454_ (.LO(\ser_C.kept_shift_reg[50] ));
 sky130_fd_sc_hd__conb_1 _1455_ (.LO(\ser_C.kept_shift_reg[51] ));
 sky130_fd_sc_hd__conb_1 _1456_ (.LO(\ser_C.kept_shift_reg[52] ));
 sky130_fd_sc_hd__conb_1 _1457_ (.LO(\ser_C.kept_shift_reg[53] ));
 sky130_fd_sc_hd__conb_1 _1458_ (.LO(\ser_C.kept_shift_reg[54] ));
 sky130_fd_sc_hd__conb_1 _1459_ (.LO(\ser_C.kept_shift_reg[55] ));
 sky130_fd_sc_hd__conb_1 _1460_ (.LO(\ser_C.kept_shift_reg[56] ));
 sky130_fd_sc_hd__conb_1 _1461_ (.LO(\ser_C.kept_shift_reg[57] ));
 sky130_fd_sc_hd__conb_1 _1462_ (.LO(\ser_C.kept_shift_reg[58] ));
 sky130_fd_sc_hd__conb_1 _1463_ (.LO(\ser_C.kept_shift_reg[59] ));
 sky130_fd_sc_hd__conb_1 _1464_ (.LO(\ser_C.kept_shift_reg[60] ));
 sky130_fd_sc_hd__conb_1 _1465_ (.LO(\ser_C.kept_shift_reg[61] ));
 sky130_fd_sc_hd__conb_1 _1466_ (.LO(\ser_C.kept_shift_reg[62] ));
 sky130_fd_sc_hd__conb_1 _1467_ (.LO(\ser_C.kept_shift_reg[63] ));
 sky130_fd_sc_hd__conb_1 _1468_ (.LO(\ser_C.kept_shift_reg[64] ));
 sky130_fd_sc_hd__conb_1 _1469_ (.LO(\ser_C.kept_shift_reg[65] ));
 sky130_fd_sc_hd__conb_1 _1470_ (.LO(\ser_C.kept_shift_reg[66] ));
 sky130_fd_sc_hd__conb_1 _1471_ (.LO(\ser_C.kept_shift_reg[67] ));
 sky130_fd_sc_hd__conb_1 _1472_ (.LO(\ser_C.kept_shift_reg[68] ));
 sky130_fd_sc_hd__conb_1 _1473_ (.LO(\ser_C.kept_shift_reg[69] ));
 sky130_fd_sc_hd__conb_1 _1474_ (.LO(\ser_C.kept_shift_reg[70] ));
 sky130_fd_sc_hd__conb_1 _1475_ (.LO(\ser_C.kept_shift_reg[71] ));
 sky130_fd_sc_hd__conb_1 _1476_ (.LO(\ser_C.kept_shift_reg[72] ));
 sky130_fd_sc_hd__conb_1 _1477_ (.LO(\ser_C.kept_shift_reg[73] ));
 sky130_fd_sc_hd__conb_1 _1478_ (.LO(\ser_C.kept_shift_reg[74] ));
 sky130_fd_sc_hd__conb_1 _1479_ (.LO(\ser_C.kept_shift_reg[75] ));
 sky130_fd_sc_hd__conb_1 _1480_ (.LO(\ser_C.kept_shift_reg[76] ));
 sky130_fd_sc_hd__conb_1 _1481_ (.LO(\ser_C.kept_shift_reg[77] ));
 sky130_fd_sc_hd__conb_1 _1482_ (.LO(\ser_C.kept_shift_reg[78] ));
 sky130_fd_sc_hd__conb_1 _1483_ (.LO(\ser_C.kept_shift_reg[79] ));
 sky130_fd_sc_hd__conb_1 _1484_ (.LO(\ser_C.kept_shift_reg[80] ));
 sky130_fd_sc_hd__conb_1 _1485_ (.LO(\ser_C.kept_shift_reg[81] ));
 sky130_fd_sc_hd__conb_1 _1486_ (.LO(\ser_C.kept_shift_reg[82] ));
 sky130_fd_sc_hd__conb_1 _1487_ (.LO(\ser_C.kept_shift_reg[83] ));
 sky130_fd_sc_hd__conb_1 _1488_ (.LO(\ser_C.kept_shift_reg[84] ));
 sky130_fd_sc_hd__conb_1 _1489_ (.LO(\ser_C.kept_shift_reg[85] ));
 sky130_fd_sc_hd__conb_1 _1490_ (.LO(\ser_C.kept_shift_reg[86] ));
 sky130_fd_sc_hd__conb_1 _1491_ (.LO(\ser_C.kept_shift_reg[87] ));
 sky130_fd_sc_hd__conb_1 _1492_ (.LO(\ser_C.kept_shift_reg[88] ));
 sky130_fd_sc_hd__conb_1 _1493_ (.LO(\ser_C.kept_shift_reg[89] ));
 sky130_fd_sc_hd__conb_1 _1494_ (.LO(\ser_C.kept_shift_reg[90] ));
 sky130_fd_sc_hd__conb_1 _1495_ (.LO(\ser_C.kept_shift_reg[91] ));
 sky130_fd_sc_hd__conb_1 _1496_ (.LO(\ser_C.kept_shift_reg[92] ));
 sky130_fd_sc_hd__conb_1 _1497_ (.LO(\ser_C.kept_shift_reg[93] ));
 sky130_fd_sc_hd__conb_1 _1498_ (.LO(\ser_C.kept_shift_reg[94] ));
 sky130_fd_sc_hd__conb_1 _1499_ (.LO(\ser_C.kept_shift_reg[95] ));
 sky130_fd_sc_hd__conb_1 _1500_ (.LO(\ser_C.kept_shift_reg[96] ));
 sky130_fd_sc_hd__conb_1 _1501_ (.LO(\ser_C.kept_shift_reg[97] ));
 sky130_fd_sc_hd__conb_1 _1502_ (.LO(\ser_C.kept_shift_reg[98] ));
 sky130_fd_sc_hd__conb_1 _1503_ (.LO(\ser_C.kept_shift_reg[99] ));
 sky130_fd_sc_hd__conb_1 _1504_ (.LO(\ser_C.kept_shift_reg[100] ));
 sky130_fd_sc_hd__conb_1 _1505_ (.LO(\ser_C.kept_shift_reg[101] ));
 sky130_fd_sc_hd__conb_1 _1506_ (.LO(\ser_C.kept_shift_reg[102] ));
 sky130_fd_sc_hd__conb_1 _1507_ (.LO(\ser_C.kept_shift_reg[103] ));
 sky130_fd_sc_hd__conb_1 _1508_ (.LO(\ser_C.kept_shift_reg[104] ));
 sky130_fd_sc_hd__conb_1 _1509_ (.LO(\ser_C.kept_shift_reg[105] ));
 sky130_fd_sc_hd__conb_1 _1510_ (.LO(\ser_C.kept_shift_reg[106] ));
 sky130_fd_sc_hd__conb_1 _1511_ (.LO(\ser_C.kept_shift_reg[107] ));
 sky130_fd_sc_hd__conb_1 _1512_ (.LO(\ser_C.kept_shift_reg[108] ));
 sky130_fd_sc_hd__conb_1 _1513_ (.LO(\ser_C.kept_shift_reg[109] ));
 sky130_fd_sc_hd__conb_1 _1514_ (.LO(\ser_C.kept_shift_reg[110] ));
 sky130_fd_sc_hd__conb_1 _1515_ (.LO(\ser_C.kept_shift_reg[111] ));
 sky130_fd_sc_hd__conb_1 _1516_ (.LO(\ser_C.kept_shift_reg[112] ));
 sky130_fd_sc_hd__conb_1 _1517_ (.LO(\ser_C.kept_shift_reg[113] ));
 sky130_fd_sc_hd__conb_1 _1518_ (.LO(\ser_C.kept_shift_reg[114] ));
 sky130_fd_sc_hd__conb_1 _1519_ (.LO(\ser_C.kept_shift_reg[115] ));
 sky130_fd_sc_hd__conb_1 _1520_ (.LO(\ser_C.kept_shift_reg[116] ));
 sky130_fd_sc_hd__conb_1 _1521_ (.LO(\ser_C.kept_shift_reg[117] ));
 sky130_fd_sc_hd__conb_1 _1522_ (.LO(\ser_C.kept_shift_reg[118] ));
 sky130_fd_sc_hd__conb_1 _1523_ (.LO(\ser_C.kept_shift_reg[119] ));
 sky130_fd_sc_hd__conb_1 _1524_ (.LO(\ser_C.kept_shift_reg[120] ));
 sky130_fd_sc_hd__conb_1 _1525_ (.LO(\ser_C.kept_shift_reg[121] ));
 sky130_fd_sc_hd__conb_1 _1526_ (.LO(\ser_C.kept_shift_reg[122] ));
 sky130_fd_sc_hd__conb_1 _1527_ (.LO(\ser_C.kept_shift_reg[123] ));
 sky130_fd_sc_hd__conb_1 _1528_ (.LO(\ser_C.kept_shift_reg[124] ));
 sky130_fd_sc_hd__conb_1 _1529_ (.LO(\ser_C.kept_shift_reg[125] ));
 sky130_fd_sc_hd__conb_1 _1530_ (.LO(\ser_C.kept_shift_reg[126] ));
 sky130_fd_sc_hd__conb_1 _1531_ (.LO(\ser_C.kept_shift_reg[127] ));
 sky130_fd_sc_hd__conb_1 _1532_ (.LO(\ser_C.kept_shift_reg[128] ));
 sky130_fd_sc_hd__conb_1 _1533_ (.LO(\ser_C.kept_shift_reg[129] ));
 sky130_fd_sc_hd__conb_1 _1534_ (.LO(\ser_C.kept_shift_reg[130] ));
 sky130_fd_sc_hd__conb_1 _1535_ (.LO(\ser_C.kept_shift_reg[131] ));
 sky130_fd_sc_hd__conb_1 _1536_ (.LO(\ser_C.kept_shift_reg[132] ));
 sky130_fd_sc_hd__conb_1 _1537_ (.LO(\ser_C.kept_shift_reg[133] ));
 sky130_fd_sc_hd__conb_1 _1538_ (.LO(\ser_C.kept_shift_reg[134] ));
 sky130_fd_sc_hd__conb_1 _1539_ (.LO(\ser_C.kept_shift_reg[135] ));
 sky130_fd_sc_hd__conb_1 _1540_ (.LO(\ser_C.kept_shift_reg[136] ));
 sky130_fd_sc_hd__conb_1 _1541_ (.LO(\ser_C.kept_shift_reg[137] ));
 sky130_fd_sc_hd__conb_1 _1542_ (.LO(\ser_C.kept_shift_reg[138] ));
 sky130_fd_sc_hd__conb_1 _1543_ (.LO(\ser_C.kept_shift_reg[139] ));
 sky130_fd_sc_hd__conb_1 _1544_ (.LO(\ser_C.kept_shift_reg[140] ));
 sky130_fd_sc_hd__conb_1 _1545_ (.LO(\ser_C.kept_shift_reg[141] ));
 sky130_fd_sc_hd__conb_1 _1546_ (.LO(\ser_C.kept_shift_reg[142] ));
 sky130_fd_sc_hd__conb_1 _1547_ (.LO(\ser_C.kept_shift_reg[143] ));
 sky130_fd_sc_hd__conb_1 _1548_ (.LO(\ser_C.kept_shift_reg[144] ));
 sky130_fd_sc_hd__conb_1 _1549_ (.LO(\ser_C.kept_shift_reg[145] ));
 sky130_fd_sc_hd__conb_1 _1550_ (.LO(\ser_C.kept_shift_reg[146] ));
 sky130_fd_sc_hd__conb_1 _1551_ (.LO(\ser_C.kept_shift_reg[147] ));
 sky130_fd_sc_hd__conb_1 _1552_ (.LO(\ser_C.kept_shift_reg[148] ));
 sky130_fd_sc_hd__conb_1 _1553_ (.LO(\ser_C.kept_shift_reg[149] ));
 sky130_fd_sc_hd__conb_1 _1554_ (.LO(\ser_C.kept_shift_reg[150] ));
 sky130_fd_sc_hd__conb_1 _1555_ (.LO(\ser_C.kept_shift_reg[151] ));
 sky130_fd_sc_hd__conb_1 _1556_ (.LO(\ser_C.kept_shift_reg[152] ));
 sky130_fd_sc_hd__conb_1 _1557_ (.LO(\ser_C.kept_shift_reg[153] ));
 sky130_fd_sc_hd__conb_1 _1558_ (.LO(\ser_C.kept_shift_reg[154] ));
 sky130_fd_sc_hd__conb_1 _1559_ (.LO(\ser_C.kept_shift_reg[155] ));
 sky130_fd_sc_hd__conb_1 _1560_ (.LO(\ser_C.kept_shift_reg[156] ));
 sky130_fd_sc_hd__conb_1 _1561_ (.LO(\ser_C.kept_shift_reg[157] ));
 sky130_fd_sc_hd__conb_1 _1562_ (.LO(\ser_C.kept_shift_reg[158] ));
 sky130_fd_sc_hd__conb_1 _1563_ (.LO(\ser_C.kept_shift_reg[159] ));
 sky130_fd_sc_hd__conb_1 _1564_ (.LO(\ser_C.kept_shift_reg[160] ));
 sky130_fd_sc_hd__conb_1 _1565_ (.LO(\ser_C.kept_shift_reg[161] ));
 sky130_fd_sc_hd__conb_1 _1566_ (.LO(\ser_C.kept_shift_reg[162] ));
 sky130_fd_sc_hd__conb_1 _1567_ (.LO(\ser_C.kept_shift_reg[163] ));
 sky130_fd_sc_hd__conb_1 _1568_ (.LO(\ser_C.kept_shift_reg[164] ));
 sky130_fd_sc_hd__conb_1 _1569_ (.LO(\ser_C.kept_shift_reg[165] ));
 sky130_fd_sc_hd__conb_1 _1570_ (.LO(\ser_C.kept_shift_reg[166] ));
 sky130_fd_sc_hd__conb_1 _1571_ (.LO(\ser_C.kept_shift_reg[167] ));
 sky130_fd_sc_hd__conb_1 _1572_ (.LO(\ser_C.kept_shift_reg[168] ));
 sky130_fd_sc_hd__conb_1 _1573_ (.LO(\ser_C.kept_shift_reg[169] ));
 sky130_fd_sc_hd__conb_1 _1574_ (.LO(\ser_C.kept_shift_reg[170] ));
 sky130_fd_sc_hd__conb_1 _1575_ (.LO(\ser_C.kept_shift_reg[171] ));
 sky130_fd_sc_hd__conb_1 _1576_ (.LO(\ser_C.kept_shift_reg[172] ));
 sky130_fd_sc_hd__conb_1 _1577_ (.LO(\ser_C.kept_shift_reg[173] ));
 sky130_fd_sc_hd__conb_1 _1578_ (.LO(\ser_C.kept_shift_reg[174] ));
 sky130_fd_sc_hd__conb_1 _1579_ (.LO(\ser_C.kept_shift_reg[175] ));
 sky130_fd_sc_hd__conb_1 _1580_ (.LO(\ser_C.kept_shift_reg[176] ));
 sky130_fd_sc_hd__conb_1 _1581_ (.LO(\ser_C.kept_shift_reg[177] ));
 sky130_fd_sc_hd__conb_1 _1582_ (.LO(\ser_C.kept_shift_reg[178] ));
 sky130_fd_sc_hd__conb_1 _1583_ (.LO(\ser_C.kept_shift_reg[179] ));
 sky130_fd_sc_hd__conb_1 _1584_ (.LO(\ser_C.kept_shift_reg[180] ));
 sky130_fd_sc_hd__conb_1 _1585_ (.LO(\ser_C.kept_shift_reg[181] ));
 sky130_fd_sc_hd__conb_1 _1586_ (.LO(\ser_C.kept_shift_reg[182] ));
 sky130_fd_sc_hd__conb_1 _1587_ (.LO(\ser_C.kept_shift_reg[183] ));
 sky130_fd_sc_hd__conb_1 _1588_ (.LO(\ser_C.kept_shift_reg[184] ));
 sky130_fd_sc_hd__conb_1 _1589_ (.LO(\ser_C.kept_shift_reg[185] ));
 sky130_fd_sc_hd__conb_1 _1590_ (.LO(\ser_C.kept_shift_reg[186] ));
 sky130_fd_sc_hd__conb_1 _1591_ (.LO(\ser_C.kept_shift_reg[187] ));
 sky130_fd_sc_hd__conb_1 _1592_ (.LO(\ser_C.kept_shift_reg[188] ));
 sky130_fd_sc_hd__conb_1 _1593_ (.LO(\ser_C.kept_shift_reg[189] ));
 sky130_fd_sc_hd__conb_1 _1594_ (.LO(\ser_C.kept_shift_reg[190] ));
 sky130_fd_sc_hd__conb_1 _1595_ (.LO(\ser_C.kept_shift_reg[191] ));
 sky130_fd_sc_hd__conb_1 _1596_ (.LO(\ser_C.kept_shift_reg[192] ));
 sky130_fd_sc_hd__conb_1 _1597_ (.LO(\ser_C.kept_shift_reg[193] ));
 sky130_fd_sc_hd__conb_1 _1598_ (.LO(\ser_C.kept_shift_reg[194] ));
 sky130_fd_sc_hd__conb_1 _1599_ (.LO(\ser_C.kept_shift_reg[195] ));
 sky130_fd_sc_hd__conb_1 _1600_ (.LO(\ser_C.kept_shift_reg[196] ));
 sky130_fd_sc_hd__conb_1 _1601_ (.LO(\ser_C.kept_shift_reg[197] ));
 sky130_fd_sc_hd__conb_1 _1602_ (.LO(\ser_C.kept_shift_reg[198] ));
 sky130_fd_sc_hd__conb_1 _1603_ (.LO(\ser_C.kept_shift_reg[199] ));
 sky130_fd_sc_hd__conb_1 _1604_ (.LO(\ser_C.kept_shift_reg[200] ));
 sky130_fd_sc_hd__conb_1 _1605_ (.LO(\ser_C.kept_shift_reg[201] ));
 sky130_fd_sc_hd__conb_1 _1606_ (.LO(\ser_C.kept_shift_reg[202] ));
 sky130_fd_sc_hd__conb_1 _1607_ (.LO(\ser_C.kept_shift_reg[203] ));
 sky130_fd_sc_hd__conb_1 _1608_ (.LO(\ser_C.kept_shift_reg[204] ));
 sky130_fd_sc_hd__conb_1 _1609_ (.LO(\ser_C.kept_shift_reg[205] ));
 sky130_fd_sc_hd__conb_1 _1610_ (.LO(\ser_C.kept_shift_reg[206] ));
 sky130_fd_sc_hd__conb_1 _1611_ (.LO(\ser_C.kept_shift_reg[207] ));
 sky130_fd_sc_hd__conb_1 _1612_ (.LO(\ser_C.kept_shift_reg[208] ));
 sky130_fd_sc_hd__conb_1 _1613_ (.LO(\ser_C.kept_shift_reg[209] ));
 sky130_fd_sc_hd__conb_1 _1614_ (.LO(\ser_C.kept_shift_reg[210] ));
 sky130_fd_sc_hd__conb_1 _1615_ (.LO(\ser_C.kept_shift_reg[211] ));
 sky130_fd_sc_hd__conb_1 _1616_ (.LO(\ser_C.kept_shift_reg[212] ));
 sky130_fd_sc_hd__conb_1 _1617_ (.LO(\ser_C.kept_shift_reg[213] ));
 sky130_fd_sc_hd__conb_1 _1618_ (.LO(\ser_C.kept_shift_reg[214] ));
 sky130_fd_sc_hd__conb_1 _1619_ (.LO(\ser_C.kept_shift_reg[215] ));
 sky130_fd_sc_hd__conb_1 _1620_ (.LO(\ser_C.kept_shift_reg[216] ));
 sky130_fd_sc_hd__conb_1 _1621_ (.LO(\ser_C.kept_shift_reg[217] ));
 sky130_fd_sc_hd__conb_1 _1622_ (.LO(\ser_C.kept_shift_reg[218] ));
 sky130_fd_sc_hd__conb_1 _1623_ (.LO(\ser_C.kept_shift_reg[219] ));
 sky130_fd_sc_hd__conb_1 _1624_ (.LO(\ser_C.kept_shift_reg[220] ));
 sky130_fd_sc_hd__conb_1 _1625_ (.LO(\ser_C.kept_shift_reg[221] ));
 sky130_fd_sc_hd__conb_1 _1626_ (.LO(\ser_C.kept_shift_reg[222] ));
 sky130_fd_sc_hd__conb_1 _1627_ (.LO(\ser_C.kept_shift_reg[223] ));
 sky130_fd_sc_hd__conb_1 _1628_ (.LO(\ser_C.kept_shift_reg[224] ));
 sky130_fd_sc_hd__conb_1 _1629_ (.LO(\ser_C.kept_shift_reg[225] ));
 sky130_fd_sc_hd__conb_1 _1630_ (.LO(\ser_C.kept_shift_reg[226] ));
 sky130_fd_sc_hd__conb_1 _1631_ (.LO(\ser_C.kept_shift_reg[227] ));
 sky130_fd_sc_hd__conb_1 _1632_ (.LO(\ser_C.kept_shift_reg[228] ));
 sky130_fd_sc_hd__conb_1 _1633_ (.LO(\ser_C.kept_shift_reg[229] ));
 sky130_fd_sc_hd__conb_1 _1634_ (.LO(\ser_C.kept_shift_reg[230] ));
 sky130_fd_sc_hd__conb_1 _1635_ (.LO(\ser_C.kept_shift_reg[231] ));
 sky130_fd_sc_hd__conb_1 _1636_ (.LO(\ser_C.kept_shift_reg[232] ));
 sky130_fd_sc_hd__conb_1 _1637_ (.LO(\ser_C.kept_shift_reg[233] ));
 sky130_fd_sc_hd__conb_1 _1638_ (.LO(\ser_C.kept_shift_reg[234] ));
 sky130_fd_sc_hd__conb_1 _1639_ (.LO(\ser_C.kept_shift_reg[235] ));
 sky130_fd_sc_hd__conb_1 _1640_ (.LO(\ser_C.kept_shift_reg[236] ));
 sky130_fd_sc_hd__conb_1 _1641_ (.LO(\ser_C.kept_shift_reg[237] ));
 sky130_fd_sc_hd__conb_1 _1642_ (.LO(\ser_C.kept_shift_reg[238] ));
 sky130_fd_sc_hd__conb_1 _1643_ (.LO(\ser_C.kept_shift_reg[239] ));
 sky130_fd_sc_hd__conb_1 _1644_ (.LO(\ser_C.kept_shift_reg[240] ));
 sky130_fd_sc_hd__conb_1 _1645_ (.LO(\ser_C.kept_shift_reg[241] ));
 sky130_fd_sc_hd__conb_1 _1646_ (.LO(\ser_C.kept_shift_reg[242] ));
 sky130_fd_sc_hd__conb_1 _1647_ (.LO(\ser_C.kept_shift_reg[243] ));
 sky130_fd_sc_hd__conb_1 _1648_ (.LO(\ser_C.kept_shift_reg[244] ));
 sky130_fd_sc_hd__conb_1 _1649_ (.LO(\ser_C.kept_shift_reg[245] ));
 sky130_fd_sc_hd__conb_1 _1650_ (.LO(\ser_C.kept_shift_reg[246] ));
 sky130_fd_sc_hd__conb_1 _1651_ (.LO(\ser_C.kept_shift_reg[247] ));
 sky130_fd_sc_hd__conb_1 _1652_ (.LO(\ser_C.kept_shift_reg[248] ));
 sky130_fd_sc_hd__conb_1 _1653_ (.LO(\ser_C.kept_shift_reg[249] ));
 sky130_fd_sc_hd__conb_1 _1654_ (.LO(\ser_C.kept_shift_reg[250] ));
 sky130_fd_sc_hd__conb_1 _1655_ (.LO(\ser_C.kept_shift_reg[251] ));
 sky130_fd_sc_hd__conb_1 _1656_ (.LO(\ser_C.kept_shift_reg[252] ));
 sky130_fd_sc_hd__conb_1 _1657_ (.LO(\ser_C.kept_shift_reg[253] ));
 sky130_fd_sc_hd__conb_1 _1658_ (.LO(\ser_C.kept_shift_reg[254] ));
 sky130_fd_sc_hd__conb_1 _1659_ (.LO(\ser_C.kept_shift_reg[255] ));
 sky130_fd_sc_hd__conb_1 _1660_ (.LO(\ser_C.kept_shift_reg[256] ));
 sky130_fd_sc_hd__conb_1 _1661_ (.LO(\ser_C.kept_shift_reg[257] ));
 sky130_fd_sc_hd__conb_1 _1662_ (.LO(\ser_C.kept_shift_reg[258] ));
 sky130_fd_sc_hd__conb_1 _1663_ (.LO(\ser_C.kept_shift_reg[259] ));
 sky130_fd_sc_hd__conb_1 _1664_ (.LO(\ser_C.kept_shift_reg[260] ));
 sky130_fd_sc_hd__conb_1 _1665_ (.LO(\ser_C.kept_shift_reg[261] ));
 sky130_fd_sc_hd__conb_1 _1666_ (.LO(\ser_C.kept_shift_reg[262] ));
 sky130_fd_sc_hd__conb_1 _1667_ (.LO(\ser_C.kept_shift_reg[263] ));
 sky130_fd_sc_hd__conb_1 _1668_ (.LO(\ser_C.kept_shift_reg[264] ));
 sky130_fd_sc_hd__conb_1 _1669_ (.LO(\ser_C.kept_shift_reg[265] ));
 sky130_fd_sc_hd__conb_1 _1670_ (.LO(\ser_C.kept_shift_reg[266] ));
 sky130_fd_sc_hd__conb_1 _1671_ (.LO(\ser_C.kept_shift_reg[267] ));
 sky130_fd_sc_hd__conb_1 _1672_ (.LO(\ser_C.kept_shift_reg[268] ));
 sky130_fd_sc_hd__conb_1 _1673_ (.LO(\ser_C.kept_shift_reg[269] ));
 sky130_fd_sc_hd__conb_1 _1674_ (.LO(\ser_C.kept_shift_reg[270] ));
 sky130_fd_sc_hd__conb_1 _1675_ (.LO(\ser_C.kept_shift_reg[271] ));
 sky130_fd_sc_hd__conb_1 _1676_ (.LO(\ser_C.kept_shift_reg[272] ));
 sky130_fd_sc_hd__conb_1 _1677_ (.LO(\ser_C.kept_shift_reg[273] ));
 sky130_fd_sc_hd__conb_1 _1678_ (.LO(\ser_C.kept_shift_reg[274] ));
 sky130_fd_sc_hd__conb_1 _1679_ (.LO(\ser_C.kept_shift_reg[275] ));
 sky130_fd_sc_hd__conb_1 _1680_ (.LO(\ser_C.kept_shift_reg[276] ));
 sky130_fd_sc_hd__conb_1 _1681_ (.LO(\ser_C.kept_shift_reg[277] ));
 sky130_fd_sc_hd__conb_1 _1682_ (.LO(\ser_C.kept_shift_reg[278] ));
 sky130_fd_sc_hd__conb_1 _1683_ (.LO(\ser_C.kept_shift_reg[279] ));
 sky130_fd_sc_hd__conb_1 _1684_ (.LO(\ser_C.kept_shift_reg[280] ));
 sky130_fd_sc_hd__conb_1 _1685_ (.LO(\ser_C.kept_shift_reg[281] ));
 sky130_fd_sc_hd__conb_1 _1686_ (.LO(\ser_C.kept_shift_reg[282] ));
 sky130_fd_sc_hd__conb_1 _1687_ (.LO(\ser_C.kept_shift_reg[283] ));
 sky130_fd_sc_hd__conb_1 _1688_ (.LO(\ser_C.kept_shift_reg[284] ));
 sky130_fd_sc_hd__conb_1 _1689_ (.LO(\ser_C.kept_shift_reg[285] ));
 sky130_fd_sc_hd__conb_1 _1690_ (.LO(\ser_C.kept_shift_reg[286] ));
 sky130_fd_sc_hd__conb_1 _1691_ (.LO(\ser_C.kept_shift_reg[287] ));
 sky130_fd_sc_hd__conb_1 _1692_ (.LO(\ser_C.kept_shift_reg[288] ));
 sky130_fd_sc_hd__conb_1 _1693_ (.LO(\ser_C.kept_shift_reg[289] ));
 sky130_fd_sc_hd__conb_1 _1694_ (.LO(\ser_C.kept_shift_reg[290] ));
 sky130_fd_sc_hd__conb_1 _1695_ (.LO(\ser_C.kept_shift_reg[291] ));
 sky130_fd_sc_hd__conb_1 _1696_ (.LO(\ser_C.kept_shift_reg[292] ));
 sky130_fd_sc_hd__conb_1 _1697_ (.LO(\ser_C.kept_shift_reg[293] ));
 sky130_fd_sc_hd__conb_1 _1698_ (.LO(\ser_C.kept_shift_reg[294] ));
 sky130_fd_sc_hd__conb_1 _1699_ (.LO(\ser_C.kept_shift_reg[295] ));
 sky130_fd_sc_hd__conb_1 _1700_ (.LO(\ser_C.kept_shift_reg[296] ));
 sky130_fd_sc_hd__conb_1 _1701_ (.LO(\ser_C.kept_shift_reg[297] ));
 sky130_fd_sc_hd__conb_1 _1702_ (.LO(\ser_C.kept_shift_reg[298] ));
 sky130_fd_sc_hd__conb_1 _1703_ (.LO(\ser_C.kept_shift_reg[299] ));
 sky130_fd_sc_hd__conb_1 _1704_ (.LO(\ser_C.kept_shift_reg[300] ));
 sky130_fd_sc_hd__conb_1 _1705_ (.LO(\ser_C.kept_shift_reg[301] ));
 sky130_fd_sc_hd__conb_1 _1706_ (.LO(\ser_C.kept_shift_reg[302] ));
 sky130_fd_sc_hd__conb_1 _1707_ (.LO(\ser_C.kept_shift_reg[303] ));
 sky130_fd_sc_hd__conb_1 _1708_ (.LO(\ser_C.kept_shift_reg[304] ));
 sky130_fd_sc_hd__conb_1 _1709_ (.LO(\ser_C.kept_shift_reg[305] ));
 sky130_fd_sc_hd__conb_1 _1710_ (.LO(\ser_C.kept_shift_reg[306] ));
 sky130_fd_sc_hd__conb_1 _1711_ (.LO(\ser_C.kept_shift_reg[307] ));
 sky130_fd_sc_hd__conb_1 _1712_ (.LO(\ser_C.kept_shift_reg[308] ));
 sky130_fd_sc_hd__conb_1 _1713_ (.LO(\ser_C.kept_shift_reg[309] ));
 sky130_fd_sc_hd__conb_1 _1714_ (.LO(\ser_C.kept_shift_reg[310] ));
 sky130_fd_sc_hd__conb_1 _1715_ (.LO(\ser_C.kept_shift_reg[311] ));
 sky130_fd_sc_hd__conb_1 _1716_ (.LO(\ser_C.kept_shift_reg[312] ));
 sky130_fd_sc_hd__conb_1 _1717_ (.LO(\ser_C.kept_shift_reg[313] ));
 sky130_fd_sc_hd__conb_1 _1718_ (.LO(\ser_C.kept_shift_reg[314] ));
 sky130_fd_sc_hd__conb_1 _1719_ (.LO(\ser_C.kept_shift_reg[315] ));
 sky130_fd_sc_hd__conb_1 _1720_ (.LO(\ser_C.kept_shift_reg[316] ));
 sky130_fd_sc_hd__conb_1 _1721_ (.LO(\ser_C.kept_shift_reg[317] ));
 sky130_fd_sc_hd__conb_1 _1722_ (.LO(\ser_C.kept_shift_reg[318] ));
 sky130_fd_sc_hd__conb_1 _1723_ (.LO(\ser_C.kept_shift_reg[319] ));
 sky130_fd_sc_hd__conb_1 _1724_ (.LO(\ser_C.kept_shift_reg[320] ));
 sky130_fd_sc_hd__conb_1 _1725_ (.LO(\ser_C.kept_shift_reg[321] ));
 sky130_fd_sc_hd__conb_1 _1726_ (.LO(\ser_C.kept_shift_reg[322] ));
 sky130_fd_sc_hd__conb_1 _1727_ (.LO(\ser_C.kept_shift_reg[323] ));
 sky130_fd_sc_hd__conb_1 _1728_ (.LO(\ser_C.kept_shift_reg[324] ));
 sky130_fd_sc_hd__conb_1 _1729_ (.LO(\ser_C.kept_shift_reg[325] ));
 sky130_fd_sc_hd__conb_1 _1730_ (.LO(\ser_C.kept_shift_reg[326] ));
 sky130_fd_sc_hd__conb_1 _1731_ (.LO(\ser_C.kept_shift_reg[327] ));
 sky130_fd_sc_hd__conb_1 _1732_ (.LO(\ser_C.kept_shift_reg[328] ));
 sky130_fd_sc_hd__conb_1 _1733_ (.LO(\ser_C.kept_shift_reg[329] ));
 sky130_fd_sc_hd__conb_1 _1734_ (.LO(\ser_C.kept_shift_reg[330] ));
 sky130_fd_sc_hd__conb_1 _1735_ (.LO(\ser_C.kept_shift_reg[331] ));
 sky130_fd_sc_hd__conb_1 _1736_ (.LO(\ser_C.kept_shift_reg[332] ));
 sky130_fd_sc_hd__conb_1 _1737_ (.LO(\ser_C.kept_shift_reg[333] ));
 sky130_fd_sc_hd__conb_1 _1738_ (.LO(\ser_C.kept_shift_reg[334] ));
 sky130_fd_sc_hd__conb_1 _1739_ (.LO(\ser_C.kept_shift_reg[335] ));
 sky130_fd_sc_hd__conb_1 _1740_ (.LO(\ser_C.kept_shift_reg[336] ));
 sky130_fd_sc_hd__conb_1 _1741_ (.LO(\ser_C.kept_shift_reg[337] ));
 sky130_fd_sc_hd__conb_1 _1742_ (.LO(\ser_C.kept_shift_reg[338] ));
 sky130_fd_sc_hd__conb_1 _1743_ (.LO(\ser_C.kept_shift_reg[339] ));
 sky130_fd_sc_hd__conb_1 _1744_ (.LO(\ser_C.kept_shift_reg[340] ));
 sky130_fd_sc_hd__conb_1 _1745_ (.LO(\ser_C.kept_shift_reg[341] ));
 sky130_fd_sc_hd__conb_1 _1746_ (.LO(\ser_C.kept_shift_reg[342] ));
 sky130_fd_sc_hd__conb_1 _1747_ (.LO(\ser_C.kept_shift_reg[343] ));
 sky130_fd_sc_hd__conb_1 _1748_ (.LO(\ser_C.kept_shift_reg[344] ));
 sky130_fd_sc_hd__conb_1 _1749_ (.LO(\ser_C.kept_shift_reg[345] ));
 sky130_fd_sc_hd__conb_1 _1750_ (.LO(\ser_C.kept_shift_reg[346] ));
 sky130_fd_sc_hd__conb_1 _1751_ (.LO(\ser_C.kept_shift_reg[347] ));
 sky130_fd_sc_hd__conb_1 _1752_ (.LO(\ser_C.kept_shift_reg[348] ));
 sky130_fd_sc_hd__conb_1 _1753_ (.LO(\ser_C.kept_shift_reg[349] ));
 sky130_fd_sc_hd__conb_1 _1754_ (.LO(\ser_C.kept_shift_reg[350] ));
 sky130_fd_sc_hd__conb_1 _1755_ (.LO(\ser_C.kept_shift_reg[351] ));
 sky130_fd_sc_hd__conb_1 _1756_ (.LO(\ser_C.kept_shift_reg[352] ));
 sky130_fd_sc_hd__conb_1 _1757_ (.LO(\ser_C.kept_shift_reg[353] ));
 sky130_fd_sc_hd__conb_1 _1758_ (.LO(\ser_C.kept_shift_reg[354] ));
 sky130_fd_sc_hd__conb_1 _1759_ (.LO(\ser_C.kept_shift_reg[355] ));
 sky130_fd_sc_hd__conb_1 _1760_ (.LO(\ser_C.kept_shift_reg[356] ));
 sky130_fd_sc_hd__conb_1 _1761_ (.LO(\ser_C.kept_shift_reg[357] ));
 sky130_fd_sc_hd__conb_1 _1762_ (.LO(\ser_C.kept_shift_reg[358] ));
 sky130_fd_sc_hd__conb_1 _1763_ (.LO(\ser_C.kept_shift_reg[359] ));
 sky130_fd_sc_hd__conb_1 _1764_ (.LO(\ser_C.kept_shift_reg[360] ));
 sky130_fd_sc_hd__conb_1 _1765_ (.LO(\ser_C.kept_shift_reg[361] ));
 sky130_fd_sc_hd__conb_1 _1766_ (.LO(\ser_C.kept_shift_reg[362] ));
 sky130_fd_sc_hd__conb_1 _1767_ (.LO(\ser_C.kept_shift_reg[363] ));
 sky130_fd_sc_hd__conb_1 _1768_ (.LO(\ser_C.kept_shift_reg[364] ));
 sky130_fd_sc_hd__conb_1 _1769_ (.LO(\ser_C.kept_shift_reg[365] ));
 sky130_fd_sc_hd__conb_1 _1770_ (.LO(\ser_C.kept_shift_reg[366] ));
 sky130_fd_sc_hd__conb_1 _1771_ (.LO(\ser_C.kept_shift_reg[367] ));
 sky130_fd_sc_hd__conb_1 _1772_ (.LO(\ser_C.kept_shift_reg[368] ));
 sky130_fd_sc_hd__conb_1 _1773_ (.LO(\ser_C.kept_shift_reg[369] ));
 sky130_fd_sc_hd__conb_1 _1774_ (.LO(\ser_C.kept_shift_reg[370] ));
 sky130_fd_sc_hd__conb_1 _1775_ (.LO(\ser_C.kept_shift_reg[371] ));
 sky130_fd_sc_hd__conb_1 _1776_ (.LO(\ser_C.kept_shift_reg[372] ));
 sky130_fd_sc_hd__conb_1 _1777_ (.LO(\ser_C.kept_shift_reg[373] ));
 sky130_fd_sc_hd__conb_1 _1778_ (.LO(\ser_C.kept_shift_reg[374] ));
 sky130_fd_sc_hd__conb_1 _1779_ (.LO(\ser_C.kept_shift_reg[375] ));
 sky130_fd_sc_hd__conb_1 _1780_ (.LO(\ser_C.kept_shift_reg[376] ));
 sky130_fd_sc_hd__conb_1 _1781_ (.LO(\ser_C.kept_shift_reg[377] ));
 sky130_fd_sc_hd__conb_1 _1782_ (.LO(\ser_C.kept_shift_reg[378] ));
 sky130_fd_sc_hd__conb_1 _1783_ (.LO(\ser_C.kept_shift_reg[379] ));
 sky130_fd_sc_hd__conb_1 _1784_ (.LO(\ser_C.kept_shift_reg[380] ));
 sky130_fd_sc_hd__conb_1 _1785_ (.LO(\ser_C.kept_shift_reg[381] ));
 sky130_fd_sc_hd__conb_1 _1786_ (.LO(\ser_C.kept_shift_reg[382] ));
 sky130_fd_sc_hd__conb_1 _1787_ (.LO(\ser_C.kept_shift_reg[383] ));
 sky130_fd_sc_hd__conb_1 _1788_ (.LO(\ser_C.kept_shift_reg[384] ));
 sky130_fd_sc_hd__conb_1 _1789_ (.LO(\ser_C.kept_shift_reg[385] ));
 sky130_fd_sc_hd__conb_1 _1790_ (.LO(\ser_C.kept_shift_reg[386] ));
 sky130_fd_sc_hd__conb_1 _1791_ (.LO(\ser_C.kept_shift_reg[387] ));
 sky130_fd_sc_hd__conb_1 _1792_ (.LO(\ser_C.kept_shift_reg[388] ));
 sky130_fd_sc_hd__conb_1 _1793_ (.LO(\ser_C.kept_shift_reg[389] ));
 sky130_fd_sc_hd__conb_1 _1794_ (.LO(\ser_C.kept_shift_reg[390] ));
 sky130_fd_sc_hd__conb_1 _1795_ (.LO(\ser_C.kept_shift_reg[391] ));
 sky130_fd_sc_hd__conb_1 _1796_ (.LO(\ser_C.kept_shift_reg[392] ));
 sky130_fd_sc_hd__conb_1 _1797_ (.LO(\ser_C.kept_shift_reg[393] ));
 sky130_fd_sc_hd__conb_1 _1798_ (.LO(\ser_C.kept_shift_reg[394] ));
 sky130_fd_sc_hd__conb_1 _1799_ (.LO(\ser_C.kept_shift_reg[395] ));
 sky130_fd_sc_hd__conb_1 _1800_ (.LO(\ser_C.kept_shift_reg[396] ));
 sky130_fd_sc_hd__conb_1 _1801_ (.LO(\ser_C.kept_shift_reg[397] ));
 sky130_fd_sc_hd__conb_1 _1802_ (.LO(\ser_C.kept_shift_reg[398] ));
 sky130_fd_sc_hd__conb_1 _1803_ (.LO(\ser_C.kept_shift_reg[399] ));
 sky130_fd_sc_hd__conb_1 _1804_ (.LO(\ser_C.kept_shift_reg[400] ));
 sky130_fd_sc_hd__conb_1 _1805_ (.LO(\ser_C.kept_shift_reg[401] ));
 sky130_fd_sc_hd__conb_1 _1806_ (.LO(\ser_C.kept_shift_reg[402] ));
 sky130_fd_sc_hd__conb_1 _1807_ (.LO(\ser_C.kept_shift_reg[403] ));
 sky130_fd_sc_hd__conb_1 _1808_ (.LO(\ser_C.kept_shift_reg[404] ));
 sky130_fd_sc_hd__conb_1 _1809_ (.LO(\ser_C.kept_shift_reg[405] ));
 sky130_fd_sc_hd__conb_1 _1810_ (.LO(\ser_C.kept_shift_reg[406] ));
 sky130_fd_sc_hd__conb_1 _1811_ (.LO(\ser_C.kept_shift_reg[407] ));
 sky130_fd_sc_hd__conb_1 _1812_ (.LO(\ser_C.kept_shift_reg[408] ));
 sky130_fd_sc_hd__conb_1 _1813_ (.LO(\ser_C.kept_shift_reg[409] ));
 sky130_fd_sc_hd__conb_1 _1814_ (.LO(\ser_C.kept_shift_reg[410] ));
 sky130_fd_sc_hd__conb_1 _1815_ (.LO(\ser_C.kept_shift_reg[411] ));
 sky130_fd_sc_hd__conb_1 _1816_ (.LO(\ser_C.kept_shift_reg[412] ));
 sky130_fd_sc_hd__conb_1 _1817_ (.LO(\ser_C.kept_shift_reg[413] ));
 sky130_fd_sc_hd__conb_1 _1818_ (.LO(\ser_C.kept_shift_reg[414] ));
 sky130_fd_sc_hd__conb_1 _1819_ (.LO(\ser_C.kept_shift_reg[415] ));
 sky130_fd_sc_hd__conb_1 _1820_ (.LO(\ser_C.kept_shift_reg[416] ));
 sky130_fd_sc_hd__conb_1 _1821_ (.LO(\ser_C.kept_shift_reg[417] ));
 sky130_fd_sc_hd__conb_1 _1822_ (.LO(\ser_C.kept_shift_reg[418] ));
 sky130_fd_sc_hd__conb_1 _1823_ (.LO(\ser_C.kept_shift_reg[419] ));
 sky130_fd_sc_hd__conb_1 _1824_ (.LO(\ser_C.kept_shift_reg[420] ));
 sky130_fd_sc_hd__conb_1 _1825_ (.LO(\ser_C.kept_shift_reg[421] ));
 sky130_fd_sc_hd__conb_1 _1826_ (.LO(\ser_C.kept_shift_reg[422] ));
 sky130_fd_sc_hd__conb_1 _1827_ (.LO(\ser_C.kept_shift_reg[423] ));
 sky130_fd_sc_hd__conb_1 _1828_ (.LO(\ser_C.kept_shift_reg[424] ));
 sky130_fd_sc_hd__conb_1 _1829_ (.LO(\ser_C.kept_shift_reg[425] ));
 sky130_fd_sc_hd__conb_1 _1830_ (.LO(\ser_C.kept_shift_reg[426] ));
 sky130_fd_sc_hd__conb_1 _1831_ (.LO(\ser_C.kept_shift_reg[427] ));
 sky130_fd_sc_hd__conb_1 _1832_ (.LO(\ser_C.kept_shift_reg[428] ));
 sky130_fd_sc_hd__conb_1 _1833_ (.LO(\ser_C.kept_shift_reg[429] ));
 sky130_fd_sc_hd__conb_1 _1834_ (.LO(\ser_C.kept_shift_reg[430] ));
 sky130_fd_sc_hd__conb_1 _1835_ (.LO(\ser_C.kept_shift_reg[431] ));
 sky130_fd_sc_hd__conb_1 _1836_ (.LO(\ser_C.kept_shift_reg[432] ));
 sky130_fd_sc_hd__conb_1 _1837_ (.LO(\ser_C.kept_shift_reg[433] ));
 sky130_fd_sc_hd__conb_1 _1838_ (.LO(\ser_C.kept_shift_reg[434] ));
 sky130_fd_sc_hd__conb_1 _1839_ (.LO(\ser_C.kept_shift_reg[435] ));
 sky130_fd_sc_hd__conb_1 _1840_ (.LO(\ser_C.kept_shift_reg[436] ));
 sky130_fd_sc_hd__conb_1 _1841_ (.LO(\ser_C.kept_shift_reg[437] ));
 sky130_fd_sc_hd__conb_1 _1842_ (.LO(\ser_C.kept_shift_reg[438] ));
 sky130_fd_sc_hd__conb_1 _1843_ (.LO(\ser_C.kept_shift_reg[439] ));
 sky130_fd_sc_hd__conb_1 _1844_ (.LO(\ser_C.kept_shift_reg[440] ));
 sky130_fd_sc_hd__conb_1 _1845_ (.LO(\ser_C.kept_shift_reg[441] ));
 sky130_fd_sc_hd__conb_1 _1846_ (.LO(\ser_C.kept_shift_reg[442] ));
 sky130_fd_sc_hd__conb_1 _1847_ (.LO(\ser_C.kept_shift_reg[443] ));
 sky130_fd_sc_hd__conb_1 _1848_ (.LO(\ser_C.kept_shift_reg[444] ));
 sky130_fd_sc_hd__conb_1 _1849_ (.LO(\ser_C.kept_shift_reg[445] ));
 sky130_fd_sc_hd__conb_1 _1850_ (.LO(\ser_C.kept_shift_reg[446] ));
 sky130_fd_sc_hd__conb_1 _1851_ (.LO(\ser_C.kept_shift_reg[447] ));
 sky130_fd_sc_hd__conb_1 _1852_ (.LO(\ser_C.kept_shift_reg[448] ));
 sky130_fd_sc_hd__conb_1 _1853_ (.LO(\ser_C.kept_shift_reg[449] ));
 sky130_fd_sc_hd__conb_1 _1854_ (.LO(\ser_C.kept_shift_reg[450] ));
 sky130_fd_sc_hd__conb_1 _1855_ (.LO(\ser_C.kept_shift_reg[451] ));
 sky130_fd_sc_hd__conb_1 _1856_ (.LO(\ser_C.kept_shift_reg[452] ));
 sky130_fd_sc_hd__conb_1 _1857_ (.LO(\ser_C.kept_shift_reg[453] ));
 sky130_fd_sc_hd__conb_1 _1858_ (.LO(\ser_C.kept_shift_reg[454] ));
 sky130_fd_sc_hd__conb_1 _1859_ (.LO(\ser_C.kept_shift_reg[455] ));
 sky130_fd_sc_hd__conb_1 _1860_ (.LO(\ser_C.kept_shift_reg[456] ));
 sky130_fd_sc_hd__conb_1 _1861_ (.LO(\ser_C.kept_shift_reg[457] ));
 sky130_fd_sc_hd__conb_1 _1862_ (.LO(\ser_C.kept_shift_reg[458] ));
 sky130_fd_sc_hd__conb_1 _1863_ (.LO(\ser_C.kept_shift_reg[459] ));
 sky130_fd_sc_hd__conb_1 _1864_ (.LO(\ser_C.kept_shift_reg[460] ));
 sky130_fd_sc_hd__conb_1 _1865_ (.LO(\ser_C.kept_shift_reg[461] ));
 sky130_fd_sc_hd__conb_1 _1866_ (.LO(\ser_C.kept_shift_reg[462] ));
 sky130_fd_sc_hd__conb_1 _1867_ (.LO(\ser_C.kept_shift_reg[463] ));
 sky130_fd_sc_hd__conb_1 _1868_ (.LO(\ser_C.kept_shift_reg[464] ));
 sky130_fd_sc_hd__conb_1 _1869_ (.LO(\ser_C.kept_shift_reg[465] ));
 sky130_fd_sc_hd__conb_1 _1870_ (.LO(\ser_C.kept_shift_reg[466] ));
 sky130_fd_sc_hd__conb_1 _1871_ (.LO(\ser_C.kept_shift_reg[467] ));
 sky130_fd_sc_hd__conb_1 _1872_ (.LO(\ser_C.kept_shift_reg[468] ));
 sky130_fd_sc_hd__conb_1 _1873_ (.LO(\ser_C.kept_shift_reg[469] ));
 sky130_fd_sc_hd__conb_1 _1874_ (.LO(\ser_C.kept_shift_reg[470] ));
 sky130_fd_sc_hd__conb_1 _1875_ (.LO(\ser_C.kept_shift_reg[471] ));
 sky130_fd_sc_hd__conb_1 _1876_ (.LO(\ser_C.kept_shift_reg[472] ));
 sky130_fd_sc_hd__conb_1 _1877_ (.LO(\ser_C.kept_shift_reg[473] ));
 sky130_fd_sc_hd__conb_1 _1878_ (.LO(\ser_C.kept_shift_reg[474] ));
 sky130_fd_sc_hd__conb_1 _1879_ (.LO(\ser_C.kept_shift_reg[475] ));
 sky130_fd_sc_hd__conb_1 _1880_ (.LO(\ser_C.kept_shift_reg[476] ));
 sky130_fd_sc_hd__conb_1 _1881_ (.LO(\ser_C.kept_shift_reg[477] ));
 sky130_fd_sc_hd__conb_1 _1882_ (.LO(\ser_C.kept_shift_reg[478] ));
 sky130_fd_sc_hd__conb_1 _1883_ (.LO(\ser_C.kept_shift_reg[479] ));
 sky130_fd_sc_hd__conb_1 _1884_ (.LO(\ser_C.kept_shift_reg[480] ));
 sky130_fd_sc_hd__conb_1 _1885_ (.LO(\ser_C.kept_shift_reg[481] ));
 sky130_fd_sc_hd__conb_1 _1886_ (.LO(\ser_C.kept_shift_reg[482] ));
 sky130_fd_sc_hd__conb_1 _1887_ (.LO(\ser_C.kept_shift_reg[483] ));
 sky130_fd_sc_hd__conb_1 _1888_ (.LO(\ser_C.kept_shift_reg[484] ));
 sky130_fd_sc_hd__conb_1 _1889_ (.LO(\ser_C.kept_shift_reg[485] ));
 sky130_fd_sc_hd__conb_1 _1890_ (.LO(\ser_C.kept_shift_reg[486] ));
 sky130_fd_sc_hd__conb_1 _1891_ (.LO(\ser_C.kept_shift_reg[487] ));
 sky130_fd_sc_hd__conb_1 _1892_ (.LO(\ser_C.kept_shift_reg[488] ));
 sky130_fd_sc_hd__conb_1 _1893_ (.LO(\ser_C.kept_shift_reg[489] ));
 sky130_fd_sc_hd__conb_1 _1894_ (.LO(\ser_C.kept_shift_reg[490] ));
 sky130_fd_sc_hd__conb_1 _1895_ (.LO(\ser_C.kept_shift_reg[491] ));
 sky130_fd_sc_hd__conb_1 _1896_ (.LO(\ser_C.kept_shift_reg[492] ));
 sky130_fd_sc_hd__conb_1 _1897_ (.LO(\ser_C.kept_shift_reg[493] ));
 sky130_fd_sc_hd__conb_1 _1898_ (.LO(\ser_C.kept_shift_reg[494] ));
 sky130_fd_sc_hd__conb_1 _1899_ (.LO(\ser_C.kept_shift_reg[495] ));
 sky130_fd_sc_hd__conb_1 _1900_ (.LO(\ser_C.kept_shift_reg[496] ));
 sky130_fd_sc_hd__conb_1 _1901_ (.LO(\ser_C.kept_shift_reg[497] ));
 sky130_fd_sc_hd__conb_1 _1902_ (.LO(\ser_C.kept_shift_reg[498] ));
 sky130_fd_sc_hd__conb_1 _1903_ (.LO(\ser_C.kept_shift_reg[499] ));
 sky130_fd_sc_hd__conb_1 _1904_ (.LO(\ser_C.kept_shift_reg[500] ));
 sky130_fd_sc_hd__conb_1 _1905_ (.LO(\ser_C.kept_shift_reg[501] ));
 sky130_fd_sc_hd__conb_1 _1906_ (.LO(\ser_C.kept_shift_reg[502] ));
 sky130_fd_sc_hd__conb_1 _1907_ (.LO(\ser_C.kept_shift_reg[503] ));
 sky130_fd_sc_hd__conb_1 _1908_ (.LO(\ser_C.kept_shift_reg[504] ));
 sky130_fd_sc_hd__conb_1 _1909_ (.LO(\ser_C.kept_shift_reg[505] ));
 sky130_fd_sc_hd__conb_1 _1910_ (.LO(\ser_C.kept_shift_reg[506] ));
 sky130_fd_sc_hd__conb_1 _1911_ (.LO(\ser_C.kept_shift_reg[507] ));
 sky130_fd_sc_hd__conb_1 _1912_ (.LO(\ser_C.kept_shift_reg[508] ));
 sky130_fd_sc_hd__conb_1 _1913_ (.LO(\ser_C.kept_shift_reg[509] ));
 sky130_fd_sc_hd__conb_1 _1914_ (.LO(\ser_C.kept_shift_reg[510] ));
 sky130_fd_sc_hd__conb_1 _1915_ (.LO(\ser_C.kept_shift_reg[511] ));
 sky130_fd_sc_hd__conb_1 _1916_ (.LO(\ser_C.kept_transmitting ));
 sky130_fd_sc_hd__buf_2 _1917_ (.A(clk),
    .X(C_out_serial_clk));
endmodule
