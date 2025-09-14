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
 wire VPWR;
 wire VGND;

 sky130_fd_sc_hd__inv_2 _0528_ (.A(\systolic_inst.cycle_cnt[23] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0399_));
 sky130_fd_sc_hd__inv_2 _0529_ (.A(\systolic_inst.cycle_cnt[30] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0400_));
 sky130_fd_sc_hd__inv_2 _0530_ (.A(\systolic_inst.cycle_cnt[31] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0401_));
 sky130_fd_sc_hd__inv_2 _0531_ (.A(C_out_frame_sync),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0402_));
 sky130_fd_sc_hd__inv_2 _0532_ (.A(\deser_A.kept_receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0403_));
 sky130_fd_sc_hd__inv_2 _0533_ (.A(\deser_B.kept_receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0404_));
 sky130_fd_sc_hd__or4_2 _0534_ (.A(\systolic_inst.cycle_cnt[24] ),
    .B(\systolic_inst.cycle_cnt[25] ),
    .C(\systolic_inst.cycle_cnt[26] ),
    .D(\systolic_inst.cycle_cnt[27] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0405_));
 sky130_fd_sc_hd__or4_2 _0535_ (.A(\systolic_inst.cycle_cnt[20] ),
    .B(\systolic_inst.cycle_cnt[21] ),
    .C(\systolic_inst.cycle_cnt[22] ),
    .D(\systolic_inst.cycle_cnt[23] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0406_));
 sky130_fd_sc_hd__or4_2 _0536_ (.A(\systolic_inst.cycle_cnt[28] ),
    .B(\systolic_inst.cycle_cnt[29] ),
    .C(\systolic_inst.cycle_cnt[30] ),
    .D(\systolic_inst.cycle_cnt[31] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0407_));
 sky130_fd_sc_hd__o21a_2 _0537_ (.A1(\systolic_inst.cycle_cnt[1] ),
    .A2(\systolic_inst.cycle_cnt[2] ),
    .B1(\systolic_inst.cycle_cnt[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0408_));
 sky130_fd_sc_hd__or3_2 _0538_ (.A(\systolic_inst.cycle_cnt[8] ),
    .B(\systolic_inst.cycle_cnt[9] ),
    .C(\systolic_inst.cycle_cnt[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0409_));
 sky130_fd_sc_hd__or4_2 _0539_ (.A(\systolic_inst.cycle_cnt[4] ),
    .B(\systolic_inst.cycle_cnt[5] ),
    .C(\systolic_inst.cycle_cnt[6] ),
    .D(\systolic_inst.cycle_cnt[7] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0410_));
 sky130_fd_sc_hd__or4_2 _0540_ (.A(\systolic_inst.cycle_cnt[12] ),
    .B(\systolic_inst.cycle_cnt[13] ),
    .C(\systolic_inst.cycle_cnt[14] ),
    .D(\systolic_inst.cycle_cnt[15] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0411_));
 sky130_fd_sc_hd__or4_2 _0541_ (.A(\systolic_inst.cycle_cnt[16] ),
    .B(\systolic_inst.cycle_cnt[17] ),
    .C(\systolic_inst.cycle_cnt[18] ),
    .D(\systolic_inst.cycle_cnt[19] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0412_));
 sky130_fd_sc_hd__or4_2 _0542_ (.A(_0405_),
    .B(_0406_),
    .C(_0407_),
    .D(_0412_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0413_));
 sky130_fd_sc_hd__or4_2 _0543_ (.A(_0408_),
    .B(_0409_),
    .C(_0410_),
    .D(_0411_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0414_));
 sky130_fd_sc_hd__o31a_2 _0544_ (.A1(\systolic_inst.cycle_cnt[11] ),
    .A2(_0413_),
    .A3(_0414_),
    .B1(\systolic_inst.ce_local ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0003_));
 sky130_fd_sc_hd__and4_2 _0545_ (.A(\deser_A.bit_idx[1] ),
    .B(\deser_A.bit_idx[0] ),
    .C(\deser_A.bit_idx[3] ),
    .D(\deser_A.bit_idx[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0415_));
 sky130_fd_sc_hd__and2_2 _0546_ (.A(\deser_A.bit_idx[4] ),
    .B(_0415_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0416_));
 sky130_fd_sc_hd__nand4_2 _0547_ (.A(\deser_A.receiving ),
    .B(\deser_A.bit_idx[5] ),
    .C(\deser_A.bit_idx[6] ),
    .D(_0416_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0417_));
 sky130_fd_sc_hd__nor2_2 _0548_ (.A(\deser_A.bit_idx[7] ),
    .B(_0417_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0418_));
 sky130_fd_sc_hd__nor2_2 _0549_ (.A(A_in_frame_sync),
    .B(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0419_));
 sky130_fd_sc_hd__or2_2 _0550_ (.A(A_in_frame_sync),
    .B(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0420_));
 sky130_fd_sc_hd__nor2_2 _0551_ (.A(_0418_),
    .B(_0419_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0000_));
 sky130_fd_sc_hd__and4_2 _0552_ (.A(\deser_B.bit_idx[1] ),
    .B(\deser_B.bit_idx[0] ),
    .C(\deser_B.bit_idx[3] ),
    .D(\deser_B.bit_idx[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0421_));
 sky130_fd_sc_hd__and2_2 _0553_ (.A(\deser_B.bit_idx[4] ),
    .B(_0421_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0422_));
 sky130_fd_sc_hd__nand4_2 _0554_ (.A(\deser_B.receiving ),
    .B(\deser_B.bit_idx[5] ),
    .C(\deser_B.bit_idx[6] ),
    .D(_0422_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0423_));
 sky130_fd_sc_hd__nor2_2 _0555_ (.A(\deser_B.bit_idx[7] ),
    .B(_0423_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0424_));
 sky130_fd_sc_hd__nor2_2 _0556_ (.A(B_in_frame_sync),
    .B(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0425_));
 sky130_fd_sc_hd__or2_2 _0557_ (.A(B_in_frame_sync),
    .B(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0426_));
 sky130_fd_sc_hd__nor2_2 _0558_ (.A(_0424_),
    .B(_0425_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0001_));
 sky130_fd_sc_hd__nor2_2 _0559_ (.A(start),
    .B(\systolic_inst.ce_local ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0427_));
 sky130_fd_sc_hd__or2_2 _0560_ (.A(start),
    .B(\systolic_inst.ce_local ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0428_));
 sky130_fd_sc_hd__nor2_2 _0561_ (.A(_0003_),
    .B(_0427_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0004_));
 sky130_fd_sc_hd__and4b_2 _0562_ (.A_N(\ser_C.bit_idx[9] ),
    .B(\ser_C.bit_idx[8] ),
    .C(\ser_C.bit_idx[7] ),
    .D(\ser_C.bit_idx[6] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0429_));
 sky130_fd_sc_hd__and4_2 _0563_ (.A(\ser_C.bit_idx[0] ),
    .B(\ser_C.bit_idx[1] ),
    .C(\ser_C.bit_idx[2] ),
    .D(\ser_C.bit_idx[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0430_));
 sky130_fd_sc_hd__a41o_2 _0564_ (.A1(\ser_C.bit_idx[5] ),
    .A2(\ser_C.bit_idx[4] ),
    .A3(_0429_),
    .A4(_0430_),
    .B1(_0402_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0431_));
 sky130_fd_sc_hd__inv_2 _0565_ (.A(_0431_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0002_));
 sky130_fd_sc_hd__mux2_1 _0566_ (.A0(\systolic_inst.ce_local ),
    .A1(_0427_),
    .S(\systolic_inst.cycle_cnt[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0005_));
 sky130_fd_sc_hd__a21o_2 _0567_ (.A1(\systolic_inst.ce_local ),
    .A2(\systolic_inst.cycle_cnt[0] ),
    .B1(\systolic_inst.cycle_cnt[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0432_));
 sky130_fd_sc_hd__and2_2 _0568_ (.A(\systolic_inst.cycle_cnt[0] ),
    .B(\systolic_inst.cycle_cnt[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0433_));
 sky130_fd_sc_hd__and3_2 _0569_ (.A(\systolic_inst.ce_local ),
    .B(\systolic_inst.cycle_cnt[0] ),
    .C(\systolic_inst.cycle_cnt[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0434_));
 sky130_fd_sc_hd__and2b_2 _0570_ (.A_N(\systolic_inst.ce_local ),
    .B(start),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0435_));
 sky130_fd_sc_hd__nand2b_2 _0571_ (.A_N(\systolic_inst.ce_local ),
    .B(start),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0436_));
 sky130_fd_sc_hd__nor2_2 _0572_ (.A(_0434_),
    .B(_0435_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0437_));
 sky130_fd_sc_hd__and2_2 _0573_ (.A(_0432_),
    .B(_0437_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0006_));
 sky130_fd_sc_hd__mux2_1 _0574_ (.A0(_0434_),
    .A1(_0437_),
    .S(\systolic_inst.cycle_cnt[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0007_));
 sky130_fd_sc_hd__a31o_2 _0575_ (.A1(\systolic_inst.cycle_cnt[2] ),
    .A2(_0428_),
    .A3(_0433_),
    .B1(\systolic_inst.cycle_cnt[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0438_));
 sky130_fd_sc_hd__and3_2 _0576_ (.A(\systolic_inst.cycle_cnt[2] ),
    .B(\systolic_inst.cycle_cnt[3] ),
    .C(_0434_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0439_));
 sky130_fd_sc_hd__nor2_2 _0577_ (.A(_0435_),
    .B(_0439_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0440_));
 sky130_fd_sc_hd__and2_2 _0578_ (.A(_0438_),
    .B(_0440_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0008_));
 sky130_fd_sc_hd__mux2_1 _0579_ (.A0(_0439_),
    .A1(_0440_),
    .S(\systolic_inst.cycle_cnt[4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0009_));
 sky130_fd_sc_hd__and3_2 _0580_ (.A(\systolic_inst.cycle_cnt[2] ),
    .B(\systolic_inst.cycle_cnt[3] ),
    .C(\systolic_inst.cycle_cnt[4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0441_));
 sky130_fd_sc_hd__and3_2 _0581_ (.A(\systolic_inst.cycle_cnt[5] ),
    .B(_0434_),
    .C(_0441_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0442_));
 sky130_fd_sc_hd__nor2_2 _0582_ (.A(_0435_),
    .B(_0442_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0443_));
 sky130_fd_sc_hd__and3_2 _0583_ (.A(_0428_),
    .B(_0433_),
    .C(_0441_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0444_));
 sky130_fd_sc_hd__o21a_2 _0584_ (.A1(\systolic_inst.cycle_cnt[5] ),
    .A2(_0444_),
    .B1(_0443_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0010_));
 sky130_fd_sc_hd__mux2_1 _0585_ (.A0(_0442_),
    .A1(_0443_),
    .S(\systolic_inst.cycle_cnt[6] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0011_));
 sky130_fd_sc_hd__a31o_2 _0586_ (.A1(\systolic_inst.cycle_cnt[5] ),
    .A2(\systolic_inst.cycle_cnt[6] ),
    .A3(_0444_),
    .B1(\systolic_inst.cycle_cnt[7] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0445_));
 sky130_fd_sc_hd__and3_2 _0587_ (.A(\systolic_inst.cycle_cnt[5] ),
    .B(\systolic_inst.cycle_cnt[6] ),
    .C(\systolic_inst.cycle_cnt[7] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0446_));
 sky130_fd_sc_hd__and3_2 _0588_ (.A(_0433_),
    .B(_0441_),
    .C(_0446_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0447_));
 sky130_fd_sc_hd__and4_2 _0589_ (.A(\systolic_inst.ce_local ),
    .B(_0433_),
    .C(_0441_),
    .D(_0446_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0448_));
 sky130_fd_sc_hd__inv_2 _0590_ (.A(_0448_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0449_));
 sky130_fd_sc_hd__and3_2 _0591_ (.A(_0436_),
    .B(_0445_),
    .C(_0449_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0012_));
 sky130_fd_sc_hd__a21oi_2 _0592_ (.A1(\systolic_inst.cycle_cnt[8] ),
    .A2(_0436_),
    .B1(_0448_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0450_));
 sky130_fd_sc_hd__a21oi_2 _0593_ (.A1(\systolic_inst.cycle_cnt[8] ),
    .A2(_0448_),
    .B1(_0450_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0013_));
 sky130_fd_sc_hd__and3_2 _0594_ (.A(\systolic_inst.cycle_cnt[8] ),
    .B(\systolic_inst.cycle_cnt[9] ),
    .C(_0448_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0451_));
 sky130_fd_sc_hd__nor2_2 _0595_ (.A(_0435_),
    .B(_0451_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0452_));
 sky130_fd_sc_hd__and3_2 _0596_ (.A(\systolic_inst.cycle_cnt[8] ),
    .B(_0428_),
    .C(_0447_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0453_));
 sky130_fd_sc_hd__o21a_2 _0597_ (.A1(\systolic_inst.cycle_cnt[9] ),
    .A2(_0453_),
    .B1(_0452_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0014_));
 sky130_fd_sc_hd__mux2_1 _0598_ (.A0(_0451_),
    .A1(_0452_),
    .S(\systolic_inst.cycle_cnt[10] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0015_));
 sky130_fd_sc_hd__a31o_2 _0599_ (.A1(\systolic_inst.cycle_cnt[9] ),
    .A2(\systolic_inst.cycle_cnt[10] ),
    .A3(_0453_),
    .B1(\systolic_inst.cycle_cnt[11] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0454_));
 sky130_fd_sc_hd__and4_2 _0600_ (.A(\systolic_inst.cycle_cnt[8] ),
    .B(\systolic_inst.cycle_cnt[9] ),
    .C(\systolic_inst.cycle_cnt[10] ),
    .D(\systolic_inst.cycle_cnt[11] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0455_));
 sky130_fd_sc_hd__and2_2 _0601_ (.A(_0448_),
    .B(_0455_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0456_));
 sky130_fd_sc_hd__inv_2 _0602_ (.A(_0456_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0457_));
 sky130_fd_sc_hd__and3_2 _0603_ (.A(_0436_),
    .B(_0454_),
    .C(_0457_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0016_));
 sky130_fd_sc_hd__nand2_2 _0604_ (.A(\systolic_inst.cycle_cnt[12] ),
    .B(_0436_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0458_));
 sky130_fd_sc_hd__mux2_1 _0605_ (.A0(_0458_),
    .A1(\systolic_inst.cycle_cnt[12] ),
    .S(_0456_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0459_));
 sky130_fd_sc_hd__inv_2 _0606_ (.A(_0459_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0017_));
 sky130_fd_sc_hd__a22oi_2 _0607_ (.A1(\systolic_inst.cycle_cnt[13] ),
    .A2(_0436_),
    .B1(_0456_),
    .B2(\systolic_inst.cycle_cnt[12] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0460_));
 sky130_fd_sc_hd__and4_2 _0608_ (.A(\systolic_inst.cycle_cnt[12] ),
    .B(\systolic_inst.cycle_cnt[13] ),
    .C(_0448_),
    .D(_0455_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0461_));
 sky130_fd_sc_hd__nor2_2 _0609_ (.A(_0460_),
    .B(_0461_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0018_));
 sky130_fd_sc_hd__a21oi_2 _0610_ (.A1(\systolic_inst.cycle_cnt[14] ),
    .A2(_0436_),
    .B1(_0461_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0462_));
 sky130_fd_sc_hd__and3_2 _0611_ (.A(\systolic_inst.cycle_cnt[12] ),
    .B(\systolic_inst.cycle_cnt[13] ),
    .C(\systolic_inst.cycle_cnt[14] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0463_));
 sky130_fd_sc_hd__a21oi_2 _0612_ (.A1(\systolic_inst.cycle_cnt[14] ),
    .A2(_0461_),
    .B1(_0462_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0019_));
 sky130_fd_sc_hd__and3_2 _0613_ (.A(\systolic_inst.cycle_cnt[15] ),
    .B(_0455_),
    .C(_0463_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0464_));
 sky130_fd_sc_hd__and2_2 _0614_ (.A(_0448_),
    .B(_0464_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0465_));
 sky130_fd_sc_hd__nor2_2 _0615_ (.A(_0435_),
    .B(_0465_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0466_));
 sky130_fd_sc_hd__and3b_2 _0616_ (.A_N(_0465_),
    .B(_0463_),
    .C(_0456_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0467_));
 sky130_fd_sc_hd__a21o_2 _0617_ (.A1(\systolic_inst.cycle_cnt[15] ),
    .A2(_0466_),
    .B1(_0467_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0020_));
 sky130_fd_sc_hd__mux2_1 _0618_ (.A0(_0465_),
    .A1(_0466_),
    .S(\systolic_inst.cycle_cnt[16] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0021_));
 sky130_fd_sc_hd__and3_2 _0619_ (.A(\systolic_inst.cycle_cnt[16] ),
    .B(\systolic_inst.cycle_cnt[17] ),
    .C(_0465_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0468_));
 sky130_fd_sc_hd__a31oi_2 _0620_ (.A1(\systolic_inst.cycle_cnt[16] ),
    .A2(\systolic_inst.cycle_cnt[17] ),
    .A3(_0465_),
    .B1(_0435_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0469_));
 sky130_fd_sc_hd__and3_2 _0621_ (.A(_0428_),
    .B(_0447_),
    .C(_0464_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0470_));
 sky130_fd_sc_hd__a21o_2 _0622_ (.A1(\systolic_inst.cycle_cnt[16] ),
    .A2(_0470_),
    .B1(\systolic_inst.cycle_cnt[17] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0471_));
 sky130_fd_sc_hd__and2_2 _0623_ (.A(_0469_),
    .B(_0471_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0022_));
 sky130_fd_sc_hd__mux2_1 _0624_ (.A0(_0468_),
    .A1(_0469_),
    .S(\systolic_inst.cycle_cnt[18] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0023_));
 sky130_fd_sc_hd__a41o_2 _0625_ (.A1(\systolic_inst.cycle_cnt[16] ),
    .A2(\systolic_inst.cycle_cnt[17] ),
    .A3(\systolic_inst.cycle_cnt[18] ),
    .A4(_0470_),
    .B1(\systolic_inst.cycle_cnt[19] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0472_));
 sky130_fd_sc_hd__and4_2 _0626_ (.A(\systolic_inst.cycle_cnt[16] ),
    .B(\systolic_inst.cycle_cnt[17] ),
    .C(\systolic_inst.cycle_cnt[18] ),
    .D(\systolic_inst.cycle_cnt[19] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0473_));
 sky130_fd_sc_hd__and3_2 _0627_ (.A(_0448_),
    .B(_0464_),
    .C(_0473_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0474_));
 sky130_fd_sc_hd__nor2_2 _0628_ (.A(_0435_),
    .B(_0474_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0475_));
 sky130_fd_sc_hd__and2_2 _0629_ (.A(_0472_),
    .B(_0475_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0024_));
 sky130_fd_sc_hd__mux2_1 _0630_ (.A0(_0474_),
    .A1(_0475_),
    .S(\systolic_inst.cycle_cnt[20] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0025_));
 sky130_fd_sc_hd__a31o_2 _0631_ (.A1(\systolic_inst.cycle_cnt[20] ),
    .A2(_0470_),
    .A3(_0473_),
    .B1(\systolic_inst.cycle_cnt[21] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0476_));
 sky130_fd_sc_hd__nand3_2 _0632_ (.A(\systolic_inst.cycle_cnt[20] ),
    .B(\systolic_inst.cycle_cnt[21] ),
    .C(_0474_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0477_));
 sky130_fd_sc_hd__and3_2 _0633_ (.A(_0436_),
    .B(_0476_),
    .C(_0477_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0026_));
 sky130_fd_sc_hd__nand2_2 _0634_ (.A(\systolic_inst.cycle_cnt[22] ),
    .B(_0436_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0478_));
 sky130_fd_sc_hd__and3_2 _0635_ (.A(\systolic_inst.cycle_cnt[20] ),
    .B(\systolic_inst.cycle_cnt[21] ),
    .C(\systolic_inst.cycle_cnt[22] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0479_));
 sky130_fd_sc_hd__nand2_2 _0636_ (.A(_0474_),
    .B(_0479_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0480_));
 sky130_fd_sc_hd__a21boi_2 _0637_ (.A1(_0477_),
    .A2(_0478_),
    .B1_N(_0480_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0027_));
 sky130_fd_sc_hd__nor2_2 _0638_ (.A(_0399_),
    .B(_0435_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0481_));
 sky130_fd_sc_hd__mux2_1 _0639_ (.A0(_0399_),
    .A1(_0481_),
    .S(_0480_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0028_));
 sky130_fd_sc_hd__and3_2 _0640_ (.A(\systolic_inst.cycle_cnt[23] ),
    .B(_0473_),
    .C(_0479_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0482_));
 sky130_fd_sc_hd__and4_2 _0641_ (.A(\systolic_inst.ce_local ),
    .B(_0447_),
    .C(_0464_),
    .D(_0482_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0483_));
 sky130_fd_sc_hd__o21ai_2 _0642_ (.A1(\systolic_inst.cycle_cnt[24] ),
    .A2(_0483_),
    .B1(_0436_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0484_));
 sky130_fd_sc_hd__a21oi_2 _0643_ (.A1(\systolic_inst.cycle_cnt[24] ),
    .A2(_0483_),
    .B1(_0484_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0029_));
 sky130_fd_sc_hd__a31o_2 _0644_ (.A1(\systolic_inst.cycle_cnt[24] ),
    .A2(_0470_),
    .A3(_0482_),
    .B1(\systolic_inst.cycle_cnt[25] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0485_));
 sky130_fd_sc_hd__and2_2 _0645_ (.A(\systolic_inst.cycle_cnt[24] ),
    .B(\systolic_inst.cycle_cnt[25] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0486_));
 sky130_fd_sc_hd__nand2_2 _0646_ (.A(_0483_),
    .B(_0486_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0487_));
 sky130_fd_sc_hd__and3_2 _0647_ (.A(_0436_),
    .B(_0485_),
    .C(_0487_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0030_));
 sky130_fd_sc_hd__nand2_2 _0648_ (.A(\systolic_inst.cycle_cnt[26] ),
    .B(_0436_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0488_));
 sky130_fd_sc_hd__and3_2 _0649_ (.A(\systolic_inst.cycle_cnt[26] ),
    .B(_0483_),
    .C(_0486_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0489_));
 sky130_fd_sc_hd__a21oi_2 _0650_ (.A1(_0487_),
    .A2(_0488_),
    .B1(_0489_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0031_));
 sky130_fd_sc_hd__and2_2 _0651_ (.A(\systolic_inst.cycle_cnt[27] ),
    .B(_0436_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0490_));
 sky130_fd_sc_hd__and3_2 _0652_ (.A(\systolic_inst.cycle_cnt[26] ),
    .B(\systolic_inst.cycle_cnt[27] ),
    .C(_0486_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0491_));
 sky130_fd_sc_hd__and4_2 _0653_ (.A(_0448_),
    .B(_0464_),
    .C(_0482_),
    .D(_0491_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0492_));
 sky130_fd_sc_hd__o21ba_2 _0654_ (.A1(_0489_),
    .A2(_0490_),
    .B1_N(_0492_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0032_));
 sky130_fd_sc_hd__and2_2 _0655_ (.A(\systolic_inst.cycle_cnt[28] ),
    .B(_0436_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0493_));
 sky130_fd_sc_hd__nand2_2 _0656_ (.A(\systolic_inst.cycle_cnt[28] ),
    .B(_0492_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0494_));
 sky130_fd_sc_hd__o21a_2 _0657_ (.A1(_0492_),
    .A2(_0493_),
    .B1(_0494_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0033_));
 sky130_fd_sc_hd__nand2_2 _0658_ (.A(\systolic_inst.cycle_cnt[29] ),
    .B(_0436_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0495_));
 sky130_fd_sc_hd__and3_2 _0659_ (.A(\systolic_inst.cycle_cnt[28] ),
    .B(\systolic_inst.cycle_cnt[29] ),
    .C(_0492_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0496_));
 sky130_fd_sc_hd__a21oi_2 _0660_ (.A1(_0494_),
    .A2(_0495_),
    .B1(_0496_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0034_));
 sky130_fd_sc_hd__nor2_2 _0661_ (.A(_0400_),
    .B(_0435_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0497_));
 sky130_fd_sc_hd__and4_2 _0662_ (.A(\systolic_inst.cycle_cnt[28] ),
    .B(\systolic_inst.cycle_cnt[29] ),
    .C(\systolic_inst.cycle_cnt[30] ),
    .D(_0492_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0498_));
 sky130_fd_sc_hd__mux2_1 _0663_ (.A0(_0497_),
    .A1(_0400_),
    .S(_0496_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0035_));
 sky130_fd_sc_hd__nor2_2 _0664_ (.A(_0401_),
    .B(_0435_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0499_));
 sky130_fd_sc_hd__mux2_1 _0665_ (.A0(_0499_),
    .A1(_0401_),
    .S(_0498_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0036_));
 sky130_fd_sc_hd__mux2_1 _0666_ (.A0(\deser_A.receiving ),
    .A1(_0419_),
    .S(\deser_A.bit_idx[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0037_));
 sky130_fd_sc_hd__and2b_2 _0667_ (.A_N(\deser_A.receiving ),
    .B(A_in_frame_sync),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0500_));
 sky130_fd_sc_hd__nand2b_2 _0668_ (.A_N(\deser_A.receiving ),
    .B(A_in_frame_sync),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0501_));
 sky130_fd_sc_hd__and3_2 _0669_ (.A(\deser_A.receiving ),
    .B(\deser_A.bit_idx[1] ),
    .C(\deser_A.bit_idx[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0502_));
 sky130_fd_sc_hd__nor2_2 _0670_ (.A(_0500_),
    .B(_0502_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0503_));
 sky130_fd_sc_hd__a21o_2 _0671_ (.A1(\deser_A.bit_idx[0] ),
    .A2(_0420_),
    .B1(\deser_A.bit_idx[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0504_));
 sky130_fd_sc_hd__and2_2 _0672_ (.A(_0503_),
    .B(_0504_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0038_));
 sky130_fd_sc_hd__mux2_1 _0673_ (.A0(_0502_),
    .A1(_0503_),
    .S(\deser_A.bit_idx[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0039_));
 sky130_fd_sc_hd__a41o_2 _0674_ (.A1(\deser_A.bit_idx[1] ),
    .A2(\deser_A.bit_idx[0] ),
    .A3(\deser_A.bit_idx[2] ),
    .A4(_0420_),
    .B1(\deser_A.bit_idx[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0505_));
 sky130_fd_sc_hd__nand2_2 _0675_ (.A(\deser_A.receiving ),
    .B(_0415_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0506_));
 sky130_fd_sc_hd__and3_2 _0676_ (.A(_0501_),
    .B(_0505_),
    .C(_0506_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0040_));
 sky130_fd_sc_hd__nand2_2 _0677_ (.A(\deser_A.bit_idx[4] ),
    .B(_0501_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0507_));
 sky130_fd_sc_hd__mux2_1 _0678_ (.A0(\deser_A.bit_idx[4] ),
    .A1(_0507_),
    .S(_0506_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0508_));
 sky130_fd_sc_hd__inv_2 _0679_ (.A(_0508_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0041_));
 sky130_fd_sc_hd__nand3_2 _0680_ (.A(\deser_A.bit_idx[5] ),
    .B(_0416_),
    .C(_0420_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0509_));
 sky130_fd_sc_hd__a31o_2 _0681_ (.A1(\deser_A.bit_idx[4] ),
    .A2(_0415_),
    .A3(_0420_),
    .B1(\deser_A.bit_idx[5] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0510_));
 sky130_fd_sc_hd__and3_2 _0682_ (.A(_0501_),
    .B(_0509_),
    .C(_0510_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0042_));
 sky130_fd_sc_hd__a31o_2 _0683_ (.A1(\deser_A.bit_idx[5] ),
    .A2(_0416_),
    .A3(_0420_),
    .B1(\deser_A.bit_idx[6] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0511_));
 sky130_fd_sc_hd__and3_2 _0684_ (.A(_0417_),
    .B(_0501_),
    .C(_0511_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0043_));
 sky130_fd_sc_hd__and3_2 _0685_ (.A(\deser_A.bit_idx[7] ),
    .B(_0417_),
    .C(_0501_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0512_));
 sky130_fd_sc_hd__or2_2 _0686_ (.A(_0418_),
    .B(_0512_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0044_));
 sky130_fd_sc_hd__mux2_1 _0687_ (.A0(\deser_A.receiving ),
    .A1(_0419_),
    .S(\deser_A.kept_bit_idx[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0045_));
 sky130_fd_sc_hd__a21oi_2 _0688_ (.A1(\deser_A.kept_bit_idx[0] ),
    .A2(_0420_),
    .B1(\deser_A.kept_bit_idx[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0513_));
 sky130_fd_sc_hd__and3_2 _0689_ (.A(\deser_A.receiving ),
    .B(\deser_A.kept_bit_idx[0] ),
    .C(\deser_A.kept_bit_idx[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0514_));
 sky130_fd_sc_hd__nor3_2 _0690_ (.A(_0500_),
    .B(_0513_),
    .C(_0514_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0046_));
 sky130_fd_sc_hd__and3_2 _0691_ (.A(\deser_A.kept_bit_idx[0] ),
    .B(\deser_A.kept_bit_idx[1] ),
    .C(\deser_A.kept_bit_idx[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0515_));
 sky130_fd_sc_hd__and4_2 _0692_ (.A(\deser_A.receiving ),
    .B(\deser_A.kept_bit_idx[0] ),
    .C(\deser_A.kept_bit_idx[1] ),
    .D(\deser_A.kept_bit_idx[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0516_));
 sky130_fd_sc_hd__a21oi_2 _0693_ (.A1(\deser_A.kept_bit_idx[2] ),
    .A2(_0501_),
    .B1(_0514_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0517_));
 sky130_fd_sc_hd__nor2_2 _0694_ (.A(_0516_),
    .B(_0517_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0047_));
 sky130_fd_sc_hd__a21oi_2 _0695_ (.A1(\deser_A.kept_bit_idx[3] ),
    .A2(_0501_),
    .B1(_0516_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0518_));
 sky130_fd_sc_hd__a21oi_2 _0696_ (.A1(\deser_A.kept_bit_idx[3] ),
    .A2(_0516_),
    .B1(_0518_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0048_));
 sky130_fd_sc_hd__a22oi_2 _0697_ (.A1(\deser_A.kept_bit_idx[4] ),
    .A2(_0501_),
    .B1(_0516_),
    .B2(\deser_A.kept_bit_idx[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0519_));
 sky130_fd_sc_hd__a31o_2 _0698_ (.A1(\deser_A.kept_bit_idx[3] ),
    .A2(\deser_A.kept_bit_idx[4] ),
    .A3(_0516_),
    .B1(_0519_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0520_));
 sky130_fd_sc_hd__inv_2 _0699_ (.A(_0520_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0049_));
 sky130_fd_sc_hd__and4_2 _0700_ (.A(\deser_A.kept_bit_idx[3] ),
    .B(\deser_A.kept_bit_idx[4] ),
    .C(\deser_A.kept_bit_idx[5] ),
    .D(_0516_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0521_));
 sky130_fd_sc_hd__inv_2 _0701_ (.A(_0521_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0522_));
 sky130_fd_sc_hd__a41o_2 _0702_ (.A1(\deser_A.kept_bit_idx[3] ),
    .A2(\deser_A.kept_bit_idx[4] ),
    .A3(_0420_),
    .A4(_0515_),
    .B1(\deser_A.kept_bit_idx[5] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0523_));
 sky130_fd_sc_hd__and3_2 _0703_ (.A(_0501_),
    .B(_0522_),
    .C(_0523_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0050_));
 sky130_fd_sc_hd__nand2_2 _0704_ (.A(\deser_A.kept_bit_idx[6] ),
    .B(_0521_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0524_));
 sky130_fd_sc_hd__a21o_2 _0705_ (.A1(\deser_A.kept_bit_idx[6] ),
    .A2(_0501_),
    .B1(_0521_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0525_));
 sky130_fd_sc_hd__and2_2 _0706_ (.A(_0524_),
    .B(_0525_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0051_));
 sky130_fd_sc_hd__nand2_2 _0707_ (.A(\deser_A.kept_bit_idx[7] ),
    .B(_0501_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0526_));
 sky130_fd_sc_hd__mux2_1 _0708_ (.A0(\deser_A.kept_bit_idx[7] ),
    .A1(_0526_),
    .S(_0524_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0527_));
 sky130_fd_sc_hd__inv_2 _0709_ (.A(_0527_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0052_));
 sky130_fd_sc_hd__mux2_1 _0710_ (.A0(\deser_A.kept_shift_reg[1] ),
    .A1(\deser_A.kept_shift_reg[2] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0053_));
 sky130_fd_sc_hd__mux2_1 _0711_ (.A0(\deser_A.kept_shift_reg[2] ),
    .A1(\deser_A.kept_shift_reg[3] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0054_));
 sky130_fd_sc_hd__mux2_1 _0712_ (.A0(\deser_A.kept_shift_reg[3] ),
    .A1(\deser_A.kept_shift_reg[4] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0055_));
 sky130_fd_sc_hd__mux2_1 _0713_ (.A0(\deser_A.kept_shift_reg[4] ),
    .A1(\deser_A.kept_shift_reg[5] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0056_));
 sky130_fd_sc_hd__mux2_1 _0714_ (.A0(\deser_A.kept_shift_reg[5] ),
    .A1(\deser_A.kept_shift_reg[6] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0057_));
 sky130_fd_sc_hd__mux2_1 _0715_ (.A0(\deser_A.kept_shift_reg[6] ),
    .A1(\deser_A.kept_shift_reg[7] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0058_));
 sky130_fd_sc_hd__mux2_1 _0716_ (.A0(\deser_A.kept_shift_reg[7] ),
    .A1(\deser_A.kept_shift_reg[8] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0059_));
 sky130_fd_sc_hd__mux2_1 _0717_ (.A0(\deser_A.kept_shift_reg[8] ),
    .A1(\deser_A.kept_shift_reg[9] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0060_));
 sky130_fd_sc_hd__mux2_1 _0718_ (.A0(\deser_A.kept_shift_reg[9] ),
    .A1(\deser_A.kept_shift_reg[10] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0061_));
 sky130_fd_sc_hd__mux2_1 _0719_ (.A0(\deser_A.kept_shift_reg[10] ),
    .A1(\deser_A.kept_shift_reg[11] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0062_));
 sky130_fd_sc_hd__mux2_1 _0720_ (.A0(\deser_A.kept_shift_reg[11] ),
    .A1(\deser_A.kept_shift_reg[12] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0063_));
 sky130_fd_sc_hd__mux2_1 _0721_ (.A0(\deser_A.kept_shift_reg[12] ),
    .A1(\deser_A.kept_shift_reg[13] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0064_));
 sky130_fd_sc_hd__mux2_1 _0722_ (.A0(\deser_A.kept_shift_reg[13] ),
    .A1(\deser_A.kept_shift_reg[14] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0065_));
 sky130_fd_sc_hd__mux2_1 _0723_ (.A0(\deser_A.kept_shift_reg[14] ),
    .A1(\deser_A.kept_shift_reg[15] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0066_));
 sky130_fd_sc_hd__mux2_1 _0724_ (.A0(\deser_A.kept_shift_reg[15] ),
    .A1(\deser_A.kept_shift_reg[16] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0067_));
 sky130_fd_sc_hd__mux2_1 _0725_ (.A0(\deser_A.kept_shift_reg[16] ),
    .A1(\deser_A.kept_shift_reg[17] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0068_));
 sky130_fd_sc_hd__mux2_1 _0726_ (.A0(\deser_A.kept_shift_reg[17] ),
    .A1(\deser_A.kept_shift_reg[18] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0069_));
 sky130_fd_sc_hd__mux2_1 _0727_ (.A0(\deser_A.kept_shift_reg[18] ),
    .A1(\deser_A.kept_shift_reg[19] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0070_));
 sky130_fd_sc_hd__mux2_1 _0728_ (.A0(\deser_A.kept_shift_reg[19] ),
    .A1(\deser_A.kept_shift_reg[20] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0071_));
 sky130_fd_sc_hd__mux2_1 _0729_ (.A0(\deser_A.kept_shift_reg[20] ),
    .A1(\deser_A.kept_shift_reg[21] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0072_));
 sky130_fd_sc_hd__mux2_1 _0730_ (.A0(\deser_A.kept_shift_reg[21] ),
    .A1(\deser_A.kept_shift_reg[22] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0073_));
 sky130_fd_sc_hd__mux2_1 _0731_ (.A0(\deser_A.kept_shift_reg[22] ),
    .A1(\deser_A.kept_shift_reg[23] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0074_));
 sky130_fd_sc_hd__mux2_1 _0732_ (.A0(\deser_A.kept_shift_reg[23] ),
    .A1(\deser_A.kept_shift_reg[24] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0075_));
 sky130_fd_sc_hd__mux2_1 _0733_ (.A0(\deser_A.kept_shift_reg[24] ),
    .A1(\deser_A.kept_shift_reg[25] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0076_));
 sky130_fd_sc_hd__mux2_1 _0734_ (.A0(\deser_A.kept_shift_reg[25] ),
    .A1(\deser_A.kept_shift_reg[26] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0077_));
 sky130_fd_sc_hd__mux2_1 _0735_ (.A0(\deser_A.kept_shift_reg[26] ),
    .A1(\deser_A.kept_shift_reg[27] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0078_));
 sky130_fd_sc_hd__mux2_1 _0736_ (.A0(\deser_A.kept_shift_reg[27] ),
    .A1(\deser_A.kept_shift_reg[28] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0079_));
 sky130_fd_sc_hd__mux2_1 _0737_ (.A0(\deser_A.kept_shift_reg[28] ),
    .A1(\deser_A.kept_shift_reg[29] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0080_));
 sky130_fd_sc_hd__mux2_1 _0738_ (.A0(\deser_A.kept_shift_reg[29] ),
    .A1(\deser_A.kept_shift_reg[30] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0081_));
 sky130_fd_sc_hd__mux2_1 _0739_ (.A0(\deser_A.kept_shift_reg[30] ),
    .A1(\deser_A.kept_shift_reg[31] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0082_));
 sky130_fd_sc_hd__mux2_1 _0740_ (.A0(\deser_A.kept_shift_reg[31] ),
    .A1(\deser_A.kept_shift_reg[32] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0083_));
 sky130_fd_sc_hd__mux2_1 _0741_ (.A0(\deser_A.kept_shift_reg[32] ),
    .A1(\deser_A.kept_shift_reg[33] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0084_));
 sky130_fd_sc_hd__mux2_1 _0742_ (.A0(\deser_A.kept_shift_reg[33] ),
    .A1(\deser_A.kept_shift_reg[34] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0085_));
 sky130_fd_sc_hd__mux2_1 _0743_ (.A0(\deser_A.kept_shift_reg[34] ),
    .A1(\deser_A.kept_shift_reg[35] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0086_));
 sky130_fd_sc_hd__mux2_1 _0744_ (.A0(\deser_A.kept_shift_reg[35] ),
    .A1(\deser_A.kept_shift_reg[36] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0087_));
 sky130_fd_sc_hd__mux2_1 _0745_ (.A0(\deser_A.kept_shift_reg[36] ),
    .A1(\deser_A.kept_shift_reg[37] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0088_));
 sky130_fd_sc_hd__mux2_1 _0746_ (.A0(\deser_A.kept_shift_reg[37] ),
    .A1(\deser_A.kept_shift_reg[38] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0089_));
 sky130_fd_sc_hd__mux2_1 _0747_ (.A0(\deser_A.kept_shift_reg[38] ),
    .A1(\deser_A.kept_shift_reg[39] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0090_));
 sky130_fd_sc_hd__mux2_1 _0748_ (.A0(\deser_A.kept_shift_reg[39] ),
    .A1(\deser_A.kept_shift_reg[40] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0091_));
 sky130_fd_sc_hd__mux2_1 _0749_ (.A0(\deser_A.kept_shift_reg[40] ),
    .A1(\deser_A.kept_shift_reg[41] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0092_));
 sky130_fd_sc_hd__mux2_1 _0750_ (.A0(\deser_A.kept_shift_reg[41] ),
    .A1(\deser_A.kept_shift_reg[42] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0093_));
 sky130_fd_sc_hd__mux2_1 _0751_ (.A0(\deser_A.kept_shift_reg[42] ),
    .A1(\deser_A.kept_shift_reg[43] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0094_));
 sky130_fd_sc_hd__mux2_1 _0752_ (.A0(\deser_A.kept_shift_reg[43] ),
    .A1(\deser_A.kept_shift_reg[44] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0095_));
 sky130_fd_sc_hd__mux2_1 _0753_ (.A0(\deser_A.kept_shift_reg[44] ),
    .A1(\deser_A.kept_shift_reg[45] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0096_));
 sky130_fd_sc_hd__mux2_1 _0754_ (.A0(\deser_A.kept_shift_reg[45] ),
    .A1(\deser_A.kept_shift_reg[46] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0097_));
 sky130_fd_sc_hd__mux2_1 _0755_ (.A0(\deser_A.kept_shift_reg[46] ),
    .A1(\deser_A.kept_shift_reg[47] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0098_));
 sky130_fd_sc_hd__mux2_1 _0756_ (.A0(\deser_A.kept_shift_reg[47] ),
    .A1(\deser_A.kept_shift_reg[48] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0099_));
 sky130_fd_sc_hd__mux2_1 _0757_ (.A0(\deser_A.kept_shift_reg[48] ),
    .A1(\deser_A.kept_shift_reg[49] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0100_));
 sky130_fd_sc_hd__mux2_1 _0758_ (.A0(\deser_A.kept_shift_reg[49] ),
    .A1(\deser_A.kept_shift_reg[50] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0101_));
 sky130_fd_sc_hd__mux2_1 _0759_ (.A0(\deser_A.kept_shift_reg[50] ),
    .A1(\deser_A.kept_shift_reg[51] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0102_));
 sky130_fd_sc_hd__mux2_1 _0760_ (.A0(\deser_A.kept_shift_reg[51] ),
    .A1(\deser_A.kept_shift_reg[52] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0103_));
 sky130_fd_sc_hd__mux2_1 _0761_ (.A0(\deser_A.kept_shift_reg[52] ),
    .A1(\deser_A.kept_shift_reg[53] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0104_));
 sky130_fd_sc_hd__mux2_1 _0762_ (.A0(\deser_A.kept_shift_reg[53] ),
    .A1(\deser_A.kept_shift_reg[54] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0105_));
 sky130_fd_sc_hd__mux2_1 _0763_ (.A0(\deser_A.kept_shift_reg[54] ),
    .A1(\deser_A.kept_shift_reg[55] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0106_));
 sky130_fd_sc_hd__mux2_1 _0764_ (.A0(\deser_A.kept_shift_reg[55] ),
    .A1(\deser_A.kept_shift_reg[56] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0107_));
 sky130_fd_sc_hd__mux2_1 _0765_ (.A0(\deser_A.kept_shift_reg[56] ),
    .A1(\deser_A.kept_shift_reg[57] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0108_));
 sky130_fd_sc_hd__mux2_1 _0766_ (.A0(\deser_A.kept_shift_reg[57] ),
    .A1(\deser_A.kept_shift_reg[58] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0109_));
 sky130_fd_sc_hd__mux2_1 _0767_ (.A0(\deser_A.kept_shift_reg[58] ),
    .A1(\deser_A.kept_shift_reg[59] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0110_));
 sky130_fd_sc_hd__mux2_1 _0768_ (.A0(\deser_A.kept_shift_reg[59] ),
    .A1(\deser_A.kept_shift_reg[60] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0111_));
 sky130_fd_sc_hd__mux2_1 _0769_ (.A0(\deser_A.kept_shift_reg[60] ),
    .A1(\deser_A.kept_shift_reg[61] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0112_));
 sky130_fd_sc_hd__mux2_1 _0770_ (.A0(\deser_A.kept_shift_reg[61] ),
    .A1(\deser_A.kept_shift_reg[62] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0113_));
 sky130_fd_sc_hd__mux2_1 _0771_ (.A0(\deser_A.kept_shift_reg[62] ),
    .A1(\deser_A.kept_shift_reg[63] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0114_));
 sky130_fd_sc_hd__mux2_1 _0772_ (.A0(\deser_A.kept_shift_reg[63] ),
    .A1(\deser_A.kept_shift_reg[64] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0115_));
 sky130_fd_sc_hd__mux2_1 _0773_ (.A0(\deser_A.kept_shift_reg[64] ),
    .A1(\deser_A.kept_shift_reg[65] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0116_));
 sky130_fd_sc_hd__mux2_1 _0774_ (.A0(\deser_A.kept_shift_reg[65] ),
    .A1(\deser_A.kept_shift_reg[66] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0117_));
 sky130_fd_sc_hd__mux2_1 _0775_ (.A0(\deser_A.kept_shift_reg[66] ),
    .A1(\deser_A.kept_shift_reg[67] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0118_));
 sky130_fd_sc_hd__mux2_1 _0776_ (.A0(\deser_A.kept_shift_reg[67] ),
    .A1(\deser_A.kept_shift_reg[68] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0119_));
 sky130_fd_sc_hd__mux2_1 _0777_ (.A0(\deser_A.kept_shift_reg[68] ),
    .A1(\deser_A.kept_shift_reg[69] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0120_));
 sky130_fd_sc_hd__mux2_1 _0778_ (.A0(\deser_A.kept_shift_reg[69] ),
    .A1(\deser_A.kept_shift_reg[70] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0121_));
 sky130_fd_sc_hd__mux2_1 _0779_ (.A0(\deser_A.kept_shift_reg[70] ),
    .A1(\deser_A.kept_shift_reg[71] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0122_));
 sky130_fd_sc_hd__mux2_1 _0780_ (.A0(\deser_A.kept_shift_reg[71] ),
    .A1(\deser_A.kept_shift_reg[72] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0123_));
 sky130_fd_sc_hd__mux2_1 _0781_ (.A0(\deser_A.kept_shift_reg[72] ),
    .A1(\deser_A.kept_shift_reg[73] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0124_));
 sky130_fd_sc_hd__mux2_1 _0782_ (.A0(\deser_A.kept_shift_reg[73] ),
    .A1(\deser_A.kept_shift_reg[74] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0125_));
 sky130_fd_sc_hd__mux2_1 _0783_ (.A0(\deser_A.kept_shift_reg[74] ),
    .A1(\deser_A.kept_shift_reg[75] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0126_));
 sky130_fd_sc_hd__mux2_1 _0784_ (.A0(\deser_A.kept_shift_reg[75] ),
    .A1(\deser_A.kept_shift_reg[76] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0127_));
 sky130_fd_sc_hd__mux2_1 _0785_ (.A0(\deser_A.kept_shift_reg[76] ),
    .A1(\deser_A.kept_shift_reg[77] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0128_));
 sky130_fd_sc_hd__mux2_1 _0786_ (.A0(\deser_A.kept_shift_reg[77] ),
    .A1(\deser_A.kept_shift_reg[78] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0129_));
 sky130_fd_sc_hd__mux2_1 _0787_ (.A0(\deser_A.kept_shift_reg[78] ),
    .A1(\deser_A.kept_shift_reg[79] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0130_));
 sky130_fd_sc_hd__mux2_1 _0788_ (.A0(\deser_A.kept_shift_reg[79] ),
    .A1(\deser_A.kept_shift_reg[80] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0131_));
 sky130_fd_sc_hd__mux2_1 _0789_ (.A0(\deser_A.kept_shift_reg[80] ),
    .A1(\deser_A.kept_shift_reg[81] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0132_));
 sky130_fd_sc_hd__mux2_1 _0790_ (.A0(\deser_A.kept_shift_reg[81] ),
    .A1(\deser_A.kept_shift_reg[82] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0133_));
 sky130_fd_sc_hd__mux2_1 _0791_ (.A0(\deser_A.kept_shift_reg[82] ),
    .A1(\deser_A.kept_shift_reg[83] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0134_));
 sky130_fd_sc_hd__mux2_1 _0792_ (.A0(\deser_A.kept_shift_reg[83] ),
    .A1(\deser_A.kept_shift_reg[84] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0135_));
 sky130_fd_sc_hd__mux2_1 _0793_ (.A0(\deser_A.kept_shift_reg[84] ),
    .A1(\deser_A.kept_shift_reg[85] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0136_));
 sky130_fd_sc_hd__mux2_1 _0794_ (.A0(\deser_A.kept_shift_reg[85] ),
    .A1(\deser_A.kept_shift_reg[86] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0137_));
 sky130_fd_sc_hd__mux2_1 _0795_ (.A0(\deser_A.kept_shift_reg[86] ),
    .A1(\deser_A.kept_shift_reg[87] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0138_));
 sky130_fd_sc_hd__mux2_1 _0796_ (.A0(\deser_A.kept_shift_reg[87] ),
    .A1(\deser_A.kept_shift_reg[88] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0139_));
 sky130_fd_sc_hd__mux2_1 _0797_ (.A0(\deser_A.kept_shift_reg[88] ),
    .A1(\deser_A.kept_shift_reg[89] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0140_));
 sky130_fd_sc_hd__mux2_1 _0798_ (.A0(\deser_A.kept_shift_reg[89] ),
    .A1(\deser_A.kept_shift_reg[90] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0141_));
 sky130_fd_sc_hd__mux2_1 _0799_ (.A0(\deser_A.kept_shift_reg[90] ),
    .A1(\deser_A.kept_shift_reg[91] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0142_));
 sky130_fd_sc_hd__mux2_1 _0800_ (.A0(\deser_A.kept_shift_reg[91] ),
    .A1(\deser_A.kept_shift_reg[92] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0143_));
 sky130_fd_sc_hd__mux2_1 _0801_ (.A0(\deser_A.kept_shift_reg[92] ),
    .A1(\deser_A.kept_shift_reg[93] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0144_));
 sky130_fd_sc_hd__mux2_1 _0802_ (.A0(\deser_A.kept_shift_reg[93] ),
    .A1(\deser_A.kept_shift_reg[94] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0145_));
 sky130_fd_sc_hd__mux2_1 _0803_ (.A0(\deser_A.kept_shift_reg[94] ),
    .A1(\deser_A.kept_shift_reg[95] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0146_));
 sky130_fd_sc_hd__mux2_1 _0804_ (.A0(\deser_A.kept_shift_reg[95] ),
    .A1(\deser_A.kept_shift_reg[96] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0147_));
 sky130_fd_sc_hd__mux2_1 _0805_ (.A0(\deser_A.kept_shift_reg[96] ),
    .A1(\deser_A.kept_shift_reg[97] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0148_));
 sky130_fd_sc_hd__mux2_1 _0806_ (.A0(\deser_A.kept_shift_reg[97] ),
    .A1(\deser_A.kept_shift_reg[98] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0149_));
 sky130_fd_sc_hd__mux2_1 _0807_ (.A0(\deser_A.kept_shift_reg[98] ),
    .A1(\deser_A.kept_shift_reg[99] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0150_));
 sky130_fd_sc_hd__mux2_1 _0808_ (.A0(\deser_A.kept_shift_reg[99] ),
    .A1(\deser_A.kept_shift_reg[100] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0151_));
 sky130_fd_sc_hd__mux2_1 _0809_ (.A0(\deser_A.kept_shift_reg[100] ),
    .A1(\deser_A.kept_shift_reg[101] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0152_));
 sky130_fd_sc_hd__mux2_1 _0810_ (.A0(\deser_A.kept_shift_reg[101] ),
    .A1(\deser_A.kept_shift_reg[102] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0153_));
 sky130_fd_sc_hd__mux2_1 _0811_ (.A0(\deser_A.kept_shift_reg[102] ),
    .A1(\deser_A.kept_shift_reg[103] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0154_));
 sky130_fd_sc_hd__mux2_1 _0812_ (.A0(\deser_A.kept_shift_reg[103] ),
    .A1(\deser_A.kept_shift_reg[104] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0155_));
 sky130_fd_sc_hd__mux2_1 _0813_ (.A0(\deser_A.kept_shift_reg[104] ),
    .A1(\deser_A.kept_shift_reg[105] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0156_));
 sky130_fd_sc_hd__mux2_1 _0814_ (.A0(\deser_A.kept_shift_reg[105] ),
    .A1(\deser_A.kept_shift_reg[106] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0157_));
 sky130_fd_sc_hd__mux2_1 _0815_ (.A0(\deser_A.kept_shift_reg[106] ),
    .A1(\deser_A.kept_shift_reg[107] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0158_));
 sky130_fd_sc_hd__mux2_1 _0816_ (.A0(\deser_A.kept_shift_reg[107] ),
    .A1(\deser_A.kept_shift_reg[108] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0159_));
 sky130_fd_sc_hd__mux2_1 _0817_ (.A0(\deser_A.kept_shift_reg[108] ),
    .A1(\deser_A.kept_shift_reg[109] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0160_));
 sky130_fd_sc_hd__mux2_1 _0818_ (.A0(\deser_A.kept_shift_reg[109] ),
    .A1(\deser_A.kept_shift_reg[110] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0161_));
 sky130_fd_sc_hd__mux2_1 _0819_ (.A0(\deser_A.kept_shift_reg[110] ),
    .A1(\deser_A.kept_shift_reg[111] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0162_));
 sky130_fd_sc_hd__mux2_1 _0820_ (.A0(\deser_A.kept_shift_reg[111] ),
    .A1(\deser_A.kept_shift_reg[112] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0163_));
 sky130_fd_sc_hd__mux2_1 _0821_ (.A0(\deser_A.kept_shift_reg[112] ),
    .A1(\deser_A.kept_shift_reg[113] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0164_));
 sky130_fd_sc_hd__mux2_1 _0822_ (.A0(\deser_A.kept_shift_reg[113] ),
    .A1(\deser_A.kept_shift_reg[114] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0165_));
 sky130_fd_sc_hd__mux2_1 _0823_ (.A0(\deser_A.kept_shift_reg[114] ),
    .A1(\deser_A.kept_shift_reg[115] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0166_));
 sky130_fd_sc_hd__mux2_1 _0824_ (.A0(\deser_A.kept_shift_reg[115] ),
    .A1(\deser_A.kept_shift_reg[116] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0167_));
 sky130_fd_sc_hd__mux2_1 _0825_ (.A0(\deser_A.kept_shift_reg[116] ),
    .A1(\deser_A.kept_shift_reg[117] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0168_));
 sky130_fd_sc_hd__mux2_1 _0826_ (.A0(\deser_A.kept_shift_reg[117] ),
    .A1(\deser_A.kept_shift_reg[118] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0169_));
 sky130_fd_sc_hd__mux2_1 _0827_ (.A0(\deser_A.kept_shift_reg[118] ),
    .A1(\deser_A.kept_shift_reg[119] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0170_));
 sky130_fd_sc_hd__mux2_1 _0828_ (.A0(\deser_A.kept_shift_reg[119] ),
    .A1(\deser_A.kept_shift_reg[120] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0171_));
 sky130_fd_sc_hd__mux2_1 _0829_ (.A0(\deser_A.kept_shift_reg[120] ),
    .A1(\deser_A.kept_shift_reg[121] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0172_));
 sky130_fd_sc_hd__mux2_1 _0830_ (.A0(\deser_A.kept_shift_reg[121] ),
    .A1(\deser_A.kept_shift_reg[122] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0173_));
 sky130_fd_sc_hd__mux2_1 _0831_ (.A0(\deser_A.kept_shift_reg[122] ),
    .A1(\deser_A.kept_shift_reg[123] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0174_));
 sky130_fd_sc_hd__mux2_1 _0832_ (.A0(\deser_A.kept_shift_reg[123] ),
    .A1(\deser_A.kept_shift_reg[124] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0175_));
 sky130_fd_sc_hd__mux2_1 _0833_ (.A0(\deser_A.kept_shift_reg[124] ),
    .A1(\deser_A.kept_shift_reg[125] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0176_));
 sky130_fd_sc_hd__mux2_1 _0834_ (.A0(\deser_A.kept_shift_reg[125] ),
    .A1(\deser_A.kept_shift_reg[126] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0177_));
 sky130_fd_sc_hd__mux2_1 _0835_ (.A0(\deser_A.kept_shift_reg[126] ),
    .A1(\deser_A.kept_shift_reg[127] ),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0178_));
 sky130_fd_sc_hd__mux2_1 _0836_ (.A0(\deser_A.kept_shift_reg[127] ),
    .A1(A_in_serial_data),
    .S(\deser_A.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0179_));
 sky130_fd_sc_hd__mux2_1 _0837_ (.A0(\deser_B.receiving ),
    .A1(_0425_),
    .S(\deser_B.bit_idx[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0180_));
 sky130_fd_sc_hd__and2b_2 _0838_ (.A_N(\deser_B.receiving ),
    .B(B_in_frame_sync),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0347_));
 sky130_fd_sc_hd__nand2b_2 _0839_ (.A_N(\deser_B.receiving ),
    .B(B_in_frame_sync),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0348_));
 sky130_fd_sc_hd__and3_2 _0840_ (.A(\deser_B.receiving ),
    .B(\deser_B.bit_idx[1] ),
    .C(\deser_B.bit_idx[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0349_));
 sky130_fd_sc_hd__nor2_2 _0841_ (.A(_0347_),
    .B(_0349_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0350_));
 sky130_fd_sc_hd__a21o_2 _0842_ (.A1(\deser_B.bit_idx[0] ),
    .A2(_0426_),
    .B1(\deser_B.bit_idx[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0351_));
 sky130_fd_sc_hd__and2_2 _0843_ (.A(_0350_),
    .B(_0351_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0181_));
 sky130_fd_sc_hd__mux2_1 _0844_ (.A0(_0349_),
    .A1(_0350_),
    .S(\deser_B.bit_idx[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0182_));
 sky130_fd_sc_hd__a41o_2 _0845_ (.A1(\deser_B.bit_idx[1] ),
    .A2(\deser_B.bit_idx[0] ),
    .A3(\deser_B.bit_idx[2] ),
    .A4(_0426_),
    .B1(\deser_B.bit_idx[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0352_));
 sky130_fd_sc_hd__nand2_2 _0846_ (.A(\deser_B.receiving ),
    .B(_0421_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0353_));
 sky130_fd_sc_hd__and3_2 _0847_ (.A(_0348_),
    .B(_0352_),
    .C(_0353_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0183_));
 sky130_fd_sc_hd__nand2_2 _0848_ (.A(\deser_B.bit_idx[4] ),
    .B(_0348_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0354_));
 sky130_fd_sc_hd__mux2_1 _0849_ (.A0(\deser_B.bit_idx[4] ),
    .A1(_0354_),
    .S(_0353_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0355_));
 sky130_fd_sc_hd__inv_2 _0850_ (.A(_0355_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0184_));
 sky130_fd_sc_hd__a21oi_2 _0851_ (.A1(_0422_),
    .A2(_0426_),
    .B1(\deser_B.bit_idx[5] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0356_));
 sky130_fd_sc_hd__a31o_2 _0852_ (.A1(\deser_B.bit_idx[5] ),
    .A2(_0422_),
    .A3(_0426_),
    .B1(_0347_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0357_));
 sky130_fd_sc_hd__nor2_2 _0853_ (.A(_0356_),
    .B(_0357_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0185_));
 sky130_fd_sc_hd__a31o_2 _0854_ (.A1(\deser_B.bit_idx[5] ),
    .A2(_0422_),
    .A3(_0426_),
    .B1(\deser_B.bit_idx[6] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0358_));
 sky130_fd_sc_hd__and3_2 _0855_ (.A(_0423_),
    .B(_0348_),
    .C(_0358_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0186_));
 sky130_fd_sc_hd__and3_2 _0856_ (.A(\deser_B.bit_idx[7] ),
    .B(_0423_),
    .C(_0348_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0359_));
 sky130_fd_sc_hd__or2_2 _0857_ (.A(_0424_),
    .B(_0359_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0187_));
 sky130_fd_sc_hd__mux2_1 _0858_ (.A0(\deser_B.receiving ),
    .A1(_0425_),
    .S(\deser_B.kept_bit_idx[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0188_));
 sky130_fd_sc_hd__a21oi_2 _0859_ (.A1(\deser_B.kept_bit_idx[0] ),
    .A2(_0426_),
    .B1(\deser_B.kept_bit_idx[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0360_));
 sky130_fd_sc_hd__and3_2 _0860_ (.A(\deser_B.receiving ),
    .B(\deser_B.kept_bit_idx[0] ),
    .C(\deser_B.kept_bit_idx[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0361_));
 sky130_fd_sc_hd__nor3_2 _0861_ (.A(_0347_),
    .B(_0360_),
    .C(_0361_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0189_));
 sky130_fd_sc_hd__and3_2 _0862_ (.A(\deser_B.kept_bit_idx[0] ),
    .B(\deser_B.kept_bit_idx[1] ),
    .C(\deser_B.kept_bit_idx[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0362_));
 sky130_fd_sc_hd__and4_2 _0863_ (.A(\deser_B.receiving ),
    .B(\deser_B.kept_bit_idx[0] ),
    .C(\deser_B.kept_bit_idx[1] ),
    .D(\deser_B.kept_bit_idx[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0363_));
 sky130_fd_sc_hd__a21oi_2 _0864_ (.A1(\deser_B.kept_bit_idx[2] ),
    .A2(_0348_),
    .B1(_0361_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0364_));
 sky130_fd_sc_hd__nor2_2 _0865_ (.A(_0363_),
    .B(_0364_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0190_));
 sky130_fd_sc_hd__a21oi_2 _0866_ (.A1(\deser_B.kept_bit_idx[3] ),
    .A2(_0348_),
    .B1(_0363_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0365_));
 sky130_fd_sc_hd__a21oi_2 _0867_ (.A1(\deser_B.kept_bit_idx[3] ),
    .A2(_0363_),
    .B1(_0365_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0191_));
 sky130_fd_sc_hd__a22oi_2 _0868_ (.A1(\deser_B.kept_bit_idx[4] ),
    .A2(_0348_),
    .B1(_0363_),
    .B2(\deser_B.kept_bit_idx[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0366_));
 sky130_fd_sc_hd__a31o_2 _0869_ (.A1(\deser_B.kept_bit_idx[3] ),
    .A2(\deser_B.kept_bit_idx[4] ),
    .A3(_0363_),
    .B1(_0366_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0367_));
 sky130_fd_sc_hd__inv_2 _0870_ (.A(_0367_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0192_));
 sky130_fd_sc_hd__and4_2 _0871_ (.A(\deser_B.kept_bit_idx[3] ),
    .B(\deser_B.kept_bit_idx[4] ),
    .C(\deser_B.kept_bit_idx[5] ),
    .D(_0363_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0368_));
 sky130_fd_sc_hd__inv_2 _0872_ (.A(_0368_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0369_));
 sky130_fd_sc_hd__a41o_2 _0873_ (.A1(\deser_B.kept_bit_idx[3] ),
    .A2(\deser_B.kept_bit_idx[4] ),
    .A3(_0426_),
    .A4(_0362_),
    .B1(\deser_B.kept_bit_idx[5] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0370_));
 sky130_fd_sc_hd__and3_2 _0874_ (.A(_0348_),
    .B(_0369_),
    .C(_0370_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0193_));
 sky130_fd_sc_hd__nand2_2 _0875_ (.A(\deser_B.kept_bit_idx[6] ),
    .B(_0368_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0371_));
 sky130_fd_sc_hd__a21o_2 _0876_ (.A1(\deser_B.kept_bit_idx[6] ),
    .A2(_0348_),
    .B1(_0368_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0372_));
 sky130_fd_sc_hd__and2_2 _0877_ (.A(_0371_),
    .B(_0372_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0194_));
 sky130_fd_sc_hd__nand2_2 _0878_ (.A(\deser_B.kept_bit_idx[7] ),
    .B(_0348_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0373_));
 sky130_fd_sc_hd__mux2_1 _0879_ (.A0(\deser_B.kept_bit_idx[7] ),
    .A1(_0373_),
    .S(_0371_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0374_));
 sky130_fd_sc_hd__inv_2 _0880_ (.A(_0374_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0195_));
 sky130_fd_sc_hd__o21ai_2 _0881_ (.A1(_0403_),
    .A2(_0418_),
    .B1(_0501_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0196_));
 sky130_fd_sc_hd__mux2_1 _0882_ (.A0(\deser_B.kept_shift_reg[1] ),
    .A1(\deser_B.kept_shift_reg[2] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0197_));
 sky130_fd_sc_hd__mux2_1 _0883_ (.A0(\deser_B.kept_shift_reg[2] ),
    .A1(\deser_B.kept_shift_reg[3] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0198_));
 sky130_fd_sc_hd__mux2_1 _0884_ (.A0(\deser_B.kept_shift_reg[3] ),
    .A1(\deser_B.kept_shift_reg[4] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0199_));
 sky130_fd_sc_hd__mux2_1 _0885_ (.A0(\deser_B.kept_shift_reg[4] ),
    .A1(\deser_B.kept_shift_reg[5] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0200_));
 sky130_fd_sc_hd__mux2_1 _0886_ (.A0(\deser_B.kept_shift_reg[5] ),
    .A1(\deser_B.kept_shift_reg[6] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0201_));
 sky130_fd_sc_hd__mux2_1 _0887_ (.A0(\deser_B.kept_shift_reg[6] ),
    .A1(\deser_B.kept_shift_reg[7] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0202_));
 sky130_fd_sc_hd__mux2_1 _0888_ (.A0(\deser_B.kept_shift_reg[7] ),
    .A1(\deser_B.kept_shift_reg[8] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0203_));
 sky130_fd_sc_hd__mux2_1 _0889_ (.A0(\deser_B.kept_shift_reg[8] ),
    .A1(\deser_B.kept_shift_reg[9] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0204_));
 sky130_fd_sc_hd__mux2_1 _0890_ (.A0(\deser_B.kept_shift_reg[9] ),
    .A1(\deser_B.kept_shift_reg[10] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0205_));
 sky130_fd_sc_hd__mux2_1 _0891_ (.A0(\deser_B.kept_shift_reg[10] ),
    .A1(\deser_B.kept_shift_reg[11] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0206_));
 sky130_fd_sc_hd__mux2_1 _0892_ (.A0(\deser_B.kept_shift_reg[11] ),
    .A1(\deser_B.kept_shift_reg[12] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0207_));
 sky130_fd_sc_hd__mux2_1 _0893_ (.A0(\deser_B.kept_shift_reg[12] ),
    .A1(\deser_B.kept_shift_reg[13] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0208_));
 sky130_fd_sc_hd__mux2_1 _0894_ (.A0(\deser_B.kept_shift_reg[13] ),
    .A1(\deser_B.kept_shift_reg[14] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0209_));
 sky130_fd_sc_hd__mux2_1 _0895_ (.A0(\deser_B.kept_shift_reg[14] ),
    .A1(\deser_B.kept_shift_reg[15] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0210_));
 sky130_fd_sc_hd__mux2_1 _0896_ (.A0(\deser_B.kept_shift_reg[15] ),
    .A1(\deser_B.kept_shift_reg[16] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0211_));
 sky130_fd_sc_hd__mux2_1 _0897_ (.A0(\deser_B.kept_shift_reg[16] ),
    .A1(\deser_B.kept_shift_reg[17] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0212_));
 sky130_fd_sc_hd__mux2_1 _0898_ (.A0(\deser_B.kept_shift_reg[17] ),
    .A1(\deser_B.kept_shift_reg[18] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0213_));
 sky130_fd_sc_hd__mux2_1 _0899_ (.A0(\deser_B.kept_shift_reg[18] ),
    .A1(\deser_B.kept_shift_reg[19] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0214_));
 sky130_fd_sc_hd__mux2_1 _0900_ (.A0(\deser_B.kept_shift_reg[19] ),
    .A1(\deser_B.kept_shift_reg[20] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0215_));
 sky130_fd_sc_hd__mux2_1 _0901_ (.A0(\deser_B.kept_shift_reg[20] ),
    .A1(\deser_B.kept_shift_reg[21] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0216_));
 sky130_fd_sc_hd__mux2_1 _0902_ (.A0(\deser_B.kept_shift_reg[21] ),
    .A1(\deser_B.kept_shift_reg[22] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0217_));
 sky130_fd_sc_hd__mux2_1 _0903_ (.A0(\deser_B.kept_shift_reg[22] ),
    .A1(\deser_B.kept_shift_reg[23] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0218_));
 sky130_fd_sc_hd__mux2_1 _0904_ (.A0(\deser_B.kept_shift_reg[23] ),
    .A1(\deser_B.kept_shift_reg[24] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0219_));
 sky130_fd_sc_hd__mux2_1 _0905_ (.A0(\deser_B.kept_shift_reg[24] ),
    .A1(\deser_B.kept_shift_reg[25] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0220_));
 sky130_fd_sc_hd__mux2_1 _0906_ (.A0(\deser_B.kept_shift_reg[25] ),
    .A1(\deser_B.kept_shift_reg[26] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0221_));
 sky130_fd_sc_hd__mux2_1 _0907_ (.A0(\deser_B.kept_shift_reg[26] ),
    .A1(\deser_B.kept_shift_reg[27] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0222_));
 sky130_fd_sc_hd__mux2_1 _0908_ (.A0(\deser_B.kept_shift_reg[27] ),
    .A1(\deser_B.kept_shift_reg[28] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0223_));
 sky130_fd_sc_hd__mux2_1 _0909_ (.A0(\deser_B.kept_shift_reg[28] ),
    .A1(\deser_B.kept_shift_reg[29] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0224_));
 sky130_fd_sc_hd__mux2_1 _0910_ (.A0(\deser_B.kept_shift_reg[29] ),
    .A1(\deser_B.kept_shift_reg[30] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0225_));
 sky130_fd_sc_hd__mux2_1 _0911_ (.A0(\deser_B.kept_shift_reg[30] ),
    .A1(\deser_B.kept_shift_reg[31] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0226_));
 sky130_fd_sc_hd__mux2_1 _0912_ (.A0(\deser_B.kept_shift_reg[31] ),
    .A1(\deser_B.kept_shift_reg[32] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0227_));
 sky130_fd_sc_hd__mux2_1 _0913_ (.A0(\deser_B.kept_shift_reg[32] ),
    .A1(\deser_B.kept_shift_reg[33] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0228_));
 sky130_fd_sc_hd__mux2_1 _0914_ (.A0(\deser_B.kept_shift_reg[33] ),
    .A1(\deser_B.kept_shift_reg[34] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0229_));
 sky130_fd_sc_hd__mux2_1 _0915_ (.A0(\deser_B.kept_shift_reg[34] ),
    .A1(\deser_B.kept_shift_reg[35] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0230_));
 sky130_fd_sc_hd__mux2_1 _0916_ (.A0(\deser_B.kept_shift_reg[35] ),
    .A1(\deser_B.kept_shift_reg[36] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0231_));
 sky130_fd_sc_hd__mux2_1 _0917_ (.A0(\deser_B.kept_shift_reg[36] ),
    .A1(\deser_B.kept_shift_reg[37] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0232_));
 sky130_fd_sc_hd__mux2_1 _0918_ (.A0(\deser_B.kept_shift_reg[37] ),
    .A1(\deser_B.kept_shift_reg[38] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0233_));
 sky130_fd_sc_hd__mux2_1 _0919_ (.A0(\deser_B.kept_shift_reg[38] ),
    .A1(\deser_B.kept_shift_reg[39] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0234_));
 sky130_fd_sc_hd__mux2_1 _0920_ (.A0(\deser_B.kept_shift_reg[39] ),
    .A1(\deser_B.kept_shift_reg[40] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0235_));
 sky130_fd_sc_hd__mux2_1 _0921_ (.A0(\deser_B.kept_shift_reg[40] ),
    .A1(\deser_B.kept_shift_reg[41] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0236_));
 sky130_fd_sc_hd__mux2_1 _0922_ (.A0(\deser_B.kept_shift_reg[41] ),
    .A1(\deser_B.kept_shift_reg[42] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0237_));
 sky130_fd_sc_hd__mux2_1 _0923_ (.A0(\deser_B.kept_shift_reg[42] ),
    .A1(\deser_B.kept_shift_reg[43] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0238_));
 sky130_fd_sc_hd__mux2_1 _0924_ (.A0(\deser_B.kept_shift_reg[43] ),
    .A1(\deser_B.kept_shift_reg[44] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0239_));
 sky130_fd_sc_hd__mux2_1 _0925_ (.A0(\deser_B.kept_shift_reg[44] ),
    .A1(\deser_B.kept_shift_reg[45] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0240_));
 sky130_fd_sc_hd__mux2_1 _0926_ (.A0(\deser_B.kept_shift_reg[45] ),
    .A1(\deser_B.kept_shift_reg[46] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0241_));
 sky130_fd_sc_hd__mux2_1 _0927_ (.A0(\deser_B.kept_shift_reg[46] ),
    .A1(\deser_B.kept_shift_reg[47] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0242_));
 sky130_fd_sc_hd__mux2_1 _0928_ (.A0(\deser_B.kept_shift_reg[47] ),
    .A1(\deser_B.kept_shift_reg[48] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0243_));
 sky130_fd_sc_hd__mux2_1 _0929_ (.A0(\deser_B.kept_shift_reg[48] ),
    .A1(\deser_B.kept_shift_reg[49] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0244_));
 sky130_fd_sc_hd__mux2_1 _0930_ (.A0(\deser_B.kept_shift_reg[49] ),
    .A1(\deser_B.kept_shift_reg[50] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0245_));
 sky130_fd_sc_hd__mux2_1 _0931_ (.A0(\deser_B.kept_shift_reg[50] ),
    .A1(\deser_B.kept_shift_reg[51] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0246_));
 sky130_fd_sc_hd__mux2_1 _0932_ (.A0(\deser_B.kept_shift_reg[51] ),
    .A1(\deser_B.kept_shift_reg[52] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0247_));
 sky130_fd_sc_hd__mux2_1 _0933_ (.A0(\deser_B.kept_shift_reg[52] ),
    .A1(\deser_B.kept_shift_reg[53] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0248_));
 sky130_fd_sc_hd__mux2_1 _0934_ (.A0(\deser_B.kept_shift_reg[53] ),
    .A1(\deser_B.kept_shift_reg[54] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0249_));
 sky130_fd_sc_hd__mux2_1 _0935_ (.A0(\deser_B.kept_shift_reg[54] ),
    .A1(\deser_B.kept_shift_reg[55] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0250_));
 sky130_fd_sc_hd__mux2_1 _0936_ (.A0(\deser_B.kept_shift_reg[55] ),
    .A1(\deser_B.kept_shift_reg[56] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0251_));
 sky130_fd_sc_hd__mux2_1 _0937_ (.A0(\deser_B.kept_shift_reg[56] ),
    .A1(\deser_B.kept_shift_reg[57] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0252_));
 sky130_fd_sc_hd__mux2_1 _0938_ (.A0(\deser_B.kept_shift_reg[57] ),
    .A1(\deser_B.kept_shift_reg[58] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0253_));
 sky130_fd_sc_hd__mux2_1 _0939_ (.A0(\deser_B.kept_shift_reg[58] ),
    .A1(\deser_B.kept_shift_reg[59] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0254_));
 sky130_fd_sc_hd__mux2_1 _0940_ (.A0(\deser_B.kept_shift_reg[59] ),
    .A1(\deser_B.kept_shift_reg[60] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0255_));
 sky130_fd_sc_hd__mux2_1 _0941_ (.A0(\deser_B.kept_shift_reg[60] ),
    .A1(\deser_B.kept_shift_reg[61] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0256_));
 sky130_fd_sc_hd__mux2_1 _0942_ (.A0(\deser_B.kept_shift_reg[61] ),
    .A1(\deser_B.kept_shift_reg[62] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0257_));
 sky130_fd_sc_hd__mux2_1 _0943_ (.A0(\deser_B.kept_shift_reg[62] ),
    .A1(\deser_B.kept_shift_reg[63] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0258_));
 sky130_fd_sc_hd__mux2_1 _0944_ (.A0(\deser_B.kept_shift_reg[63] ),
    .A1(\deser_B.kept_shift_reg[64] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0259_));
 sky130_fd_sc_hd__mux2_1 _0945_ (.A0(\deser_B.kept_shift_reg[64] ),
    .A1(\deser_B.kept_shift_reg[65] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0260_));
 sky130_fd_sc_hd__mux2_1 _0946_ (.A0(\deser_B.kept_shift_reg[65] ),
    .A1(\deser_B.kept_shift_reg[66] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0261_));
 sky130_fd_sc_hd__mux2_1 _0947_ (.A0(\deser_B.kept_shift_reg[66] ),
    .A1(\deser_B.kept_shift_reg[67] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0262_));
 sky130_fd_sc_hd__mux2_1 _0948_ (.A0(\deser_B.kept_shift_reg[67] ),
    .A1(\deser_B.kept_shift_reg[68] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0263_));
 sky130_fd_sc_hd__mux2_1 _0949_ (.A0(\deser_B.kept_shift_reg[68] ),
    .A1(\deser_B.kept_shift_reg[69] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0264_));
 sky130_fd_sc_hd__mux2_1 _0950_ (.A0(\deser_B.kept_shift_reg[69] ),
    .A1(\deser_B.kept_shift_reg[70] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0265_));
 sky130_fd_sc_hd__mux2_1 _0951_ (.A0(\deser_B.kept_shift_reg[70] ),
    .A1(\deser_B.kept_shift_reg[71] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0266_));
 sky130_fd_sc_hd__mux2_1 _0952_ (.A0(\deser_B.kept_shift_reg[71] ),
    .A1(\deser_B.kept_shift_reg[72] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0267_));
 sky130_fd_sc_hd__mux2_1 _0953_ (.A0(\deser_B.kept_shift_reg[72] ),
    .A1(\deser_B.kept_shift_reg[73] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0268_));
 sky130_fd_sc_hd__mux2_1 _0954_ (.A0(\deser_B.kept_shift_reg[73] ),
    .A1(\deser_B.kept_shift_reg[74] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0269_));
 sky130_fd_sc_hd__mux2_1 _0955_ (.A0(\deser_B.kept_shift_reg[74] ),
    .A1(\deser_B.kept_shift_reg[75] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0270_));
 sky130_fd_sc_hd__mux2_1 _0956_ (.A0(\deser_B.kept_shift_reg[75] ),
    .A1(\deser_B.kept_shift_reg[76] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0271_));
 sky130_fd_sc_hd__mux2_1 _0957_ (.A0(\deser_B.kept_shift_reg[76] ),
    .A1(\deser_B.kept_shift_reg[77] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0272_));
 sky130_fd_sc_hd__mux2_1 _0958_ (.A0(\deser_B.kept_shift_reg[77] ),
    .A1(\deser_B.kept_shift_reg[78] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0273_));
 sky130_fd_sc_hd__mux2_1 _0959_ (.A0(\deser_B.kept_shift_reg[78] ),
    .A1(\deser_B.kept_shift_reg[79] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0274_));
 sky130_fd_sc_hd__mux2_1 _0960_ (.A0(\deser_B.kept_shift_reg[79] ),
    .A1(\deser_B.kept_shift_reg[80] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0275_));
 sky130_fd_sc_hd__mux2_1 _0961_ (.A0(\deser_B.kept_shift_reg[80] ),
    .A1(\deser_B.kept_shift_reg[81] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0276_));
 sky130_fd_sc_hd__mux2_1 _0962_ (.A0(\deser_B.kept_shift_reg[81] ),
    .A1(\deser_B.kept_shift_reg[82] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0277_));
 sky130_fd_sc_hd__mux2_1 _0963_ (.A0(\deser_B.kept_shift_reg[82] ),
    .A1(\deser_B.kept_shift_reg[83] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0278_));
 sky130_fd_sc_hd__mux2_1 _0964_ (.A0(\deser_B.kept_shift_reg[83] ),
    .A1(\deser_B.kept_shift_reg[84] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0279_));
 sky130_fd_sc_hd__mux2_1 _0965_ (.A0(\deser_B.kept_shift_reg[84] ),
    .A1(\deser_B.kept_shift_reg[85] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0280_));
 sky130_fd_sc_hd__mux2_1 _0966_ (.A0(\deser_B.kept_shift_reg[85] ),
    .A1(\deser_B.kept_shift_reg[86] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0281_));
 sky130_fd_sc_hd__mux2_1 _0967_ (.A0(\deser_B.kept_shift_reg[86] ),
    .A1(\deser_B.kept_shift_reg[87] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0282_));
 sky130_fd_sc_hd__mux2_1 _0968_ (.A0(\deser_B.kept_shift_reg[87] ),
    .A1(\deser_B.kept_shift_reg[88] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0283_));
 sky130_fd_sc_hd__mux2_1 _0969_ (.A0(\deser_B.kept_shift_reg[88] ),
    .A1(\deser_B.kept_shift_reg[89] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0284_));
 sky130_fd_sc_hd__mux2_1 _0970_ (.A0(\deser_B.kept_shift_reg[89] ),
    .A1(\deser_B.kept_shift_reg[90] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0285_));
 sky130_fd_sc_hd__mux2_1 _0971_ (.A0(\deser_B.kept_shift_reg[90] ),
    .A1(\deser_B.kept_shift_reg[91] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0286_));
 sky130_fd_sc_hd__mux2_1 _0972_ (.A0(\deser_B.kept_shift_reg[91] ),
    .A1(\deser_B.kept_shift_reg[92] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0287_));
 sky130_fd_sc_hd__mux2_1 _0973_ (.A0(\deser_B.kept_shift_reg[92] ),
    .A1(\deser_B.kept_shift_reg[93] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0288_));
 sky130_fd_sc_hd__mux2_1 _0974_ (.A0(\deser_B.kept_shift_reg[93] ),
    .A1(\deser_B.kept_shift_reg[94] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0289_));
 sky130_fd_sc_hd__mux2_1 _0975_ (.A0(\deser_B.kept_shift_reg[94] ),
    .A1(\deser_B.kept_shift_reg[95] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0290_));
 sky130_fd_sc_hd__mux2_1 _0976_ (.A0(\deser_B.kept_shift_reg[95] ),
    .A1(\deser_B.kept_shift_reg[96] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0291_));
 sky130_fd_sc_hd__mux2_1 _0977_ (.A0(\deser_B.kept_shift_reg[96] ),
    .A1(\deser_B.kept_shift_reg[97] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0292_));
 sky130_fd_sc_hd__mux2_1 _0978_ (.A0(\deser_B.kept_shift_reg[97] ),
    .A1(\deser_B.kept_shift_reg[98] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0293_));
 sky130_fd_sc_hd__mux2_1 _0979_ (.A0(\deser_B.kept_shift_reg[98] ),
    .A1(\deser_B.kept_shift_reg[99] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0294_));
 sky130_fd_sc_hd__mux2_1 _0980_ (.A0(\deser_B.kept_shift_reg[99] ),
    .A1(\deser_B.kept_shift_reg[100] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0295_));
 sky130_fd_sc_hd__mux2_1 _0981_ (.A0(\deser_B.kept_shift_reg[100] ),
    .A1(\deser_B.kept_shift_reg[101] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0296_));
 sky130_fd_sc_hd__mux2_1 _0982_ (.A0(\deser_B.kept_shift_reg[101] ),
    .A1(\deser_B.kept_shift_reg[102] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0297_));
 sky130_fd_sc_hd__mux2_1 _0983_ (.A0(\deser_B.kept_shift_reg[102] ),
    .A1(\deser_B.kept_shift_reg[103] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0298_));
 sky130_fd_sc_hd__mux2_1 _0984_ (.A0(\deser_B.kept_shift_reg[103] ),
    .A1(\deser_B.kept_shift_reg[104] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0299_));
 sky130_fd_sc_hd__mux2_1 _0985_ (.A0(\deser_B.kept_shift_reg[104] ),
    .A1(\deser_B.kept_shift_reg[105] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0300_));
 sky130_fd_sc_hd__mux2_1 _0986_ (.A0(\deser_B.kept_shift_reg[105] ),
    .A1(\deser_B.kept_shift_reg[106] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0301_));
 sky130_fd_sc_hd__mux2_1 _0987_ (.A0(\deser_B.kept_shift_reg[106] ),
    .A1(\deser_B.kept_shift_reg[107] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0302_));
 sky130_fd_sc_hd__mux2_1 _0988_ (.A0(\deser_B.kept_shift_reg[107] ),
    .A1(\deser_B.kept_shift_reg[108] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0303_));
 sky130_fd_sc_hd__mux2_1 _0989_ (.A0(\deser_B.kept_shift_reg[108] ),
    .A1(\deser_B.kept_shift_reg[109] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0304_));
 sky130_fd_sc_hd__mux2_1 _0990_ (.A0(\deser_B.kept_shift_reg[109] ),
    .A1(\deser_B.kept_shift_reg[110] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0305_));
 sky130_fd_sc_hd__mux2_1 _0991_ (.A0(\deser_B.kept_shift_reg[110] ),
    .A1(\deser_B.kept_shift_reg[111] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0306_));
 sky130_fd_sc_hd__mux2_1 _0992_ (.A0(\deser_B.kept_shift_reg[111] ),
    .A1(\deser_B.kept_shift_reg[112] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0307_));
 sky130_fd_sc_hd__mux2_1 _0993_ (.A0(\deser_B.kept_shift_reg[112] ),
    .A1(\deser_B.kept_shift_reg[113] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0308_));
 sky130_fd_sc_hd__mux2_1 _0994_ (.A0(\deser_B.kept_shift_reg[113] ),
    .A1(\deser_B.kept_shift_reg[114] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0309_));
 sky130_fd_sc_hd__mux2_1 _0995_ (.A0(\deser_B.kept_shift_reg[114] ),
    .A1(\deser_B.kept_shift_reg[115] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0310_));
 sky130_fd_sc_hd__mux2_1 _0996_ (.A0(\deser_B.kept_shift_reg[115] ),
    .A1(\deser_B.kept_shift_reg[116] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0311_));
 sky130_fd_sc_hd__mux2_1 _0997_ (.A0(\deser_B.kept_shift_reg[116] ),
    .A1(\deser_B.kept_shift_reg[117] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0312_));
 sky130_fd_sc_hd__mux2_1 _0998_ (.A0(\deser_B.kept_shift_reg[117] ),
    .A1(\deser_B.kept_shift_reg[118] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0313_));
 sky130_fd_sc_hd__mux2_1 _0999_ (.A0(\deser_B.kept_shift_reg[118] ),
    .A1(\deser_B.kept_shift_reg[119] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0314_));
 sky130_fd_sc_hd__mux2_1 _1000_ (.A0(\deser_B.kept_shift_reg[119] ),
    .A1(\deser_B.kept_shift_reg[120] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0315_));
 sky130_fd_sc_hd__mux2_1 _1001_ (.A0(\deser_B.kept_shift_reg[120] ),
    .A1(\deser_B.kept_shift_reg[121] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0316_));
 sky130_fd_sc_hd__mux2_1 _1002_ (.A0(\deser_B.kept_shift_reg[121] ),
    .A1(\deser_B.kept_shift_reg[122] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0317_));
 sky130_fd_sc_hd__mux2_1 _1003_ (.A0(\deser_B.kept_shift_reg[122] ),
    .A1(\deser_B.kept_shift_reg[123] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0318_));
 sky130_fd_sc_hd__mux2_1 _1004_ (.A0(\deser_B.kept_shift_reg[123] ),
    .A1(\deser_B.kept_shift_reg[124] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0319_));
 sky130_fd_sc_hd__mux2_1 _1005_ (.A0(\deser_B.kept_shift_reg[124] ),
    .A1(\deser_B.kept_shift_reg[125] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0320_));
 sky130_fd_sc_hd__mux2_1 _1006_ (.A0(\deser_B.kept_shift_reg[125] ),
    .A1(\deser_B.kept_shift_reg[126] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0321_));
 sky130_fd_sc_hd__mux2_1 _1007_ (.A0(\deser_B.kept_shift_reg[126] ),
    .A1(\deser_B.kept_shift_reg[127] ),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0322_));
 sky130_fd_sc_hd__mux2_1 _1008_ (.A0(\deser_B.kept_shift_reg[127] ),
    .A1(B_in_serial_data),
    .S(\deser_B.receiving ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0323_));
 sky130_fd_sc_hd__and2_2 _1009_ (.A(\deser_B.receiving ),
    .B(\deser_B.kept_shift_reg[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0375_));
 sky130_fd_sc_hd__a221o_2 _1010_ (.A1(\deser_B.kept_shift_reg[0] ),
    .A2(_0425_),
    .B1(_0347_),
    .B2(B_in_serial_data),
    .C1(_0375_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0324_));
 sky130_fd_sc_hd__and2_2 _1011_ (.A(\deser_A.receiving ),
    .B(\deser_A.kept_shift_reg[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0376_));
 sky130_fd_sc_hd__a221o_2 _1012_ (.A1(\deser_A.kept_shift_reg[0] ),
    .A2(_0419_),
    .B1(_0500_),
    .B2(A_in_serial_data),
    .C1(_0376_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0325_));
 sky130_fd_sc_hd__xor2_2 _1013_ (.A(\ser_C.bit_idx[0] ),
    .B(C_out_frame_sync),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0326_));
 sky130_fd_sc_hd__and3_2 _1014_ (.A(\ser_C.bit_idx[0] ),
    .B(\ser_C.bit_idx[1] ),
    .C(C_out_frame_sync),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0377_));
 sky130_fd_sc_hd__a21oi_2 _1015_ (.A1(\ser_C.bit_idx[0] ),
    .A2(C_out_frame_sync),
    .B1(\ser_C.bit_idx[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0378_));
 sky130_fd_sc_hd__nor2_2 _1016_ (.A(_0377_),
    .B(_0378_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0327_));
 sky130_fd_sc_hd__and4_2 _1017_ (.A(\ser_C.bit_idx[0] ),
    .B(\ser_C.bit_idx[1] ),
    .C(\ser_C.bit_idx[2] ),
    .D(C_out_frame_sync),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0379_));
 sky130_fd_sc_hd__nor2_2 _1018_ (.A(\ser_C.bit_idx[2] ),
    .B(_0377_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0380_));
 sky130_fd_sc_hd__nor2_2 _1019_ (.A(_0379_),
    .B(_0380_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0328_));
 sky130_fd_sc_hd__xor2_2 _1020_ (.A(\ser_C.bit_idx[3] ),
    .B(_0379_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0329_));
 sky130_fd_sc_hd__and3_2 _1021_ (.A(\ser_C.bit_idx[3] ),
    .B(\ser_C.bit_idx[4] ),
    .C(_0379_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0381_));
 sky130_fd_sc_hd__a21oi_2 _1022_ (.A1(\ser_C.bit_idx[3] ),
    .A2(_0379_),
    .B1(\ser_C.bit_idx[4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0382_));
 sky130_fd_sc_hd__nor2_2 _1023_ (.A(_0381_),
    .B(_0382_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0330_));
 sky130_fd_sc_hd__xor2_2 _1024_ (.A(\ser_C.bit_idx[5] ),
    .B(_0381_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0331_));
 sky130_fd_sc_hd__and3_2 _1025_ (.A(\ser_C.bit_idx[5] ),
    .B(\ser_C.bit_idx[6] ),
    .C(_0381_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0383_));
 sky130_fd_sc_hd__a21oi_2 _1026_ (.A1(\ser_C.bit_idx[5] ),
    .A2(_0381_),
    .B1(\ser_C.bit_idx[6] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0384_));
 sky130_fd_sc_hd__nor2_2 _1027_ (.A(_0383_),
    .B(_0384_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0332_));
 sky130_fd_sc_hd__xor2_2 _1028_ (.A(\ser_C.bit_idx[7] ),
    .B(_0383_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0333_));
 sky130_fd_sc_hd__and3_2 _1029_ (.A(\ser_C.bit_idx[7] ),
    .B(\ser_C.bit_idx[8] ),
    .C(_0383_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0385_));
 sky130_fd_sc_hd__a21oi_2 _1030_ (.A1(\ser_C.bit_idx[7] ),
    .A2(_0383_),
    .B1(\ser_C.bit_idx[8] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0386_));
 sky130_fd_sc_hd__nor2_2 _1031_ (.A(_0385_),
    .B(_0386_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0334_));
 sky130_fd_sc_hd__xor2_2 _1032_ (.A(\ser_C.bit_idx[9] ),
    .B(_0385_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0335_));
 sky130_fd_sc_hd__o21ai_2 _1033_ (.A1(_0404_),
    .A2(_0424_),
    .B1(_0348_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0336_));
 sky130_fd_sc_hd__nand2_2 _1034_ (.A(\ser_C.kept_bit_idx[0] ),
    .B(C_out_frame_sync),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0387_));
 sky130_fd_sc_hd__or2_2 _1035_ (.A(\ser_C.kept_bit_idx[0] ),
    .B(C_out_frame_sync),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0388_));
 sky130_fd_sc_hd__and2_2 _1036_ (.A(_0387_),
    .B(_0388_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0337_));
 sky130_fd_sc_hd__xnor2_2 _1037_ (.A(\ser_C.kept_bit_idx[1] ),
    .B(_0387_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0338_));
 sky130_fd_sc_hd__and4_2 _1038_ (.A(\ser_C.kept_bit_idx[0] ),
    .B(C_out_frame_sync),
    .C(\ser_C.kept_bit_idx[1] ),
    .D(\ser_C.kept_bit_idx[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0389_));
 sky130_fd_sc_hd__a31o_2 _1039_ (.A1(\ser_C.kept_bit_idx[0] ),
    .A2(C_out_frame_sync),
    .A3(\ser_C.kept_bit_idx[1] ),
    .B1(\ser_C.kept_bit_idx[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0390_));
 sky130_fd_sc_hd__and2b_2 _1040_ (.A_N(_0389_),
    .B(_0390_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0339_));
 sky130_fd_sc_hd__nand2_2 _1041_ (.A(\ser_C.kept_bit_idx[3] ),
    .B(_0389_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0391_));
 sky130_fd_sc_hd__or2_2 _1042_ (.A(\ser_C.kept_bit_idx[3] ),
    .B(_0389_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0392_));
 sky130_fd_sc_hd__and2_2 _1043_ (.A(_0391_),
    .B(_0392_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0340_));
 sky130_fd_sc_hd__xnor2_2 _1044_ (.A(\ser_C.kept_bit_idx[4] ),
    .B(_0391_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0341_));
 sky130_fd_sc_hd__and4_2 _1045_ (.A(\ser_C.kept_bit_idx[3] ),
    .B(\ser_C.kept_bit_idx[4] ),
    .C(\ser_C.kept_bit_idx[5] ),
    .D(_0389_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0393_));
 sky130_fd_sc_hd__a31o_2 _1046_ (.A1(\ser_C.kept_bit_idx[3] ),
    .A2(\ser_C.kept_bit_idx[4] ),
    .A3(_0389_),
    .B1(\ser_C.kept_bit_idx[5] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0394_));
 sky130_fd_sc_hd__and2b_2 _1047_ (.A_N(_0393_),
    .B(_0394_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0342_));
 sky130_fd_sc_hd__xor2_2 _1048_ (.A(\ser_C.kept_bit_idx[6] ),
    .B(_0393_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0343_));
 sky130_fd_sc_hd__and3_2 _1049_ (.A(\ser_C.kept_bit_idx[6] ),
    .B(\ser_C.kept_bit_idx[7] ),
    .C(_0393_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0395_));
 sky130_fd_sc_hd__a21oi_2 _1050_ (.A1(\ser_C.kept_bit_idx[6] ),
    .A2(_0393_),
    .B1(\ser_C.kept_bit_idx[7] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0396_));
 sky130_fd_sc_hd__nor2_2 _1051_ (.A(_0395_),
    .B(_0396_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0344_));
 sky130_fd_sc_hd__nand2_2 _1052_ (.A(\ser_C.kept_bit_idx[8] ),
    .B(_0395_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0397_));
 sky130_fd_sc_hd__or2_2 _1053_ (.A(\ser_C.kept_bit_idx[8] ),
    .B(_0395_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0398_));
 sky130_fd_sc_hd__and2_2 _1054_ (.A(_0397_),
    .B(_0398_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_0345_));
 sky130_fd_sc_hd__xnor2_2 _1055_ (.A(\ser_C.kept_bit_idx[9] ),
    .B(_0397_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_0346_));
 sky130_fd_sc_hd__dfrtp_2 _1056_ (.CLK(clk),
    .D(_0005_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\systolic_inst.cycle_cnt[0] ));
 sky130_fd_sc_hd__dfrtp_2 _1057_ (.CLK(clk),
    .D(_0006_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\systolic_inst.cycle_cnt[1] ));
 sky130_fd_sc_hd__dfrtp_2 _1058_ (.CLK(clk),
    .D(_0007_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\systolic_inst.cycle_cnt[2] ));
 sky130_fd_sc_hd__dfrtp_2 _1059_ (.CLK(clk),
    .D(_0008_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\systolic_inst.cycle_cnt[3] ));
 sky130_fd_sc_hd__dfrtp_2 _1060_ (.CLK(clk),
    .D(_0009_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\systolic_inst.cycle_cnt[4] ));
 sky130_fd_sc_hd__dfrtp_2 _1061_ (.CLK(clk),
    .D(_0010_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\systolic_inst.cycle_cnt[5] ));
 sky130_fd_sc_hd__dfrtp_2 _1062_ (.CLK(clk),
    .D(_0011_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\systolic_inst.cycle_cnt[6] ));
 sky130_fd_sc_hd__dfrtp_2 _1063_ (.CLK(clk),
    .D(_0012_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\systolic_inst.cycle_cnt[7] ));
 sky130_fd_sc_hd__dfrtp_2 _1064_ (.CLK(clk),
    .D(_0013_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\systolic_inst.cycle_cnt[8] ));
 sky130_fd_sc_hd__dfrtp_2 _1065_ (.CLK(clk),
    .D(_0014_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\systolic_inst.cycle_cnt[9] ));
 sky130_fd_sc_hd__dfrtp_2 _1066_ (.CLK(clk),
    .D(_0015_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\systolic_inst.cycle_cnt[10] ));
 sky130_fd_sc_hd__dfrtp_2 _1067_ (.CLK(clk),
    .D(_0016_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\systolic_inst.cycle_cnt[11] ));
 sky130_fd_sc_hd__dfrtp_2 _1068_ (.CLK(clk),
    .D(_0017_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\systolic_inst.cycle_cnt[12] ));
 sky130_fd_sc_hd__dfrtp_2 _1069_ (.CLK(clk),
    .D(_0018_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\systolic_inst.cycle_cnt[13] ));
 sky130_fd_sc_hd__dfrtp_2 _1070_ (.CLK(clk),
    .D(_0019_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\systolic_inst.cycle_cnt[14] ));
 sky130_fd_sc_hd__dfrtp_2 _1071_ (.CLK(clk),
    .D(_0020_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\systolic_inst.cycle_cnt[15] ));
 sky130_fd_sc_hd__dfrtp_2 _1072_ (.CLK(clk),
    .D(_0021_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\systolic_inst.cycle_cnt[16] ));
 sky130_fd_sc_hd__dfrtp_2 _1073_ (.CLK(clk),
    .D(_0022_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\systolic_inst.cycle_cnt[17] ));
 sky130_fd_sc_hd__dfrtp_2 _1074_ (.CLK(clk),
    .D(_0023_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\systolic_inst.cycle_cnt[18] ));
 sky130_fd_sc_hd__dfrtp_2 _1075_ (.CLK(clk),
    .D(_0024_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\systolic_inst.cycle_cnt[19] ));
 sky130_fd_sc_hd__dfrtp_2 _1076_ (.CLK(clk),
    .D(_0025_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\systolic_inst.cycle_cnt[20] ));
 sky130_fd_sc_hd__dfrtp_2 _1077_ (.CLK(clk),
    .D(_0026_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\systolic_inst.cycle_cnt[21] ));
 sky130_fd_sc_hd__dfrtp_2 _1078_ (.CLK(clk),
    .D(_0027_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\systolic_inst.cycle_cnt[22] ));
 sky130_fd_sc_hd__dfrtp_2 _1079_ (.CLK(clk),
    .D(_0028_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\systolic_inst.cycle_cnt[23] ));
 sky130_fd_sc_hd__dfrtp_2 _1080_ (.CLK(clk),
    .D(_0029_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\systolic_inst.cycle_cnt[24] ));
 sky130_fd_sc_hd__dfrtp_2 _1081_ (.CLK(clk),
    .D(_0030_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\systolic_inst.cycle_cnt[25] ));
 sky130_fd_sc_hd__dfrtp_2 _1082_ (.CLK(clk),
    .D(_0031_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\systolic_inst.cycle_cnt[26] ));
 sky130_fd_sc_hd__dfrtp_2 _1083_ (.CLK(clk),
    .D(_0032_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\systolic_inst.cycle_cnt[27] ));
 sky130_fd_sc_hd__dfrtp_2 _1084_ (.CLK(clk),
    .D(_0033_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\systolic_inst.cycle_cnt[28] ));
 sky130_fd_sc_hd__dfrtp_2 _1085_ (.CLK(clk),
    .D(_0034_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\systolic_inst.cycle_cnt[29] ));
 sky130_fd_sc_hd__dfrtp_2 _1086_ (.CLK(clk),
    .D(_0035_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\systolic_inst.cycle_cnt[30] ));
 sky130_fd_sc_hd__dfrtp_2 _1087_ (.CLK(clk),
    .D(_0036_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\systolic_inst.cycle_cnt[31] ));
 sky130_fd_sc_hd__dfrtp_2 _1088_ (.CLK(A_in_serial_clk),
    .D(_0037_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.bit_idx[0] ));
 sky130_fd_sc_hd__dfrtp_2 _1089_ (.CLK(A_in_serial_clk),
    .D(_0038_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.bit_idx[1] ));
 sky130_fd_sc_hd__dfrtp_2 _1090_ (.CLK(A_in_serial_clk),
    .D(_0039_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.bit_idx[2] ));
 sky130_fd_sc_hd__dfrtp_2 _1091_ (.CLK(A_in_serial_clk),
    .D(_0040_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.bit_idx[3] ));
 sky130_fd_sc_hd__dfrtp_2 _1092_ (.CLK(A_in_serial_clk),
    .D(_0041_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.bit_idx[4] ));
 sky130_fd_sc_hd__dfrtp_2 _1093_ (.CLK(A_in_serial_clk),
    .D(_0042_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.bit_idx[5] ));
 sky130_fd_sc_hd__dfrtp_2 _1094_ (.CLK(A_in_serial_clk),
    .D(_0043_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.bit_idx[6] ));
 sky130_fd_sc_hd__dfrtp_2 _1095_ (.CLK(A_in_serial_clk),
    .D(_0044_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.bit_idx[7] ));
 sky130_fd_sc_hd__dfrtp_2 _1096_ (.CLK(A_in_serial_clk),
    .D(_0045_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_bit_idx[0] ));
 sky130_fd_sc_hd__dfrtp_2 _1097_ (.CLK(A_in_serial_clk),
    .D(_0046_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_bit_idx[1] ));
 sky130_fd_sc_hd__dfrtp_2 _1098_ (.CLK(A_in_serial_clk),
    .D(_0047_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_bit_idx[2] ));
 sky130_fd_sc_hd__dfrtp_2 _1099_ (.CLK(A_in_serial_clk),
    .D(_0048_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_bit_idx[3] ));
 sky130_fd_sc_hd__dfrtp_2 _1100_ (.CLK(A_in_serial_clk),
    .D(_0049_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_bit_idx[4] ));
 sky130_fd_sc_hd__dfrtp_2 _1101_ (.CLK(A_in_serial_clk),
    .D(_0050_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_bit_idx[5] ));
 sky130_fd_sc_hd__dfrtp_2 _1102_ (.CLK(A_in_serial_clk),
    .D(_0051_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_bit_idx[6] ));
 sky130_fd_sc_hd__dfrtp_2 _1103_ (.CLK(A_in_serial_clk),
    .D(_0052_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_bit_idx[7] ));
 sky130_fd_sc_hd__dfrtp_2 _1104_ (.CLK(A_in_serial_clk),
    .D(_0000_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.receiving ));
 sky130_fd_sc_hd__dfrtp_2 _1105_ (.CLK(A_in_serial_clk),
    .D(_0053_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[1] ));
 sky130_fd_sc_hd__dfrtp_2 _1106_ (.CLK(A_in_serial_clk),
    .D(_0054_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[2] ));
 sky130_fd_sc_hd__dfrtp_2 _1107_ (.CLK(A_in_serial_clk),
    .D(_0055_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[3] ));
 sky130_fd_sc_hd__dfrtp_2 _1108_ (.CLK(A_in_serial_clk),
    .D(_0056_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[4] ));
 sky130_fd_sc_hd__dfrtp_2 _1109_ (.CLK(A_in_serial_clk),
    .D(_0057_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[5] ));
 sky130_fd_sc_hd__dfrtp_2 _1110_ (.CLK(A_in_serial_clk),
    .D(_0058_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[6] ));
 sky130_fd_sc_hd__dfrtp_2 _1111_ (.CLK(A_in_serial_clk),
    .D(_0059_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[7] ));
 sky130_fd_sc_hd__dfrtp_2 _1112_ (.CLK(A_in_serial_clk),
    .D(_0060_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[8] ));
 sky130_fd_sc_hd__dfrtp_2 _1113_ (.CLK(A_in_serial_clk),
    .D(_0061_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[9] ));
 sky130_fd_sc_hd__dfrtp_2 _1114_ (.CLK(A_in_serial_clk),
    .D(_0062_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[10] ));
 sky130_fd_sc_hd__dfrtp_2 _1115_ (.CLK(A_in_serial_clk),
    .D(_0063_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[11] ));
 sky130_fd_sc_hd__dfrtp_2 _1116_ (.CLK(A_in_serial_clk),
    .D(_0064_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[12] ));
 sky130_fd_sc_hd__dfrtp_2 _1117_ (.CLK(A_in_serial_clk),
    .D(_0065_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[13] ));
 sky130_fd_sc_hd__dfrtp_2 _1118_ (.CLK(A_in_serial_clk),
    .D(_0066_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[14] ));
 sky130_fd_sc_hd__dfrtp_2 _1119_ (.CLK(A_in_serial_clk),
    .D(_0067_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[15] ));
 sky130_fd_sc_hd__dfrtp_2 _1120_ (.CLK(A_in_serial_clk),
    .D(_0068_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[16] ));
 sky130_fd_sc_hd__dfrtp_2 _1121_ (.CLK(A_in_serial_clk),
    .D(_0069_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[17] ));
 sky130_fd_sc_hd__dfrtp_2 _1122_ (.CLK(A_in_serial_clk),
    .D(_0070_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[18] ));
 sky130_fd_sc_hd__dfrtp_2 _1123_ (.CLK(A_in_serial_clk),
    .D(_0071_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[19] ));
 sky130_fd_sc_hd__dfrtp_2 _1124_ (.CLK(A_in_serial_clk),
    .D(_0072_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[20] ));
 sky130_fd_sc_hd__dfrtp_2 _1125_ (.CLK(A_in_serial_clk),
    .D(_0073_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[21] ));
 sky130_fd_sc_hd__dfrtp_2 _1126_ (.CLK(A_in_serial_clk),
    .D(_0074_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[22] ));
 sky130_fd_sc_hd__dfrtp_2 _1127_ (.CLK(A_in_serial_clk),
    .D(_0075_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[23] ));
 sky130_fd_sc_hd__dfrtp_2 _1128_ (.CLK(A_in_serial_clk),
    .D(_0076_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[24] ));
 sky130_fd_sc_hd__dfrtp_2 _1129_ (.CLK(A_in_serial_clk),
    .D(_0077_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[25] ));
 sky130_fd_sc_hd__dfrtp_2 _1130_ (.CLK(A_in_serial_clk),
    .D(_0078_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[26] ));
 sky130_fd_sc_hd__dfrtp_2 _1131_ (.CLK(A_in_serial_clk),
    .D(_0079_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[27] ));
 sky130_fd_sc_hd__dfrtp_2 _1132_ (.CLK(A_in_serial_clk),
    .D(_0080_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[28] ));
 sky130_fd_sc_hd__dfrtp_2 _1133_ (.CLK(A_in_serial_clk),
    .D(_0081_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[29] ));
 sky130_fd_sc_hd__dfrtp_2 _1134_ (.CLK(A_in_serial_clk),
    .D(_0082_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[30] ));
 sky130_fd_sc_hd__dfrtp_2 _1135_ (.CLK(A_in_serial_clk),
    .D(_0083_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[31] ));
 sky130_fd_sc_hd__dfrtp_2 _1136_ (.CLK(A_in_serial_clk),
    .D(_0084_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[32] ));
 sky130_fd_sc_hd__dfrtp_2 _1137_ (.CLK(A_in_serial_clk),
    .D(_0085_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[33] ));
 sky130_fd_sc_hd__dfrtp_2 _1138_ (.CLK(A_in_serial_clk),
    .D(_0086_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[34] ));
 sky130_fd_sc_hd__dfrtp_2 _1139_ (.CLK(A_in_serial_clk),
    .D(_0087_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[35] ));
 sky130_fd_sc_hd__dfrtp_2 _1140_ (.CLK(A_in_serial_clk),
    .D(_0088_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[36] ));
 sky130_fd_sc_hd__dfrtp_2 _1141_ (.CLK(A_in_serial_clk),
    .D(_0089_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[37] ));
 sky130_fd_sc_hd__dfrtp_2 _1142_ (.CLK(A_in_serial_clk),
    .D(_0090_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[38] ));
 sky130_fd_sc_hd__dfrtp_2 _1143_ (.CLK(A_in_serial_clk),
    .D(_0091_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[39] ));
 sky130_fd_sc_hd__dfrtp_2 _1144_ (.CLK(A_in_serial_clk),
    .D(_0092_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[40] ));
 sky130_fd_sc_hd__dfrtp_2 _1145_ (.CLK(A_in_serial_clk),
    .D(_0093_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[41] ));
 sky130_fd_sc_hd__dfrtp_2 _1146_ (.CLK(A_in_serial_clk),
    .D(_0094_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[42] ));
 sky130_fd_sc_hd__dfrtp_2 _1147_ (.CLK(A_in_serial_clk),
    .D(_0095_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[43] ));
 sky130_fd_sc_hd__dfrtp_2 _1148_ (.CLK(A_in_serial_clk),
    .D(_0096_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[44] ));
 sky130_fd_sc_hd__dfrtp_2 _1149_ (.CLK(A_in_serial_clk),
    .D(_0097_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[45] ));
 sky130_fd_sc_hd__dfrtp_2 _1150_ (.CLK(A_in_serial_clk),
    .D(_0098_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[46] ));
 sky130_fd_sc_hd__dfrtp_2 _1151_ (.CLK(A_in_serial_clk),
    .D(_0099_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[47] ));
 sky130_fd_sc_hd__dfrtp_2 _1152_ (.CLK(A_in_serial_clk),
    .D(_0100_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[48] ));
 sky130_fd_sc_hd__dfrtp_2 _1153_ (.CLK(A_in_serial_clk),
    .D(_0101_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[49] ));
 sky130_fd_sc_hd__dfrtp_2 _1154_ (.CLK(A_in_serial_clk),
    .D(_0102_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[50] ));
 sky130_fd_sc_hd__dfrtp_2 _1155_ (.CLK(A_in_serial_clk),
    .D(_0103_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[51] ));
 sky130_fd_sc_hd__dfrtp_2 _1156_ (.CLK(A_in_serial_clk),
    .D(_0104_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[52] ));
 sky130_fd_sc_hd__dfrtp_2 _1157_ (.CLK(A_in_serial_clk),
    .D(_0105_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[53] ));
 sky130_fd_sc_hd__dfrtp_2 _1158_ (.CLK(A_in_serial_clk),
    .D(_0106_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[54] ));
 sky130_fd_sc_hd__dfrtp_2 _1159_ (.CLK(A_in_serial_clk),
    .D(_0107_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[55] ));
 sky130_fd_sc_hd__dfrtp_2 _1160_ (.CLK(A_in_serial_clk),
    .D(_0108_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[56] ));
 sky130_fd_sc_hd__dfrtp_2 _1161_ (.CLK(A_in_serial_clk),
    .D(_0109_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[57] ));
 sky130_fd_sc_hd__dfrtp_2 _1162_ (.CLK(A_in_serial_clk),
    .D(_0110_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[58] ));
 sky130_fd_sc_hd__dfrtp_2 _1163_ (.CLK(A_in_serial_clk),
    .D(_0111_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[59] ));
 sky130_fd_sc_hd__dfrtp_2 _1164_ (.CLK(A_in_serial_clk),
    .D(_0112_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[60] ));
 sky130_fd_sc_hd__dfrtp_2 _1165_ (.CLK(A_in_serial_clk),
    .D(_0113_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[61] ));
 sky130_fd_sc_hd__dfrtp_2 _1166_ (.CLK(A_in_serial_clk),
    .D(_0114_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[62] ));
 sky130_fd_sc_hd__dfrtp_2 _1167_ (.CLK(A_in_serial_clk),
    .D(_0115_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[63] ));
 sky130_fd_sc_hd__dfrtp_2 _1168_ (.CLK(A_in_serial_clk),
    .D(_0116_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[64] ));
 sky130_fd_sc_hd__dfrtp_2 _1169_ (.CLK(A_in_serial_clk),
    .D(_0117_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[65] ));
 sky130_fd_sc_hd__dfrtp_2 _1170_ (.CLK(A_in_serial_clk),
    .D(_0118_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[66] ));
 sky130_fd_sc_hd__dfrtp_2 _1171_ (.CLK(A_in_serial_clk),
    .D(_0119_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[67] ));
 sky130_fd_sc_hd__dfrtp_2 _1172_ (.CLK(A_in_serial_clk),
    .D(_0120_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[68] ));
 sky130_fd_sc_hd__dfrtp_2 _1173_ (.CLK(A_in_serial_clk),
    .D(_0121_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[69] ));
 sky130_fd_sc_hd__dfrtp_2 _1174_ (.CLK(A_in_serial_clk),
    .D(_0122_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[70] ));
 sky130_fd_sc_hd__dfrtp_2 _1175_ (.CLK(A_in_serial_clk),
    .D(_0123_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[71] ));
 sky130_fd_sc_hd__dfrtp_2 _1176_ (.CLK(A_in_serial_clk),
    .D(_0124_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[72] ));
 sky130_fd_sc_hd__dfrtp_2 _1177_ (.CLK(A_in_serial_clk),
    .D(_0125_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[73] ));
 sky130_fd_sc_hd__dfrtp_2 _1178_ (.CLK(A_in_serial_clk),
    .D(_0126_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[74] ));
 sky130_fd_sc_hd__dfrtp_2 _1179_ (.CLK(A_in_serial_clk),
    .D(_0127_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[75] ));
 sky130_fd_sc_hd__dfrtp_2 _1180_ (.CLK(A_in_serial_clk),
    .D(_0128_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[76] ));
 sky130_fd_sc_hd__dfrtp_2 _1181_ (.CLK(A_in_serial_clk),
    .D(_0129_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[77] ));
 sky130_fd_sc_hd__dfrtp_2 _1182_ (.CLK(A_in_serial_clk),
    .D(_0130_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[78] ));
 sky130_fd_sc_hd__dfrtp_2 _1183_ (.CLK(A_in_serial_clk),
    .D(_0131_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[79] ));
 sky130_fd_sc_hd__dfrtp_2 _1184_ (.CLK(A_in_serial_clk),
    .D(_0132_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[80] ));
 sky130_fd_sc_hd__dfrtp_2 _1185_ (.CLK(A_in_serial_clk),
    .D(_0133_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[81] ));
 sky130_fd_sc_hd__dfrtp_2 _1186_ (.CLK(A_in_serial_clk),
    .D(_0134_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[82] ));
 sky130_fd_sc_hd__dfrtp_2 _1187_ (.CLK(A_in_serial_clk),
    .D(_0135_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[83] ));
 sky130_fd_sc_hd__dfrtp_2 _1188_ (.CLK(A_in_serial_clk),
    .D(_0136_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[84] ));
 sky130_fd_sc_hd__dfrtp_2 _1189_ (.CLK(A_in_serial_clk),
    .D(_0137_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[85] ));
 sky130_fd_sc_hd__dfrtp_2 _1190_ (.CLK(A_in_serial_clk),
    .D(_0138_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[86] ));
 sky130_fd_sc_hd__dfrtp_2 _1191_ (.CLK(A_in_serial_clk),
    .D(_0139_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[87] ));
 sky130_fd_sc_hd__dfrtp_2 _1192_ (.CLK(A_in_serial_clk),
    .D(_0140_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[88] ));
 sky130_fd_sc_hd__dfrtp_2 _1193_ (.CLK(A_in_serial_clk),
    .D(_0141_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[89] ));
 sky130_fd_sc_hd__dfrtp_2 _1194_ (.CLK(A_in_serial_clk),
    .D(_0142_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[90] ));
 sky130_fd_sc_hd__dfrtp_2 _1195_ (.CLK(A_in_serial_clk),
    .D(_0143_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[91] ));
 sky130_fd_sc_hd__dfrtp_2 _1196_ (.CLK(A_in_serial_clk),
    .D(_0144_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[92] ));
 sky130_fd_sc_hd__dfrtp_2 _1197_ (.CLK(A_in_serial_clk),
    .D(_0145_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[93] ));
 sky130_fd_sc_hd__dfrtp_2 _1198_ (.CLK(A_in_serial_clk),
    .D(_0146_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[94] ));
 sky130_fd_sc_hd__dfrtp_2 _1199_ (.CLK(A_in_serial_clk),
    .D(_0147_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[95] ));
 sky130_fd_sc_hd__dfrtp_2 _1200_ (.CLK(A_in_serial_clk),
    .D(_0148_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[96] ));
 sky130_fd_sc_hd__dfrtp_2 _1201_ (.CLK(A_in_serial_clk),
    .D(_0149_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[97] ));
 sky130_fd_sc_hd__dfrtp_2 _1202_ (.CLK(A_in_serial_clk),
    .D(_0150_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[98] ));
 sky130_fd_sc_hd__dfrtp_2 _1203_ (.CLK(A_in_serial_clk),
    .D(_0151_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[99] ));
 sky130_fd_sc_hd__dfrtp_2 _1204_ (.CLK(A_in_serial_clk),
    .D(_0152_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[100] ));
 sky130_fd_sc_hd__dfrtp_2 _1205_ (.CLK(A_in_serial_clk),
    .D(_0153_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[101] ));
 sky130_fd_sc_hd__dfrtp_2 _1206_ (.CLK(A_in_serial_clk),
    .D(_0154_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[102] ));
 sky130_fd_sc_hd__dfrtp_2 _1207_ (.CLK(A_in_serial_clk),
    .D(_0155_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[103] ));
 sky130_fd_sc_hd__dfrtp_2 _1208_ (.CLK(A_in_serial_clk),
    .D(_0156_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[104] ));
 sky130_fd_sc_hd__dfrtp_2 _1209_ (.CLK(A_in_serial_clk),
    .D(_0157_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[105] ));
 sky130_fd_sc_hd__dfrtp_2 _1210_ (.CLK(A_in_serial_clk),
    .D(_0158_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[106] ));
 sky130_fd_sc_hd__dfrtp_2 _1211_ (.CLK(A_in_serial_clk),
    .D(_0159_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[107] ));
 sky130_fd_sc_hd__dfrtp_2 _1212_ (.CLK(A_in_serial_clk),
    .D(_0160_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[108] ));
 sky130_fd_sc_hd__dfrtp_2 _1213_ (.CLK(A_in_serial_clk),
    .D(_0161_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[109] ));
 sky130_fd_sc_hd__dfrtp_2 _1214_ (.CLK(A_in_serial_clk),
    .D(_0162_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[110] ));
 sky130_fd_sc_hd__dfrtp_2 _1215_ (.CLK(A_in_serial_clk),
    .D(_0163_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[111] ));
 sky130_fd_sc_hd__dfrtp_2 _1216_ (.CLK(A_in_serial_clk),
    .D(_0164_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[112] ));
 sky130_fd_sc_hd__dfrtp_2 _1217_ (.CLK(A_in_serial_clk),
    .D(_0165_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[113] ));
 sky130_fd_sc_hd__dfrtp_2 _1218_ (.CLK(A_in_serial_clk),
    .D(_0166_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[114] ));
 sky130_fd_sc_hd__dfrtp_2 _1219_ (.CLK(A_in_serial_clk),
    .D(_0167_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[115] ));
 sky130_fd_sc_hd__dfrtp_2 _1220_ (.CLK(A_in_serial_clk),
    .D(_0168_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[116] ));
 sky130_fd_sc_hd__dfrtp_2 _1221_ (.CLK(A_in_serial_clk),
    .D(_0169_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[117] ));
 sky130_fd_sc_hd__dfrtp_2 _1222_ (.CLK(A_in_serial_clk),
    .D(_0170_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[118] ));
 sky130_fd_sc_hd__dfrtp_2 _1223_ (.CLK(A_in_serial_clk),
    .D(_0171_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[119] ));
 sky130_fd_sc_hd__dfrtp_2 _1224_ (.CLK(A_in_serial_clk),
    .D(_0172_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[120] ));
 sky130_fd_sc_hd__dfrtp_2 _1225_ (.CLK(A_in_serial_clk),
    .D(_0173_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[121] ));
 sky130_fd_sc_hd__dfrtp_2 _1226_ (.CLK(A_in_serial_clk),
    .D(_0174_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[122] ));
 sky130_fd_sc_hd__dfrtp_2 _1227_ (.CLK(A_in_serial_clk),
    .D(_0175_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[123] ));
 sky130_fd_sc_hd__dfrtp_2 _1228_ (.CLK(A_in_serial_clk),
    .D(_0176_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[124] ));
 sky130_fd_sc_hd__dfrtp_2 _1229_ (.CLK(A_in_serial_clk),
    .D(_0177_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[125] ));
 sky130_fd_sc_hd__dfrtp_2 _1230_ (.CLK(A_in_serial_clk),
    .D(_0178_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[126] ));
 sky130_fd_sc_hd__dfrtp_2 _1231_ (.CLK(A_in_serial_clk),
    .D(_0179_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[127] ));
 sky130_fd_sc_hd__dfrtp_2 _1232_ (.CLK(B_in_serial_clk),
    .D(_0180_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.bit_idx[0] ));
 sky130_fd_sc_hd__dfrtp_2 _1233_ (.CLK(B_in_serial_clk),
    .D(_0181_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.bit_idx[1] ));
 sky130_fd_sc_hd__dfrtp_2 _1234_ (.CLK(B_in_serial_clk),
    .D(_0182_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.bit_idx[2] ));
 sky130_fd_sc_hd__dfrtp_2 _1235_ (.CLK(B_in_serial_clk),
    .D(_0183_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.bit_idx[3] ));
 sky130_fd_sc_hd__dfrtp_2 _1236_ (.CLK(B_in_serial_clk),
    .D(_0184_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.bit_idx[4] ));
 sky130_fd_sc_hd__dfrtp_2 _1237_ (.CLK(B_in_serial_clk),
    .D(_0185_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.bit_idx[5] ));
 sky130_fd_sc_hd__dfrtp_2 _1238_ (.CLK(B_in_serial_clk),
    .D(_0186_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.bit_idx[6] ));
 sky130_fd_sc_hd__dfrtp_2 _1239_ (.CLK(B_in_serial_clk),
    .D(_0187_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.bit_idx[7] ));
 sky130_fd_sc_hd__dfrtp_2 _1240_ (.CLK(B_in_serial_clk),
    .D(_0188_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_bit_idx[0] ));
 sky130_fd_sc_hd__dfrtp_2 _1241_ (.CLK(B_in_serial_clk),
    .D(_0189_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_bit_idx[1] ));
 sky130_fd_sc_hd__dfrtp_2 _1242_ (.CLK(B_in_serial_clk),
    .D(_0190_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_bit_idx[2] ));
 sky130_fd_sc_hd__dfrtp_2 _1243_ (.CLK(B_in_serial_clk),
    .D(_0191_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_bit_idx[3] ));
 sky130_fd_sc_hd__dfrtp_2 _1244_ (.CLK(B_in_serial_clk),
    .D(_0192_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_bit_idx[4] ));
 sky130_fd_sc_hd__dfrtp_2 _1245_ (.CLK(B_in_serial_clk),
    .D(_0193_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_bit_idx[5] ));
 sky130_fd_sc_hd__dfrtp_2 _1246_ (.CLK(B_in_serial_clk),
    .D(_0194_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_bit_idx[6] ));
 sky130_fd_sc_hd__dfrtp_2 _1247_ (.CLK(B_in_serial_clk),
    .D(_0195_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_bit_idx[7] ));
 sky130_fd_sc_hd__dfrtp_2 _1248_ (.CLK(B_in_serial_clk),
    .D(_0001_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.receiving ));
 sky130_fd_sc_hd__dfrtp_2 _1249_ (.CLK(A_in_serial_clk),
    .D(_0196_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_receiving ));
 sky130_fd_sc_hd__dfrtp_2 _1250_ (.CLK(B_in_serial_clk),
    .D(_0197_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[1] ));
 sky130_fd_sc_hd__dfrtp_2 _1251_ (.CLK(B_in_serial_clk),
    .D(_0198_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[2] ));
 sky130_fd_sc_hd__dfrtp_2 _1252_ (.CLK(B_in_serial_clk),
    .D(_0199_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[3] ));
 sky130_fd_sc_hd__dfrtp_2 _1253_ (.CLK(B_in_serial_clk),
    .D(_0200_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[4] ));
 sky130_fd_sc_hd__dfrtp_2 _1254_ (.CLK(B_in_serial_clk),
    .D(_0201_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[5] ));
 sky130_fd_sc_hd__dfrtp_2 _1255_ (.CLK(B_in_serial_clk),
    .D(_0202_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[6] ));
 sky130_fd_sc_hd__dfrtp_2 _1256_ (.CLK(B_in_serial_clk),
    .D(_0203_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[7] ));
 sky130_fd_sc_hd__dfrtp_2 _1257_ (.CLK(B_in_serial_clk),
    .D(_0204_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[8] ));
 sky130_fd_sc_hd__dfrtp_2 _1258_ (.CLK(B_in_serial_clk),
    .D(_0205_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[9] ));
 sky130_fd_sc_hd__dfrtp_2 _1259_ (.CLK(B_in_serial_clk),
    .D(_0206_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[10] ));
 sky130_fd_sc_hd__dfrtp_2 _1260_ (.CLK(B_in_serial_clk),
    .D(_0207_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[11] ));
 sky130_fd_sc_hd__dfrtp_2 _1261_ (.CLK(B_in_serial_clk),
    .D(_0208_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[12] ));
 sky130_fd_sc_hd__dfrtp_2 _1262_ (.CLK(B_in_serial_clk),
    .D(_0209_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[13] ));
 sky130_fd_sc_hd__dfrtp_2 _1263_ (.CLK(B_in_serial_clk),
    .D(_0210_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[14] ));
 sky130_fd_sc_hd__dfrtp_2 _1264_ (.CLK(B_in_serial_clk),
    .D(_0211_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[15] ));
 sky130_fd_sc_hd__dfrtp_2 _1265_ (.CLK(B_in_serial_clk),
    .D(_0212_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[16] ));
 sky130_fd_sc_hd__dfrtp_2 _1266_ (.CLK(B_in_serial_clk),
    .D(_0213_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[17] ));
 sky130_fd_sc_hd__dfrtp_2 _1267_ (.CLK(B_in_serial_clk),
    .D(_0214_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[18] ));
 sky130_fd_sc_hd__dfrtp_2 _1268_ (.CLK(B_in_serial_clk),
    .D(_0215_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[19] ));
 sky130_fd_sc_hd__dfrtp_2 _1269_ (.CLK(B_in_serial_clk),
    .D(_0216_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[20] ));
 sky130_fd_sc_hd__dfrtp_2 _1270_ (.CLK(B_in_serial_clk),
    .D(_0217_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[21] ));
 sky130_fd_sc_hd__dfrtp_2 _1271_ (.CLK(B_in_serial_clk),
    .D(_0218_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[22] ));
 sky130_fd_sc_hd__dfrtp_2 _1272_ (.CLK(B_in_serial_clk),
    .D(_0219_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[23] ));
 sky130_fd_sc_hd__dfrtp_2 _1273_ (.CLK(B_in_serial_clk),
    .D(_0220_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[24] ));
 sky130_fd_sc_hd__dfrtp_2 _1274_ (.CLK(B_in_serial_clk),
    .D(_0221_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[25] ));
 sky130_fd_sc_hd__dfrtp_2 _1275_ (.CLK(B_in_serial_clk),
    .D(_0222_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[26] ));
 sky130_fd_sc_hd__dfrtp_2 _1276_ (.CLK(B_in_serial_clk),
    .D(_0223_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[27] ));
 sky130_fd_sc_hd__dfrtp_2 _1277_ (.CLK(B_in_serial_clk),
    .D(_0224_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[28] ));
 sky130_fd_sc_hd__dfrtp_2 _1278_ (.CLK(B_in_serial_clk),
    .D(_0225_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[29] ));
 sky130_fd_sc_hd__dfrtp_2 _1279_ (.CLK(B_in_serial_clk),
    .D(_0226_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[30] ));
 sky130_fd_sc_hd__dfrtp_2 _1280_ (.CLK(B_in_serial_clk),
    .D(_0227_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[31] ));
 sky130_fd_sc_hd__dfrtp_2 _1281_ (.CLK(B_in_serial_clk),
    .D(_0228_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[32] ));
 sky130_fd_sc_hd__dfrtp_2 _1282_ (.CLK(B_in_serial_clk),
    .D(_0229_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[33] ));
 sky130_fd_sc_hd__dfrtp_2 _1283_ (.CLK(B_in_serial_clk),
    .D(_0230_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[34] ));
 sky130_fd_sc_hd__dfrtp_2 _1284_ (.CLK(B_in_serial_clk),
    .D(_0231_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[35] ));
 sky130_fd_sc_hd__dfrtp_2 _1285_ (.CLK(B_in_serial_clk),
    .D(_0232_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[36] ));
 sky130_fd_sc_hd__dfrtp_2 _1286_ (.CLK(B_in_serial_clk),
    .D(_0233_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[37] ));
 sky130_fd_sc_hd__dfrtp_2 _1287_ (.CLK(B_in_serial_clk),
    .D(_0234_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[38] ));
 sky130_fd_sc_hd__dfrtp_2 _1288_ (.CLK(B_in_serial_clk),
    .D(_0235_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[39] ));
 sky130_fd_sc_hd__dfrtp_2 _1289_ (.CLK(B_in_serial_clk),
    .D(_0236_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[40] ));
 sky130_fd_sc_hd__dfrtp_2 _1290_ (.CLK(B_in_serial_clk),
    .D(_0237_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[41] ));
 sky130_fd_sc_hd__dfrtp_2 _1291_ (.CLK(B_in_serial_clk),
    .D(_0238_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[42] ));
 sky130_fd_sc_hd__dfrtp_2 _1292_ (.CLK(B_in_serial_clk),
    .D(_0239_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[43] ));
 sky130_fd_sc_hd__dfrtp_2 _1293_ (.CLK(B_in_serial_clk),
    .D(_0240_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[44] ));
 sky130_fd_sc_hd__dfrtp_2 _1294_ (.CLK(B_in_serial_clk),
    .D(_0241_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[45] ));
 sky130_fd_sc_hd__dfrtp_2 _1295_ (.CLK(B_in_serial_clk),
    .D(_0242_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[46] ));
 sky130_fd_sc_hd__dfrtp_2 _1296_ (.CLK(B_in_serial_clk),
    .D(_0243_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[47] ));
 sky130_fd_sc_hd__dfrtp_2 _1297_ (.CLK(B_in_serial_clk),
    .D(_0244_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[48] ));
 sky130_fd_sc_hd__dfrtp_2 _1298_ (.CLK(B_in_serial_clk),
    .D(_0245_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[49] ));
 sky130_fd_sc_hd__dfrtp_2 _1299_ (.CLK(B_in_serial_clk),
    .D(_0246_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[50] ));
 sky130_fd_sc_hd__dfrtp_2 _1300_ (.CLK(B_in_serial_clk),
    .D(_0247_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[51] ));
 sky130_fd_sc_hd__dfrtp_2 _1301_ (.CLK(B_in_serial_clk),
    .D(_0248_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[52] ));
 sky130_fd_sc_hd__dfrtp_2 _1302_ (.CLK(B_in_serial_clk),
    .D(_0249_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[53] ));
 sky130_fd_sc_hd__dfrtp_2 _1303_ (.CLK(B_in_serial_clk),
    .D(_0250_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[54] ));
 sky130_fd_sc_hd__dfrtp_2 _1304_ (.CLK(B_in_serial_clk),
    .D(_0251_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[55] ));
 sky130_fd_sc_hd__dfrtp_2 _1305_ (.CLK(B_in_serial_clk),
    .D(_0252_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[56] ));
 sky130_fd_sc_hd__dfrtp_2 _1306_ (.CLK(B_in_serial_clk),
    .D(_0253_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[57] ));
 sky130_fd_sc_hd__dfrtp_2 _1307_ (.CLK(B_in_serial_clk),
    .D(_0254_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[58] ));
 sky130_fd_sc_hd__dfrtp_2 _1308_ (.CLK(B_in_serial_clk),
    .D(_0255_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[59] ));
 sky130_fd_sc_hd__dfrtp_2 _1309_ (.CLK(B_in_serial_clk),
    .D(_0256_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[60] ));
 sky130_fd_sc_hd__dfrtp_2 _1310_ (.CLK(B_in_serial_clk),
    .D(_0257_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[61] ));
 sky130_fd_sc_hd__dfrtp_2 _1311_ (.CLK(B_in_serial_clk),
    .D(_0258_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[62] ));
 sky130_fd_sc_hd__dfrtp_2 _1312_ (.CLK(B_in_serial_clk),
    .D(_0259_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[63] ));
 sky130_fd_sc_hd__dfrtp_2 _1313_ (.CLK(B_in_serial_clk),
    .D(_0260_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[64] ));
 sky130_fd_sc_hd__dfrtp_2 _1314_ (.CLK(B_in_serial_clk),
    .D(_0261_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[65] ));
 sky130_fd_sc_hd__dfrtp_2 _1315_ (.CLK(B_in_serial_clk),
    .D(_0262_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[66] ));
 sky130_fd_sc_hd__dfrtp_2 _1316_ (.CLK(B_in_serial_clk),
    .D(_0263_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[67] ));
 sky130_fd_sc_hd__dfrtp_2 _1317_ (.CLK(B_in_serial_clk),
    .D(_0264_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[68] ));
 sky130_fd_sc_hd__dfrtp_2 _1318_ (.CLK(B_in_serial_clk),
    .D(_0265_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[69] ));
 sky130_fd_sc_hd__dfrtp_2 _1319_ (.CLK(B_in_serial_clk),
    .D(_0266_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[70] ));
 sky130_fd_sc_hd__dfrtp_2 _1320_ (.CLK(B_in_serial_clk),
    .D(_0267_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[71] ));
 sky130_fd_sc_hd__dfrtp_2 _1321_ (.CLK(B_in_serial_clk),
    .D(_0268_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[72] ));
 sky130_fd_sc_hd__dfrtp_2 _1322_ (.CLK(B_in_serial_clk),
    .D(_0269_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[73] ));
 sky130_fd_sc_hd__dfrtp_2 _1323_ (.CLK(B_in_serial_clk),
    .D(_0270_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[74] ));
 sky130_fd_sc_hd__dfrtp_2 _1324_ (.CLK(B_in_serial_clk),
    .D(_0271_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[75] ));
 sky130_fd_sc_hd__dfrtp_2 _1325_ (.CLK(B_in_serial_clk),
    .D(_0272_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[76] ));
 sky130_fd_sc_hd__dfrtp_2 _1326_ (.CLK(B_in_serial_clk),
    .D(_0273_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[77] ));
 sky130_fd_sc_hd__dfrtp_2 _1327_ (.CLK(B_in_serial_clk),
    .D(_0274_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[78] ));
 sky130_fd_sc_hd__dfrtp_2 _1328_ (.CLK(B_in_serial_clk),
    .D(_0275_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[79] ));
 sky130_fd_sc_hd__dfrtp_2 _1329_ (.CLK(B_in_serial_clk),
    .D(_0276_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[80] ));
 sky130_fd_sc_hd__dfrtp_2 _1330_ (.CLK(B_in_serial_clk),
    .D(_0277_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[81] ));
 sky130_fd_sc_hd__dfrtp_2 _1331_ (.CLK(B_in_serial_clk),
    .D(_0278_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[82] ));
 sky130_fd_sc_hd__dfrtp_2 _1332_ (.CLK(B_in_serial_clk),
    .D(_0279_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[83] ));
 sky130_fd_sc_hd__dfrtp_2 _1333_ (.CLK(B_in_serial_clk),
    .D(_0280_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[84] ));
 sky130_fd_sc_hd__dfrtp_2 _1334_ (.CLK(B_in_serial_clk),
    .D(_0281_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[85] ));
 sky130_fd_sc_hd__dfrtp_2 _1335_ (.CLK(B_in_serial_clk),
    .D(_0282_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[86] ));
 sky130_fd_sc_hd__dfrtp_2 _1336_ (.CLK(B_in_serial_clk),
    .D(_0283_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[87] ));
 sky130_fd_sc_hd__dfrtp_2 _1337_ (.CLK(B_in_serial_clk),
    .D(_0284_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[88] ));
 sky130_fd_sc_hd__dfrtp_2 _1338_ (.CLK(B_in_serial_clk),
    .D(_0285_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[89] ));
 sky130_fd_sc_hd__dfrtp_2 _1339_ (.CLK(B_in_serial_clk),
    .D(_0286_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[90] ));
 sky130_fd_sc_hd__dfrtp_2 _1340_ (.CLK(B_in_serial_clk),
    .D(_0287_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[91] ));
 sky130_fd_sc_hd__dfrtp_2 _1341_ (.CLK(B_in_serial_clk),
    .D(_0288_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[92] ));
 sky130_fd_sc_hd__dfrtp_2 _1342_ (.CLK(B_in_serial_clk),
    .D(_0289_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[93] ));
 sky130_fd_sc_hd__dfrtp_2 _1343_ (.CLK(B_in_serial_clk),
    .D(_0290_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[94] ));
 sky130_fd_sc_hd__dfrtp_2 _1344_ (.CLK(B_in_serial_clk),
    .D(_0291_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[95] ));
 sky130_fd_sc_hd__dfrtp_2 _1345_ (.CLK(B_in_serial_clk),
    .D(_0292_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[96] ));
 sky130_fd_sc_hd__dfrtp_2 _1346_ (.CLK(B_in_serial_clk),
    .D(_0293_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[97] ));
 sky130_fd_sc_hd__dfrtp_2 _1347_ (.CLK(B_in_serial_clk),
    .D(_0294_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[98] ));
 sky130_fd_sc_hd__dfrtp_2 _1348_ (.CLK(B_in_serial_clk),
    .D(_0295_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[99] ));
 sky130_fd_sc_hd__dfrtp_2 _1349_ (.CLK(B_in_serial_clk),
    .D(_0296_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[100] ));
 sky130_fd_sc_hd__dfrtp_2 _1350_ (.CLK(B_in_serial_clk),
    .D(_0297_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[101] ));
 sky130_fd_sc_hd__dfrtp_2 _1351_ (.CLK(B_in_serial_clk),
    .D(_0298_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[102] ));
 sky130_fd_sc_hd__dfrtp_2 _1352_ (.CLK(B_in_serial_clk),
    .D(_0299_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[103] ));
 sky130_fd_sc_hd__dfrtp_2 _1353_ (.CLK(B_in_serial_clk),
    .D(_0300_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[104] ));
 sky130_fd_sc_hd__dfrtp_2 _1354_ (.CLK(B_in_serial_clk),
    .D(_0301_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[105] ));
 sky130_fd_sc_hd__dfrtp_2 _1355_ (.CLK(B_in_serial_clk),
    .D(_0302_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[106] ));
 sky130_fd_sc_hd__dfrtp_2 _1356_ (.CLK(B_in_serial_clk),
    .D(_0303_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[107] ));
 sky130_fd_sc_hd__dfrtp_2 _1357_ (.CLK(B_in_serial_clk),
    .D(_0304_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[108] ));
 sky130_fd_sc_hd__dfrtp_2 _1358_ (.CLK(B_in_serial_clk),
    .D(_0305_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[109] ));
 sky130_fd_sc_hd__dfrtp_2 _1359_ (.CLK(B_in_serial_clk),
    .D(_0306_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[110] ));
 sky130_fd_sc_hd__dfrtp_2 _1360_ (.CLK(B_in_serial_clk),
    .D(_0307_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[111] ));
 sky130_fd_sc_hd__dfrtp_2 _1361_ (.CLK(B_in_serial_clk),
    .D(_0308_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[112] ));
 sky130_fd_sc_hd__dfrtp_2 _1362_ (.CLK(B_in_serial_clk),
    .D(_0309_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[113] ));
 sky130_fd_sc_hd__dfrtp_2 _1363_ (.CLK(B_in_serial_clk),
    .D(_0310_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[114] ));
 sky130_fd_sc_hd__dfrtp_2 _1364_ (.CLK(B_in_serial_clk),
    .D(_0311_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[115] ));
 sky130_fd_sc_hd__dfrtp_2 _1365_ (.CLK(B_in_serial_clk),
    .D(_0312_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[116] ));
 sky130_fd_sc_hd__dfrtp_2 _1366_ (.CLK(B_in_serial_clk),
    .D(_0313_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[117] ));
 sky130_fd_sc_hd__dfrtp_2 _1367_ (.CLK(B_in_serial_clk),
    .D(_0314_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[118] ));
 sky130_fd_sc_hd__dfrtp_2 _1368_ (.CLK(B_in_serial_clk),
    .D(_0315_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[119] ));
 sky130_fd_sc_hd__dfrtp_2 _1369_ (.CLK(B_in_serial_clk),
    .D(_0316_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[120] ));
 sky130_fd_sc_hd__dfrtp_2 _1370_ (.CLK(B_in_serial_clk),
    .D(_0317_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[121] ));
 sky130_fd_sc_hd__dfrtp_2 _1371_ (.CLK(B_in_serial_clk),
    .D(_0318_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[122] ));
 sky130_fd_sc_hd__dfrtp_2 _1372_ (.CLK(B_in_serial_clk),
    .D(_0319_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[123] ));
 sky130_fd_sc_hd__dfrtp_2 _1373_ (.CLK(B_in_serial_clk),
    .D(_0320_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[124] ));
 sky130_fd_sc_hd__dfrtp_2 _1374_ (.CLK(B_in_serial_clk),
    .D(_0321_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[125] ));
 sky130_fd_sc_hd__dfrtp_2 _1375_ (.CLK(B_in_serial_clk),
    .D(_0322_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[126] ));
 sky130_fd_sc_hd__dfrtp_2 _1376_ (.CLK(B_in_serial_clk),
    .D(_0323_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[127] ));
 sky130_fd_sc_hd__dfrtp_2 _1377_ (.CLK(B_in_serial_clk),
    .D(_0324_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_shift_reg[0] ));
 sky130_fd_sc_hd__dfrtp_2 _1378_ (.CLK(A_in_serial_clk),
    .D(_0325_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_A.kept_shift_reg[0] ));
 sky130_fd_sc_hd__dfrtp_2 _1379_ (.CLK(clk),
    .D(_0004_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\systolic_inst.ce_local ));
 sky130_fd_sc_hd__dfrtp_2 _1380_ (.CLK(clk),
    .D(_0003_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(done));
 sky130_fd_sc_hd__dfrtp_2 _1381_ (.CLK(clk),
    .D(_0326_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\ser_C.bit_idx[0] ));
 sky130_fd_sc_hd__dfrtp_2 _1382_ (.CLK(clk),
    .D(_0327_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\ser_C.bit_idx[1] ));
 sky130_fd_sc_hd__dfrtp_2 _1383_ (.CLK(clk),
    .D(_0328_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\ser_C.bit_idx[2] ));
 sky130_fd_sc_hd__dfrtp_2 _1384_ (.CLK(clk),
    .D(_0329_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\ser_C.bit_idx[3] ));
 sky130_fd_sc_hd__dfrtp_2 _1385_ (.CLK(clk),
    .D(_0330_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\ser_C.bit_idx[4] ));
 sky130_fd_sc_hd__dfrtp_2 _1386_ (.CLK(clk),
    .D(_0331_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\ser_C.bit_idx[5] ));
 sky130_fd_sc_hd__dfrtp_2 _1387_ (.CLK(clk),
    .D(_0332_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\ser_C.bit_idx[6] ));
 sky130_fd_sc_hd__dfrtp_2 _1388_ (.CLK(clk),
    .D(_0333_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\ser_C.bit_idx[7] ));
 sky130_fd_sc_hd__dfrtp_2 _1389_ (.CLK(clk),
    .D(_0334_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\ser_C.bit_idx[8] ));
 sky130_fd_sc_hd__dfrtp_2 _1390_ (.CLK(clk),
    .D(_0335_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\ser_C.bit_idx[9] ));
 sky130_fd_sc_hd__dfrtp_2 _1391_ (.CLK(B_in_serial_clk),
    .D(_0336_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\deser_B.kept_receiving ));
 sky130_fd_sc_hd__dfrtp_2 _1392_ (.CLK(clk),
    .D(_0002_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(C_out_frame_sync));
 sky130_fd_sc_hd__dfrtp_2 _1393_ (.CLK(clk),
    .D(_0337_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\ser_C.kept_bit_idx[0] ));
 sky130_fd_sc_hd__dfrtp_2 _1394_ (.CLK(clk),
    .D(_0338_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\ser_C.kept_bit_idx[1] ));
 sky130_fd_sc_hd__dfrtp_2 _1395_ (.CLK(clk),
    .D(_0339_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\ser_C.kept_bit_idx[2] ));
 sky130_fd_sc_hd__dfrtp_2 _1396_ (.CLK(clk),
    .D(_0340_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\ser_C.kept_bit_idx[3] ));
 sky130_fd_sc_hd__dfrtp_2 _1397_ (.CLK(clk),
    .D(_0341_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\ser_C.kept_bit_idx[4] ));
 sky130_fd_sc_hd__dfrtp_2 _1398_ (.CLK(clk),
    .D(_0342_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\ser_C.kept_bit_idx[5] ));
 sky130_fd_sc_hd__dfrtp_2 _1399_ (.CLK(clk),
    .D(_0343_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\ser_C.kept_bit_idx[6] ));
 sky130_fd_sc_hd__dfrtp_2 _1400_ (.CLK(clk),
    .D(_0344_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\ser_C.kept_bit_idx[7] ));
 sky130_fd_sc_hd__dfrtp_2 _1401_ (.CLK(clk),
    .D(_0345_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\ser_C.kept_bit_idx[8] ));
 sky130_fd_sc_hd__dfrtp_2 _1402_ (.CLK(clk),
    .D(_0346_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\ser_C.kept_bit_idx[9] ));
 sky130_fd_sc_hd__conb_1 _1403_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(C_out_serial_data));
 sky130_fd_sc_hd__conb_1 _1404_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[0] ));
 sky130_fd_sc_hd__conb_1 _1405_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[1] ));
 sky130_fd_sc_hd__conb_1 _1406_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[2] ));
 sky130_fd_sc_hd__conb_1 _1407_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[3] ));
 sky130_fd_sc_hd__conb_1 _1408_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[4] ));
 sky130_fd_sc_hd__conb_1 _1409_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[5] ));
 sky130_fd_sc_hd__conb_1 _1410_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[6] ));
 sky130_fd_sc_hd__conb_1 _1411_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[7] ));
 sky130_fd_sc_hd__conb_1 _1412_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[8] ));
 sky130_fd_sc_hd__conb_1 _1413_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[9] ));
 sky130_fd_sc_hd__conb_1 _1414_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[10] ));
 sky130_fd_sc_hd__conb_1 _1415_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[11] ));
 sky130_fd_sc_hd__conb_1 _1416_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[12] ));
 sky130_fd_sc_hd__conb_1 _1417_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[13] ));
 sky130_fd_sc_hd__conb_1 _1418_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[14] ));
 sky130_fd_sc_hd__conb_1 _1419_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[15] ));
 sky130_fd_sc_hd__conb_1 _1420_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[16] ));
 sky130_fd_sc_hd__conb_1 _1421_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[17] ));
 sky130_fd_sc_hd__conb_1 _1422_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[18] ));
 sky130_fd_sc_hd__conb_1 _1423_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[19] ));
 sky130_fd_sc_hd__conb_1 _1424_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[20] ));
 sky130_fd_sc_hd__conb_1 _1425_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[21] ));
 sky130_fd_sc_hd__conb_1 _1426_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[22] ));
 sky130_fd_sc_hd__conb_1 _1427_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[23] ));
 sky130_fd_sc_hd__conb_1 _1428_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[24] ));
 sky130_fd_sc_hd__conb_1 _1429_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[25] ));
 sky130_fd_sc_hd__conb_1 _1430_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[26] ));
 sky130_fd_sc_hd__conb_1 _1431_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[27] ));
 sky130_fd_sc_hd__conb_1 _1432_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[28] ));
 sky130_fd_sc_hd__conb_1 _1433_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[29] ));
 sky130_fd_sc_hd__conb_1 _1434_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[30] ));
 sky130_fd_sc_hd__conb_1 _1435_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[31] ));
 sky130_fd_sc_hd__conb_1 _1436_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[32] ));
 sky130_fd_sc_hd__conb_1 _1437_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[33] ));
 sky130_fd_sc_hd__conb_1 _1438_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[34] ));
 sky130_fd_sc_hd__conb_1 _1439_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[35] ));
 sky130_fd_sc_hd__conb_1 _1440_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[36] ));
 sky130_fd_sc_hd__conb_1 _1441_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[37] ));
 sky130_fd_sc_hd__conb_1 _1442_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[38] ));
 sky130_fd_sc_hd__conb_1 _1443_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[39] ));
 sky130_fd_sc_hd__conb_1 _1444_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[40] ));
 sky130_fd_sc_hd__conb_1 _1445_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[41] ));
 sky130_fd_sc_hd__conb_1 _1446_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[42] ));
 sky130_fd_sc_hd__conb_1 _1447_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[43] ));
 sky130_fd_sc_hd__conb_1 _1448_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[44] ));
 sky130_fd_sc_hd__conb_1 _1449_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[45] ));
 sky130_fd_sc_hd__conb_1 _1450_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[46] ));
 sky130_fd_sc_hd__conb_1 _1451_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[47] ));
 sky130_fd_sc_hd__conb_1 _1452_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[48] ));
 sky130_fd_sc_hd__conb_1 _1453_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[49] ));
 sky130_fd_sc_hd__conb_1 _1454_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[50] ));
 sky130_fd_sc_hd__conb_1 _1455_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[51] ));
 sky130_fd_sc_hd__conb_1 _1456_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[52] ));
 sky130_fd_sc_hd__conb_1 _1457_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[53] ));
 sky130_fd_sc_hd__conb_1 _1458_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[54] ));
 sky130_fd_sc_hd__conb_1 _1459_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[55] ));
 sky130_fd_sc_hd__conb_1 _1460_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[56] ));
 sky130_fd_sc_hd__conb_1 _1461_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[57] ));
 sky130_fd_sc_hd__conb_1 _1462_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[58] ));
 sky130_fd_sc_hd__conb_1 _1463_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[59] ));
 sky130_fd_sc_hd__conb_1 _1464_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[60] ));
 sky130_fd_sc_hd__conb_1 _1465_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[61] ));
 sky130_fd_sc_hd__conb_1 _1466_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[62] ));
 sky130_fd_sc_hd__conb_1 _1467_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[63] ));
 sky130_fd_sc_hd__conb_1 _1468_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[64] ));
 sky130_fd_sc_hd__conb_1 _1469_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[65] ));
 sky130_fd_sc_hd__conb_1 _1470_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[66] ));
 sky130_fd_sc_hd__conb_1 _1471_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[67] ));
 sky130_fd_sc_hd__conb_1 _1472_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[68] ));
 sky130_fd_sc_hd__conb_1 _1473_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[69] ));
 sky130_fd_sc_hd__conb_1 _1474_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[70] ));
 sky130_fd_sc_hd__conb_1 _1475_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[71] ));
 sky130_fd_sc_hd__conb_1 _1476_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[72] ));
 sky130_fd_sc_hd__conb_1 _1477_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[73] ));
 sky130_fd_sc_hd__conb_1 _1478_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[74] ));
 sky130_fd_sc_hd__conb_1 _1479_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[75] ));
 sky130_fd_sc_hd__conb_1 _1480_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[76] ));
 sky130_fd_sc_hd__conb_1 _1481_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[77] ));
 sky130_fd_sc_hd__conb_1 _1482_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[78] ));
 sky130_fd_sc_hd__conb_1 _1483_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[79] ));
 sky130_fd_sc_hd__conb_1 _1484_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[80] ));
 sky130_fd_sc_hd__conb_1 _1485_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[81] ));
 sky130_fd_sc_hd__conb_1 _1486_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[82] ));
 sky130_fd_sc_hd__conb_1 _1487_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[83] ));
 sky130_fd_sc_hd__conb_1 _1488_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[84] ));
 sky130_fd_sc_hd__conb_1 _1489_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[85] ));
 sky130_fd_sc_hd__conb_1 _1490_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[86] ));
 sky130_fd_sc_hd__conb_1 _1491_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[87] ));
 sky130_fd_sc_hd__conb_1 _1492_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[88] ));
 sky130_fd_sc_hd__conb_1 _1493_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[89] ));
 sky130_fd_sc_hd__conb_1 _1494_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[90] ));
 sky130_fd_sc_hd__conb_1 _1495_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[91] ));
 sky130_fd_sc_hd__conb_1 _1496_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[92] ));
 sky130_fd_sc_hd__conb_1 _1497_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[93] ));
 sky130_fd_sc_hd__conb_1 _1498_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[94] ));
 sky130_fd_sc_hd__conb_1 _1499_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[95] ));
 sky130_fd_sc_hd__conb_1 _1500_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[96] ));
 sky130_fd_sc_hd__conb_1 _1501_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[97] ));
 sky130_fd_sc_hd__conb_1 _1502_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[98] ));
 sky130_fd_sc_hd__conb_1 _1503_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[99] ));
 sky130_fd_sc_hd__conb_1 _1504_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[100] ));
 sky130_fd_sc_hd__conb_1 _1505_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[101] ));
 sky130_fd_sc_hd__conb_1 _1506_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[102] ));
 sky130_fd_sc_hd__conb_1 _1507_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[103] ));
 sky130_fd_sc_hd__conb_1 _1508_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[104] ));
 sky130_fd_sc_hd__conb_1 _1509_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[105] ));
 sky130_fd_sc_hd__conb_1 _1510_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[106] ));
 sky130_fd_sc_hd__conb_1 _1511_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[107] ));
 sky130_fd_sc_hd__conb_1 _1512_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[108] ));
 sky130_fd_sc_hd__conb_1 _1513_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[109] ));
 sky130_fd_sc_hd__conb_1 _1514_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[110] ));
 sky130_fd_sc_hd__conb_1 _1515_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[111] ));
 sky130_fd_sc_hd__conb_1 _1516_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[112] ));
 sky130_fd_sc_hd__conb_1 _1517_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[113] ));
 sky130_fd_sc_hd__conb_1 _1518_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[114] ));
 sky130_fd_sc_hd__conb_1 _1519_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[115] ));
 sky130_fd_sc_hd__conb_1 _1520_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[116] ));
 sky130_fd_sc_hd__conb_1 _1521_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[117] ));
 sky130_fd_sc_hd__conb_1 _1522_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[118] ));
 sky130_fd_sc_hd__conb_1 _1523_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[119] ));
 sky130_fd_sc_hd__conb_1 _1524_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[120] ));
 sky130_fd_sc_hd__conb_1 _1525_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[121] ));
 sky130_fd_sc_hd__conb_1 _1526_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[122] ));
 sky130_fd_sc_hd__conb_1 _1527_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[123] ));
 sky130_fd_sc_hd__conb_1 _1528_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[124] ));
 sky130_fd_sc_hd__conb_1 _1529_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[125] ));
 sky130_fd_sc_hd__conb_1 _1530_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[126] ));
 sky130_fd_sc_hd__conb_1 _1531_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[127] ));
 sky130_fd_sc_hd__conb_1 _1532_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[128] ));
 sky130_fd_sc_hd__conb_1 _1533_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[129] ));
 sky130_fd_sc_hd__conb_1 _1534_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[130] ));
 sky130_fd_sc_hd__conb_1 _1535_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[131] ));
 sky130_fd_sc_hd__conb_1 _1536_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[132] ));
 sky130_fd_sc_hd__conb_1 _1537_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[133] ));
 sky130_fd_sc_hd__conb_1 _1538_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[134] ));
 sky130_fd_sc_hd__conb_1 _1539_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[135] ));
 sky130_fd_sc_hd__conb_1 _1540_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[136] ));
 sky130_fd_sc_hd__conb_1 _1541_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[137] ));
 sky130_fd_sc_hd__conb_1 _1542_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[138] ));
 sky130_fd_sc_hd__conb_1 _1543_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[139] ));
 sky130_fd_sc_hd__conb_1 _1544_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[140] ));
 sky130_fd_sc_hd__conb_1 _1545_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[141] ));
 sky130_fd_sc_hd__conb_1 _1546_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[142] ));
 sky130_fd_sc_hd__conb_1 _1547_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[143] ));
 sky130_fd_sc_hd__conb_1 _1548_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[144] ));
 sky130_fd_sc_hd__conb_1 _1549_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[145] ));
 sky130_fd_sc_hd__conb_1 _1550_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[146] ));
 sky130_fd_sc_hd__conb_1 _1551_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[147] ));
 sky130_fd_sc_hd__conb_1 _1552_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[148] ));
 sky130_fd_sc_hd__conb_1 _1553_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[149] ));
 sky130_fd_sc_hd__conb_1 _1554_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[150] ));
 sky130_fd_sc_hd__conb_1 _1555_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[151] ));
 sky130_fd_sc_hd__conb_1 _1556_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[152] ));
 sky130_fd_sc_hd__conb_1 _1557_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[153] ));
 sky130_fd_sc_hd__conb_1 _1558_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[154] ));
 sky130_fd_sc_hd__conb_1 _1559_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[155] ));
 sky130_fd_sc_hd__conb_1 _1560_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[156] ));
 sky130_fd_sc_hd__conb_1 _1561_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[157] ));
 sky130_fd_sc_hd__conb_1 _1562_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[158] ));
 sky130_fd_sc_hd__conb_1 _1563_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[159] ));
 sky130_fd_sc_hd__conb_1 _1564_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[160] ));
 sky130_fd_sc_hd__conb_1 _1565_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[161] ));
 sky130_fd_sc_hd__conb_1 _1566_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[162] ));
 sky130_fd_sc_hd__conb_1 _1567_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[163] ));
 sky130_fd_sc_hd__conb_1 _1568_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[164] ));
 sky130_fd_sc_hd__conb_1 _1569_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[165] ));
 sky130_fd_sc_hd__conb_1 _1570_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[166] ));
 sky130_fd_sc_hd__conb_1 _1571_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[167] ));
 sky130_fd_sc_hd__conb_1 _1572_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[168] ));
 sky130_fd_sc_hd__conb_1 _1573_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[169] ));
 sky130_fd_sc_hd__conb_1 _1574_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[170] ));
 sky130_fd_sc_hd__conb_1 _1575_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[171] ));
 sky130_fd_sc_hd__conb_1 _1576_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[172] ));
 sky130_fd_sc_hd__conb_1 _1577_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[173] ));
 sky130_fd_sc_hd__conb_1 _1578_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[174] ));
 sky130_fd_sc_hd__conb_1 _1579_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[175] ));
 sky130_fd_sc_hd__conb_1 _1580_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[176] ));
 sky130_fd_sc_hd__conb_1 _1581_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[177] ));
 sky130_fd_sc_hd__conb_1 _1582_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[178] ));
 sky130_fd_sc_hd__conb_1 _1583_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[179] ));
 sky130_fd_sc_hd__conb_1 _1584_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[180] ));
 sky130_fd_sc_hd__conb_1 _1585_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[181] ));
 sky130_fd_sc_hd__conb_1 _1586_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[182] ));
 sky130_fd_sc_hd__conb_1 _1587_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[183] ));
 sky130_fd_sc_hd__conb_1 _1588_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[184] ));
 sky130_fd_sc_hd__conb_1 _1589_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[185] ));
 sky130_fd_sc_hd__conb_1 _1590_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[186] ));
 sky130_fd_sc_hd__conb_1 _1591_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[187] ));
 sky130_fd_sc_hd__conb_1 _1592_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[188] ));
 sky130_fd_sc_hd__conb_1 _1593_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[189] ));
 sky130_fd_sc_hd__conb_1 _1594_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[190] ));
 sky130_fd_sc_hd__conb_1 _1595_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[191] ));
 sky130_fd_sc_hd__conb_1 _1596_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[192] ));
 sky130_fd_sc_hd__conb_1 _1597_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[193] ));
 sky130_fd_sc_hd__conb_1 _1598_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[194] ));
 sky130_fd_sc_hd__conb_1 _1599_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[195] ));
 sky130_fd_sc_hd__conb_1 _1600_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[196] ));
 sky130_fd_sc_hd__conb_1 _1601_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[197] ));
 sky130_fd_sc_hd__conb_1 _1602_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[198] ));
 sky130_fd_sc_hd__conb_1 _1603_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[199] ));
 sky130_fd_sc_hd__conb_1 _1604_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[200] ));
 sky130_fd_sc_hd__conb_1 _1605_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[201] ));
 sky130_fd_sc_hd__conb_1 _1606_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[202] ));
 sky130_fd_sc_hd__conb_1 _1607_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[203] ));
 sky130_fd_sc_hd__conb_1 _1608_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[204] ));
 sky130_fd_sc_hd__conb_1 _1609_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[205] ));
 sky130_fd_sc_hd__conb_1 _1610_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[206] ));
 sky130_fd_sc_hd__conb_1 _1611_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[207] ));
 sky130_fd_sc_hd__conb_1 _1612_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[208] ));
 sky130_fd_sc_hd__conb_1 _1613_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[209] ));
 sky130_fd_sc_hd__conb_1 _1614_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[210] ));
 sky130_fd_sc_hd__conb_1 _1615_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[211] ));
 sky130_fd_sc_hd__conb_1 _1616_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[212] ));
 sky130_fd_sc_hd__conb_1 _1617_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[213] ));
 sky130_fd_sc_hd__conb_1 _1618_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[214] ));
 sky130_fd_sc_hd__conb_1 _1619_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[215] ));
 sky130_fd_sc_hd__conb_1 _1620_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[216] ));
 sky130_fd_sc_hd__conb_1 _1621_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[217] ));
 sky130_fd_sc_hd__conb_1 _1622_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[218] ));
 sky130_fd_sc_hd__conb_1 _1623_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[219] ));
 sky130_fd_sc_hd__conb_1 _1624_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[220] ));
 sky130_fd_sc_hd__conb_1 _1625_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[221] ));
 sky130_fd_sc_hd__conb_1 _1626_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[222] ));
 sky130_fd_sc_hd__conb_1 _1627_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[223] ));
 sky130_fd_sc_hd__conb_1 _1628_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[224] ));
 sky130_fd_sc_hd__conb_1 _1629_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[225] ));
 sky130_fd_sc_hd__conb_1 _1630_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[226] ));
 sky130_fd_sc_hd__conb_1 _1631_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[227] ));
 sky130_fd_sc_hd__conb_1 _1632_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[228] ));
 sky130_fd_sc_hd__conb_1 _1633_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[229] ));
 sky130_fd_sc_hd__conb_1 _1634_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[230] ));
 sky130_fd_sc_hd__conb_1 _1635_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[231] ));
 sky130_fd_sc_hd__conb_1 _1636_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[232] ));
 sky130_fd_sc_hd__conb_1 _1637_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[233] ));
 sky130_fd_sc_hd__conb_1 _1638_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[234] ));
 sky130_fd_sc_hd__conb_1 _1639_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[235] ));
 sky130_fd_sc_hd__conb_1 _1640_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[236] ));
 sky130_fd_sc_hd__conb_1 _1641_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[237] ));
 sky130_fd_sc_hd__conb_1 _1642_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[238] ));
 sky130_fd_sc_hd__conb_1 _1643_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[239] ));
 sky130_fd_sc_hd__conb_1 _1644_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[240] ));
 sky130_fd_sc_hd__conb_1 _1645_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[241] ));
 sky130_fd_sc_hd__conb_1 _1646_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[242] ));
 sky130_fd_sc_hd__conb_1 _1647_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[243] ));
 sky130_fd_sc_hd__conb_1 _1648_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[244] ));
 sky130_fd_sc_hd__conb_1 _1649_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[245] ));
 sky130_fd_sc_hd__conb_1 _1650_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[246] ));
 sky130_fd_sc_hd__conb_1 _1651_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[247] ));
 sky130_fd_sc_hd__conb_1 _1652_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[248] ));
 sky130_fd_sc_hd__conb_1 _1653_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[249] ));
 sky130_fd_sc_hd__conb_1 _1654_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[250] ));
 sky130_fd_sc_hd__conb_1 _1655_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[251] ));
 sky130_fd_sc_hd__conb_1 _1656_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[252] ));
 sky130_fd_sc_hd__conb_1 _1657_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[253] ));
 sky130_fd_sc_hd__conb_1 _1658_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[254] ));
 sky130_fd_sc_hd__conb_1 _1659_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[255] ));
 sky130_fd_sc_hd__conb_1 _1660_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[256] ));
 sky130_fd_sc_hd__conb_1 _1661_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[257] ));
 sky130_fd_sc_hd__conb_1 _1662_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[258] ));
 sky130_fd_sc_hd__conb_1 _1663_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[259] ));
 sky130_fd_sc_hd__conb_1 _1664_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[260] ));
 sky130_fd_sc_hd__conb_1 _1665_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[261] ));
 sky130_fd_sc_hd__conb_1 _1666_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[262] ));
 sky130_fd_sc_hd__conb_1 _1667_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[263] ));
 sky130_fd_sc_hd__conb_1 _1668_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[264] ));
 sky130_fd_sc_hd__conb_1 _1669_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[265] ));
 sky130_fd_sc_hd__conb_1 _1670_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[266] ));
 sky130_fd_sc_hd__conb_1 _1671_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[267] ));
 sky130_fd_sc_hd__conb_1 _1672_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[268] ));
 sky130_fd_sc_hd__conb_1 _1673_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[269] ));
 sky130_fd_sc_hd__conb_1 _1674_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[270] ));
 sky130_fd_sc_hd__conb_1 _1675_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[271] ));
 sky130_fd_sc_hd__conb_1 _1676_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[272] ));
 sky130_fd_sc_hd__conb_1 _1677_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[273] ));
 sky130_fd_sc_hd__conb_1 _1678_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[274] ));
 sky130_fd_sc_hd__conb_1 _1679_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[275] ));
 sky130_fd_sc_hd__conb_1 _1680_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[276] ));
 sky130_fd_sc_hd__conb_1 _1681_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[277] ));
 sky130_fd_sc_hd__conb_1 _1682_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[278] ));
 sky130_fd_sc_hd__conb_1 _1683_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[279] ));
 sky130_fd_sc_hd__conb_1 _1684_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[280] ));
 sky130_fd_sc_hd__conb_1 _1685_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[281] ));
 sky130_fd_sc_hd__conb_1 _1686_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[282] ));
 sky130_fd_sc_hd__conb_1 _1687_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[283] ));
 sky130_fd_sc_hd__conb_1 _1688_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[284] ));
 sky130_fd_sc_hd__conb_1 _1689_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[285] ));
 sky130_fd_sc_hd__conb_1 _1690_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[286] ));
 sky130_fd_sc_hd__conb_1 _1691_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[287] ));
 sky130_fd_sc_hd__conb_1 _1692_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[288] ));
 sky130_fd_sc_hd__conb_1 _1693_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[289] ));
 sky130_fd_sc_hd__conb_1 _1694_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[290] ));
 sky130_fd_sc_hd__conb_1 _1695_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[291] ));
 sky130_fd_sc_hd__conb_1 _1696_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[292] ));
 sky130_fd_sc_hd__conb_1 _1697_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[293] ));
 sky130_fd_sc_hd__conb_1 _1698_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[294] ));
 sky130_fd_sc_hd__conb_1 _1699_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[295] ));
 sky130_fd_sc_hd__conb_1 _1700_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[296] ));
 sky130_fd_sc_hd__conb_1 _1701_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[297] ));
 sky130_fd_sc_hd__conb_1 _1702_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[298] ));
 sky130_fd_sc_hd__conb_1 _1703_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[299] ));
 sky130_fd_sc_hd__conb_1 _1704_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[300] ));
 sky130_fd_sc_hd__conb_1 _1705_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[301] ));
 sky130_fd_sc_hd__conb_1 _1706_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[302] ));
 sky130_fd_sc_hd__conb_1 _1707_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[303] ));
 sky130_fd_sc_hd__conb_1 _1708_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[304] ));
 sky130_fd_sc_hd__conb_1 _1709_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[305] ));
 sky130_fd_sc_hd__conb_1 _1710_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[306] ));
 sky130_fd_sc_hd__conb_1 _1711_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[307] ));
 sky130_fd_sc_hd__conb_1 _1712_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[308] ));
 sky130_fd_sc_hd__conb_1 _1713_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[309] ));
 sky130_fd_sc_hd__conb_1 _1714_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[310] ));
 sky130_fd_sc_hd__conb_1 _1715_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[311] ));
 sky130_fd_sc_hd__conb_1 _1716_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[312] ));
 sky130_fd_sc_hd__conb_1 _1717_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[313] ));
 sky130_fd_sc_hd__conb_1 _1718_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[314] ));
 sky130_fd_sc_hd__conb_1 _1719_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[315] ));
 sky130_fd_sc_hd__conb_1 _1720_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[316] ));
 sky130_fd_sc_hd__conb_1 _1721_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[317] ));
 sky130_fd_sc_hd__conb_1 _1722_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[318] ));
 sky130_fd_sc_hd__conb_1 _1723_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[319] ));
 sky130_fd_sc_hd__conb_1 _1724_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[320] ));
 sky130_fd_sc_hd__conb_1 _1725_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[321] ));
 sky130_fd_sc_hd__conb_1 _1726_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[322] ));
 sky130_fd_sc_hd__conb_1 _1727_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[323] ));
 sky130_fd_sc_hd__conb_1 _1728_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[324] ));
 sky130_fd_sc_hd__conb_1 _1729_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[325] ));
 sky130_fd_sc_hd__conb_1 _1730_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[326] ));
 sky130_fd_sc_hd__conb_1 _1731_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[327] ));
 sky130_fd_sc_hd__conb_1 _1732_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[328] ));
 sky130_fd_sc_hd__conb_1 _1733_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[329] ));
 sky130_fd_sc_hd__conb_1 _1734_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[330] ));
 sky130_fd_sc_hd__conb_1 _1735_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[331] ));
 sky130_fd_sc_hd__conb_1 _1736_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[332] ));
 sky130_fd_sc_hd__conb_1 _1737_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[333] ));
 sky130_fd_sc_hd__conb_1 _1738_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[334] ));
 sky130_fd_sc_hd__conb_1 _1739_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[335] ));
 sky130_fd_sc_hd__conb_1 _1740_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[336] ));
 sky130_fd_sc_hd__conb_1 _1741_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[337] ));
 sky130_fd_sc_hd__conb_1 _1742_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[338] ));
 sky130_fd_sc_hd__conb_1 _1743_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[339] ));
 sky130_fd_sc_hd__conb_1 _1744_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[340] ));
 sky130_fd_sc_hd__conb_1 _1745_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[341] ));
 sky130_fd_sc_hd__conb_1 _1746_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[342] ));
 sky130_fd_sc_hd__conb_1 _1747_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[343] ));
 sky130_fd_sc_hd__conb_1 _1748_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[344] ));
 sky130_fd_sc_hd__conb_1 _1749_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[345] ));
 sky130_fd_sc_hd__conb_1 _1750_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[346] ));
 sky130_fd_sc_hd__conb_1 _1751_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[347] ));
 sky130_fd_sc_hd__conb_1 _1752_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[348] ));
 sky130_fd_sc_hd__conb_1 _1753_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[349] ));
 sky130_fd_sc_hd__conb_1 _1754_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[350] ));
 sky130_fd_sc_hd__conb_1 _1755_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[351] ));
 sky130_fd_sc_hd__conb_1 _1756_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[352] ));
 sky130_fd_sc_hd__conb_1 _1757_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[353] ));
 sky130_fd_sc_hd__conb_1 _1758_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[354] ));
 sky130_fd_sc_hd__conb_1 _1759_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[355] ));
 sky130_fd_sc_hd__conb_1 _1760_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[356] ));
 sky130_fd_sc_hd__conb_1 _1761_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[357] ));
 sky130_fd_sc_hd__conb_1 _1762_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[358] ));
 sky130_fd_sc_hd__conb_1 _1763_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[359] ));
 sky130_fd_sc_hd__conb_1 _1764_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[360] ));
 sky130_fd_sc_hd__conb_1 _1765_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[361] ));
 sky130_fd_sc_hd__conb_1 _1766_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[362] ));
 sky130_fd_sc_hd__conb_1 _1767_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[363] ));
 sky130_fd_sc_hd__conb_1 _1768_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[364] ));
 sky130_fd_sc_hd__conb_1 _1769_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[365] ));
 sky130_fd_sc_hd__conb_1 _1770_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[366] ));
 sky130_fd_sc_hd__conb_1 _1771_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[367] ));
 sky130_fd_sc_hd__conb_1 _1772_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[368] ));
 sky130_fd_sc_hd__conb_1 _1773_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[369] ));
 sky130_fd_sc_hd__conb_1 _1774_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[370] ));
 sky130_fd_sc_hd__conb_1 _1775_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[371] ));
 sky130_fd_sc_hd__conb_1 _1776_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[372] ));
 sky130_fd_sc_hd__conb_1 _1777_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[373] ));
 sky130_fd_sc_hd__conb_1 _1778_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[374] ));
 sky130_fd_sc_hd__conb_1 _1779_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[375] ));
 sky130_fd_sc_hd__conb_1 _1780_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[376] ));
 sky130_fd_sc_hd__conb_1 _1781_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[377] ));
 sky130_fd_sc_hd__conb_1 _1782_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[378] ));
 sky130_fd_sc_hd__conb_1 _1783_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[379] ));
 sky130_fd_sc_hd__conb_1 _1784_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[380] ));
 sky130_fd_sc_hd__conb_1 _1785_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[381] ));
 sky130_fd_sc_hd__conb_1 _1786_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[382] ));
 sky130_fd_sc_hd__conb_1 _1787_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[383] ));
 sky130_fd_sc_hd__conb_1 _1788_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[384] ));
 sky130_fd_sc_hd__conb_1 _1789_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[385] ));
 sky130_fd_sc_hd__conb_1 _1790_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[386] ));
 sky130_fd_sc_hd__conb_1 _1791_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[387] ));
 sky130_fd_sc_hd__conb_1 _1792_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[388] ));
 sky130_fd_sc_hd__conb_1 _1793_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[389] ));
 sky130_fd_sc_hd__conb_1 _1794_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[390] ));
 sky130_fd_sc_hd__conb_1 _1795_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[391] ));
 sky130_fd_sc_hd__conb_1 _1796_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[392] ));
 sky130_fd_sc_hd__conb_1 _1797_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[393] ));
 sky130_fd_sc_hd__conb_1 _1798_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[394] ));
 sky130_fd_sc_hd__conb_1 _1799_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[395] ));
 sky130_fd_sc_hd__conb_1 _1800_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[396] ));
 sky130_fd_sc_hd__conb_1 _1801_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[397] ));
 sky130_fd_sc_hd__conb_1 _1802_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[398] ));
 sky130_fd_sc_hd__conb_1 _1803_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[399] ));
 sky130_fd_sc_hd__conb_1 _1804_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[400] ));
 sky130_fd_sc_hd__conb_1 _1805_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[401] ));
 sky130_fd_sc_hd__conb_1 _1806_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[402] ));
 sky130_fd_sc_hd__conb_1 _1807_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[403] ));
 sky130_fd_sc_hd__conb_1 _1808_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[404] ));
 sky130_fd_sc_hd__conb_1 _1809_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[405] ));
 sky130_fd_sc_hd__conb_1 _1810_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[406] ));
 sky130_fd_sc_hd__conb_1 _1811_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[407] ));
 sky130_fd_sc_hd__conb_1 _1812_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[408] ));
 sky130_fd_sc_hd__conb_1 _1813_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[409] ));
 sky130_fd_sc_hd__conb_1 _1814_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[410] ));
 sky130_fd_sc_hd__conb_1 _1815_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[411] ));
 sky130_fd_sc_hd__conb_1 _1816_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[412] ));
 sky130_fd_sc_hd__conb_1 _1817_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[413] ));
 sky130_fd_sc_hd__conb_1 _1818_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[414] ));
 sky130_fd_sc_hd__conb_1 _1819_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[415] ));
 sky130_fd_sc_hd__conb_1 _1820_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[416] ));
 sky130_fd_sc_hd__conb_1 _1821_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[417] ));
 sky130_fd_sc_hd__conb_1 _1822_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[418] ));
 sky130_fd_sc_hd__conb_1 _1823_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[419] ));
 sky130_fd_sc_hd__conb_1 _1824_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[420] ));
 sky130_fd_sc_hd__conb_1 _1825_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[421] ));
 sky130_fd_sc_hd__conb_1 _1826_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[422] ));
 sky130_fd_sc_hd__conb_1 _1827_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[423] ));
 sky130_fd_sc_hd__conb_1 _1828_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[424] ));
 sky130_fd_sc_hd__conb_1 _1829_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[425] ));
 sky130_fd_sc_hd__conb_1 _1830_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[426] ));
 sky130_fd_sc_hd__conb_1 _1831_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[427] ));
 sky130_fd_sc_hd__conb_1 _1832_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[428] ));
 sky130_fd_sc_hd__conb_1 _1833_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[429] ));
 sky130_fd_sc_hd__conb_1 _1834_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[430] ));
 sky130_fd_sc_hd__conb_1 _1835_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[431] ));
 sky130_fd_sc_hd__conb_1 _1836_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[432] ));
 sky130_fd_sc_hd__conb_1 _1837_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[433] ));
 sky130_fd_sc_hd__conb_1 _1838_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[434] ));
 sky130_fd_sc_hd__conb_1 _1839_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[435] ));
 sky130_fd_sc_hd__conb_1 _1840_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[436] ));
 sky130_fd_sc_hd__conb_1 _1841_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[437] ));
 sky130_fd_sc_hd__conb_1 _1842_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[438] ));
 sky130_fd_sc_hd__conb_1 _1843_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[439] ));
 sky130_fd_sc_hd__conb_1 _1844_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[440] ));
 sky130_fd_sc_hd__conb_1 _1845_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[441] ));
 sky130_fd_sc_hd__conb_1 _1846_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[442] ));
 sky130_fd_sc_hd__conb_1 _1847_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[443] ));
 sky130_fd_sc_hd__conb_1 _1848_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[444] ));
 sky130_fd_sc_hd__conb_1 _1849_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[445] ));
 sky130_fd_sc_hd__conb_1 _1850_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[446] ));
 sky130_fd_sc_hd__conb_1 _1851_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[447] ));
 sky130_fd_sc_hd__conb_1 _1852_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[448] ));
 sky130_fd_sc_hd__conb_1 _1853_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[449] ));
 sky130_fd_sc_hd__conb_1 _1854_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[450] ));
 sky130_fd_sc_hd__conb_1 _1855_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[451] ));
 sky130_fd_sc_hd__conb_1 _1856_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[452] ));
 sky130_fd_sc_hd__conb_1 _1857_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[453] ));
 sky130_fd_sc_hd__conb_1 _1858_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[454] ));
 sky130_fd_sc_hd__conb_1 _1859_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[455] ));
 sky130_fd_sc_hd__conb_1 _1860_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[456] ));
 sky130_fd_sc_hd__conb_1 _1861_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[457] ));
 sky130_fd_sc_hd__conb_1 _1862_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[458] ));
 sky130_fd_sc_hd__conb_1 _1863_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[459] ));
 sky130_fd_sc_hd__conb_1 _1864_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[460] ));
 sky130_fd_sc_hd__conb_1 _1865_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[461] ));
 sky130_fd_sc_hd__conb_1 _1866_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[462] ));
 sky130_fd_sc_hd__conb_1 _1867_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[463] ));
 sky130_fd_sc_hd__conb_1 _1868_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[464] ));
 sky130_fd_sc_hd__conb_1 _1869_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[465] ));
 sky130_fd_sc_hd__conb_1 _1870_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[466] ));
 sky130_fd_sc_hd__conb_1 _1871_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[467] ));
 sky130_fd_sc_hd__conb_1 _1872_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[468] ));
 sky130_fd_sc_hd__conb_1 _1873_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[469] ));
 sky130_fd_sc_hd__conb_1 _1874_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[470] ));
 sky130_fd_sc_hd__conb_1 _1875_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[471] ));
 sky130_fd_sc_hd__conb_1 _1876_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[472] ));
 sky130_fd_sc_hd__conb_1 _1877_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[473] ));
 sky130_fd_sc_hd__conb_1 _1878_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[474] ));
 sky130_fd_sc_hd__conb_1 _1879_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[475] ));
 sky130_fd_sc_hd__conb_1 _1880_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[476] ));
 sky130_fd_sc_hd__conb_1 _1881_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[477] ));
 sky130_fd_sc_hd__conb_1 _1882_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[478] ));
 sky130_fd_sc_hd__conb_1 _1883_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[479] ));
 sky130_fd_sc_hd__conb_1 _1884_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[480] ));
 sky130_fd_sc_hd__conb_1 _1885_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[481] ));
 sky130_fd_sc_hd__conb_1 _1886_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[482] ));
 sky130_fd_sc_hd__conb_1 _1887_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[483] ));
 sky130_fd_sc_hd__conb_1 _1888_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[484] ));
 sky130_fd_sc_hd__conb_1 _1889_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[485] ));
 sky130_fd_sc_hd__conb_1 _1890_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[486] ));
 sky130_fd_sc_hd__conb_1 _1891_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[487] ));
 sky130_fd_sc_hd__conb_1 _1892_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[488] ));
 sky130_fd_sc_hd__conb_1 _1893_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[489] ));
 sky130_fd_sc_hd__conb_1 _1894_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[490] ));
 sky130_fd_sc_hd__conb_1 _1895_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[491] ));
 sky130_fd_sc_hd__conb_1 _1896_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[492] ));
 sky130_fd_sc_hd__conb_1 _1897_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[493] ));
 sky130_fd_sc_hd__conb_1 _1898_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[494] ));
 sky130_fd_sc_hd__conb_1 _1899_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[495] ));
 sky130_fd_sc_hd__conb_1 _1900_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[496] ));
 sky130_fd_sc_hd__conb_1 _1901_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[497] ));
 sky130_fd_sc_hd__conb_1 _1902_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[498] ));
 sky130_fd_sc_hd__conb_1 _1903_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[499] ));
 sky130_fd_sc_hd__conb_1 _1904_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[500] ));
 sky130_fd_sc_hd__conb_1 _1905_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[501] ));
 sky130_fd_sc_hd__conb_1 _1906_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[502] ));
 sky130_fd_sc_hd__conb_1 _1907_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[503] ));
 sky130_fd_sc_hd__conb_1 _1908_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[504] ));
 sky130_fd_sc_hd__conb_1 _1909_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[505] ));
 sky130_fd_sc_hd__conb_1 _1910_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[506] ));
 sky130_fd_sc_hd__conb_1 _1911_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[507] ));
 sky130_fd_sc_hd__conb_1 _1912_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[508] ));
 sky130_fd_sc_hd__conb_1 _1913_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[509] ));
 sky130_fd_sc_hd__conb_1 _1914_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[510] ));
 sky130_fd_sc_hd__conb_1 _1915_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_shift_reg[511] ));
 sky130_fd_sc_hd__conb_1 _1916_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(\ser_C.kept_transmitting ));
 sky130_fd_sc_hd__buf_2 _1917_ (.A(clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(C_out_serial_clk));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Right_13 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Right_14 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Right_15 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Right_16 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Right_17 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Right_18 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Right_19 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Right_20 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Right_21 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Right_22 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Right_23 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Right_24 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Right_25 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Right_26 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Right_27 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_28_Right_28 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_29_Right_29 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_30_Right_30 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_31_Right_31 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_32_Right_32 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_33_Right_33 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_34_Right_34 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_35_Right_35 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_36_Right_36 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_37_Right_37 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_38_Right_38 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_39_Right_39 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_40_Right_40 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_41_Right_41 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_42_Right_42 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_43_Right_43 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_44_Right_44 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_45_Right_45 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_46_Right_46 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_47_Right_47 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_48_Right_48 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_49_Right_49 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_50_Right_50 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_51_Right_51 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_52_Right_52 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_53_Right_53 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_54_Right_54 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_55_Right_55 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_56_Right_56 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_57_Right_57 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_58_Right_58 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_59_Right_59 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_60_Right_60 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_61_Right_61 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_62_Right_62 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_63_Right_63 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_64_Right_64 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_65_Right_65 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_66 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_67 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_68 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_69 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_70 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_71 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_72 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_73 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_74 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_75 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_76 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_77 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_78 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Left_79 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Left_80 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Left_81 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Left_82 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Left_83 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Left_84 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Left_85 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Left_86 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Left_87 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Left_88 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Left_89 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Left_90 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Left_91 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Left_92 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Left_93 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_28_Left_94 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_29_Left_95 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_30_Left_96 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_31_Left_97 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_32_Left_98 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_33_Left_99 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_34_Left_100 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_35_Left_101 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_36_Left_102 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_37_Left_103 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_38_Left_104 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_39_Left_105 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_40_Left_106 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_41_Left_107 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_42_Left_108 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_43_Left_109 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_44_Left_110 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_45_Left_111 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_46_Left_112 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_47_Left_113 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_48_Left_114 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_49_Left_115 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_50_Left_116 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_51_Left_117 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_52_Left_118 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_53_Left_119 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_54_Left_120 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_55_Left_121 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_56_Left_122 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_57_Left_123 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_58_Left_124 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_59_Left_125 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_60_Left_126 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_61_Left_127 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_62_Left_128 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_63_Left_129 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_64_Left_130 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_65_Left_131 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_132 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_133 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_134 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_135 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_136 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_137 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_138 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_139 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_140 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_141 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_142 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_143 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_144 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_145 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_146 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_147 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_148 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_149 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_150 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_151 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_152 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_153 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_154 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_155 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_156 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_157 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_158 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_159 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_160 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_161 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_162 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_163 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_164 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_165 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_166 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_167 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_168 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_169 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_170 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_171 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_172 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_173 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_174 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_175 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_176 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_177 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_178 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_179 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_180 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_181 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_182 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_183 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_184 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_185 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_186 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_187 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_188 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_189 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_190 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_191 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_192 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_193 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_194 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_195 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_196 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_197 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_198 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_199 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_200 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_201 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_202 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_203 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_204 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_205 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_206 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_207 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_208 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_209 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_210 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_211 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_212 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_213 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_214 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_215 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_216 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_217 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_218 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_219 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_220 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_221 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_222 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_223 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_224 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_225 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_226 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_227 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_228 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_229 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_230 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_231 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_232 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_233 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_234 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_235 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_236 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_237 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_238 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_239 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_240 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_241 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_242 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_243 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_244 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_245 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_246 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_247 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_248 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_249 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_250 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_251 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_252 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_253 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_254 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_255 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_256 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_257 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_258 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_259 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_260 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_261 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_262 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_263 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_264 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_265 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_266 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_267 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_268 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_269 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_270 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_271 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_272 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_273 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_274 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_275 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_276 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_277 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_278 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_279 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_280 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_281 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_282 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_283 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_284 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_285 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_286 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_287 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_288 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_289 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_290 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_291 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_292 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_293 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_294 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_295 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_296 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_297 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_298 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_299 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_300 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_301 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_302 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_303 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_304 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_305 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_306 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_307 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_308 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_309 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_310 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_311 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_312 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_313 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_314 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_315 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_316 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_317 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_318 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_319 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_320 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_321 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_322 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_323 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_324 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_325 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_326 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_327 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_328 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_329 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_330 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_331 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_332 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_333 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_334 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_335 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_336 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_337 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_338 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_339 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_340 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_341 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_342 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_343 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_344 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_345 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_346 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_347 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_348 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_349 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_350 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_351 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_352 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_353 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_354 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_355 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_356 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_357 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_358 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_359 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_360 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_361 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_362 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_363 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_364 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_365 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_366 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_367 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_368 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_369 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_370 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_371 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_372 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_373 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_374 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_375 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_376 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_377 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_378 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_379 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_380 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_381 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_382 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_383 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_384 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_385 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_386 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_387 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_388 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_389 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_390 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_391 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_392 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_393 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_394 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_395 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_396 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_397 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_398 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_399 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_400 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_401 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_402 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_403 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_404 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_41_405 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_41_406 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_41_407 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_41_408 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_41_409 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_41_410 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_411 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_412 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_413 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_414 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_415 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_416 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_417 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_43_418 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_43_419 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_43_420 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_43_421 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_43_422 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_43_423 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_44_424 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_44_425 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_44_426 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_44_427 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_44_428 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_44_429 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_44_430 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_45_431 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_45_432 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_45_433 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_45_434 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_45_435 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_45_436 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_437 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_438 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_439 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_440 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_441 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_442 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_443 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_47_444 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_47_445 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_47_446 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_47_447 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_47_448 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_47_449 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_48_450 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_48_451 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_48_452 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_48_453 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_48_454 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_48_455 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_48_456 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_49_457 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_49_458 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_49_459 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_49_460 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_49_461 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_49_462 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_50_463 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_50_464 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_50_465 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_50_466 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_50_467 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_50_468 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_50_469 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_51_470 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_51_471 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_51_472 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_51_473 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_51_474 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_51_475 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_52_476 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_52_477 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_52_478 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_52_479 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_52_480 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_52_481 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_52_482 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_53_483 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_53_484 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_53_485 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_53_486 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_53_487 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_53_488 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_54_489 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_54_490 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_54_491 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_54_492 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_54_493 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_54_494 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_54_495 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_55_496 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_55_497 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_55_498 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_55_499 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_55_500 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_55_501 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_56_502 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_56_503 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_56_504 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_56_505 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_56_506 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_56_507 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_56_508 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_57_509 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_57_510 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_57_511 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_57_512 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_57_513 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_57_514 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_58_515 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_58_516 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_58_517 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_58_518 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_58_519 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_58_520 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_58_521 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_59_522 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_59_523 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_59_524 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_59_525 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_59_526 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_59_527 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_60_528 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_60_529 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_60_530 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_60_531 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_60_532 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_60_533 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_60_534 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_61_535 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_61_536 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_61_537 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_61_538 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_61_539 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_61_540 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_62_541 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_62_542 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_62_543 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_62_544 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_62_545 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_62_546 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_62_547 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_63_548 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_63_549 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_63_550 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_63_551 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_63_552 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_63_553 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_64_554 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_64_555 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_64_556 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_64_557 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_64_558 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_64_559 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_64_560 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_65_561 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_65_562 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_65_563 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_65_564 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_65_565 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_65_566 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_65_567 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_65_568 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_65_569 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_65_570 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_65_571 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_65_572 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_65_573 (.VGND(VGND),
    .VPWR(VPWR));
endmodule
