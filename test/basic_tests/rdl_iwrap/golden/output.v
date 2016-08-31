//   Ordt 160822.01 autogenerated file 
//   Input: ./rdl_iwrap/test.rdl
//   Parms: ./rdl_iwrap/test.parms
//   Date: Thu Aug 25 21:09:34 EDT 2016
//

//
//---------- module top_jrdl_logic
//
module top_jrdl_logic
(
  clk,
  reset,
  d2l_regs_none_reg_none_w,
  d2l_regs_none_reg_none_we,
  d2l_regs_none_reg_none_re,
  d2l_regs_none_reg_int_w,
  d2l_regs_none_reg_int_we,
  d2l_regs_none_reg_int_re,
  d2l_regs_ext_reg_none_w,
  d2l_regs_ext_reg_none_we,
  d2l_regs_ext_reg_none_re,
  d2l_regs_ext_reg_int_w,
  d2l_regs_ext_reg_int_we,
  d2l_regs_ext_reg_int_re,
  h2l_regs_none_reg_none_fld_none_w,
  h2l_regs_none_reg_none_fld_none_we,
  h2l_regs_none_reg_none_fld_gen_w,
  h2l_regs_none_reg_none_fld_gen_we,
  h2l_regs_none_reg_none_fld_ext_w,
  h2l_regs_none_reg_none_fld_ext_we,
  h2l_regs_none_reg_none_fld_int_w,
  h2l_regs_none_reg_none_fld_int_we,
  h2l_regs_none_reg_int_fld_none_w,
  h2l_regs_none_reg_int_fld_none_we,
  h2l_regs_none_reg_int_fld_gen_w,
  h2l_regs_none_reg_int_fld_gen_we,
  h2l_regs_none_reg_int_fld_ext_w,
  h2l_regs_none_reg_int_fld_ext_we,
  h2l_regs_none_reg_int_fld_int_w,
  h2l_regs_none_reg_int_fld_int_we,
  h2l_regs_ext_reg_none_fld_none_w,
  h2l_regs_ext_reg_none_fld_none_we,
  h2l_regs_ext_reg_none_fld_gen_w,
  h2l_regs_ext_reg_none_fld_gen_we,
  h2l_regs_ext_reg_none_fld_ext_w,
  h2l_regs_ext_reg_none_fld_ext_we,
  h2l_regs_ext_reg_none_fld_int_w,
  h2l_regs_ext_reg_none_fld_int_we,
  h2l_regs_ext_reg_int_fld_none_w,
  h2l_regs_ext_reg_int_fld_none_we,
  h2l_regs_ext_reg_int_fld_gen_w,
  h2l_regs_ext_reg_int_fld_gen_we,
  h2l_regs_ext_reg_int_fld_ext_w,
  h2l_regs_ext_reg_int_fld_ext_we,
  h2l_regs_ext_reg_int_fld_int_w,
  h2l_regs_ext_reg_int_fld_int_we,

  l2d_regs_none_reg_none_r,
  l2d_regs_none_reg_int_r,
  l2d_regs_ext_reg_none_r,
  l2d_regs_ext_reg_int_r,
  l2h_regs_none_reg_none_fld_none_r,
  l2h_regs_none_reg_none_fld_gen_r,
  l2h_regs_none_reg_none_fld_ext_r,
  l2h_regs_none_reg_none_fld_int_r,
  l2h_regs_none_reg_int_fld_none_r,
  l2h_regs_none_reg_int_fld_gen_r,
  l2h_regs_none_reg_int_fld_ext_r,
  l2h_regs_none_reg_int_fld_int_r,
  l2h_regs_ext_reg_none_fld_none_r,
  l2h_regs_ext_reg_none_fld_gen_r,
  l2h_regs_ext_reg_none_fld_ext_r,
  l2h_regs_ext_reg_none_fld_int_r,
  l2h_regs_ext_reg_int_fld_none_r,
  l2h_regs_ext_reg_int_fld_gen_r,
  l2h_regs_ext_reg_int_fld_ext_r,
  l2h_regs_ext_reg_int_fld_int_r );

  //------- inputs
  input    clk;
  input    reset;
  input     [31:0] d2l_regs_none_reg_none_w;
  input    d2l_regs_none_reg_none_we;
  input    d2l_regs_none_reg_none_re;
  input     [31:0] d2l_regs_none_reg_int_w;
  input    d2l_regs_none_reg_int_we;
  input    d2l_regs_none_reg_int_re;
  input     [31:0] d2l_regs_ext_reg_none_w;
  input    d2l_regs_ext_reg_none_we;
  input    d2l_regs_ext_reg_none_re;
  input     [31:0] d2l_regs_ext_reg_int_w;
  input    d2l_regs_ext_reg_int_we;
  input    d2l_regs_ext_reg_int_re;
  input    h2l_regs_none_reg_none_fld_none_w;
  input    h2l_regs_none_reg_none_fld_none_we;
  input    h2l_regs_none_reg_none_fld_gen_w;
  input    h2l_regs_none_reg_none_fld_gen_we;
  input    h2l_regs_none_reg_none_fld_ext_w;
  input    h2l_regs_none_reg_none_fld_ext_we;
  input    h2l_regs_none_reg_none_fld_int_w;
  input    h2l_regs_none_reg_none_fld_int_we;
  input    h2l_regs_none_reg_int_fld_none_w;
  input    h2l_regs_none_reg_int_fld_none_we;
  input    h2l_regs_none_reg_int_fld_gen_w;
  input    h2l_regs_none_reg_int_fld_gen_we;
  input    h2l_regs_none_reg_int_fld_ext_w;
  input    h2l_regs_none_reg_int_fld_ext_we;
  input    h2l_regs_none_reg_int_fld_int_w;
  input    h2l_regs_none_reg_int_fld_int_we;
  input    h2l_regs_ext_reg_none_fld_none_w;
  input    h2l_regs_ext_reg_none_fld_none_we;
  input    h2l_regs_ext_reg_none_fld_gen_w;
  input    h2l_regs_ext_reg_none_fld_gen_we;
  input    h2l_regs_ext_reg_none_fld_ext_w;
  input    h2l_regs_ext_reg_none_fld_ext_we;
  input    h2l_regs_ext_reg_none_fld_int_w;
  input    h2l_regs_ext_reg_none_fld_int_we;
  input    h2l_regs_ext_reg_int_fld_none_w;
  input    h2l_regs_ext_reg_int_fld_none_we;
  input    h2l_regs_ext_reg_int_fld_gen_w;
  input    h2l_regs_ext_reg_int_fld_gen_we;
  input    h2l_regs_ext_reg_int_fld_ext_w;
  input    h2l_regs_ext_reg_int_fld_ext_we;
  input    h2l_regs_ext_reg_int_fld_int_w;
  input    h2l_regs_ext_reg_int_fld_int_we;

  //------- outputs
  output     [31:0] l2d_regs_none_reg_none_r;
  output     [31:0] l2d_regs_none_reg_int_r;
  output     [31:0] l2d_regs_ext_reg_none_r;
  output     [31:0] l2d_regs_ext_reg_int_r;
  output    l2h_regs_none_reg_none_fld_none_r;
  output    l2h_regs_none_reg_none_fld_gen_r;
  output    l2h_regs_none_reg_none_fld_ext_r;
  output    l2h_regs_none_reg_none_fld_int_r;
  output    l2h_regs_none_reg_int_fld_none_r;
  output    l2h_regs_none_reg_int_fld_gen_r;
  output    l2h_regs_none_reg_int_fld_ext_r;
  output    l2h_regs_none_reg_int_fld_int_r;
  output    l2h_regs_ext_reg_none_fld_none_r;
  output    l2h_regs_ext_reg_none_fld_gen_r;
  output    l2h_regs_ext_reg_none_fld_ext_r;
  output    l2h_regs_ext_reg_none_fld_int_r;
  output    l2h_regs_ext_reg_int_fld_none_r;
  output    l2h_regs_ext_reg_int_fld_gen_r;
  output    l2h_regs_ext_reg_int_fld_ext_r;
  output    l2h_regs_ext_reg_int_fld_int_r;

  //------- reg defines
  reg  rg_regs_none_reg_none_fld_none;
  reg  reg_regs_none_reg_none_fld_none_next;
  reg  l2h_regs_none_reg_none_fld_none_r;
  reg  rg_regs_none_reg_none_fld_gen;
  reg  reg_regs_none_reg_none_fld_gen_next;
  reg  l2h_regs_none_reg_none_fld_gen_r;
  reg  rg_regs_none_reg_none_fld_ext;
  reg  reg_regs_none_reg_none_fld_ext_next;
  reg  l2h_regs_none_reg_none_fld_ext_r;
  reg  rg_regs_none_reg_none_fld_int;
  reg  reg_regs_none_reg_none_fld_int_next;
  reg  l2h_regs_none_reg_none_fld_int_r;
  reg   [31:0] l2d_regs_none_reg_none_r;
  reg  rg_regs_none_reg_int_fld_none;
  reg  reg_regs_none_reg_int_fld_none_next;
  reg  l2h_regs_none_reg_int_fld_none_r;
  reg  rg_regs_none_reg_int_fld_gen;
  reg  reg_regs_none_reg_int_fld_gen_next;
  reg  l2h_regs_none_reg_int_fld_gen_r;
  reg  rg_regs_none_reg_int_fld_ext;
  reg  reg_regs_none_reg_int_fld_ext_next;
  reg  l2h_regs_none_reg_int_fld_ext_r;
  reg  rg_regs_none_reg_int_fld_int;
  reg  reg_regs_none_reg_int_fld_int_next;
  reg  l2h_regs_none_reg_int_fld_int_r;
  reg   [31:0] l2d_regs_none_reg_int_r;
  reg  rg_regs_ext_reg_none_fld_none;
  reg  reg_regs_ext_reg_none_fld_none_next;
  reg  l2h_regs_ext_reg_none_fld_none_r;
  reg  rg_regs_ext_reg_none_fld_gen;
  reg  reg_regs_ext_reg_none_fld_gen_next;
  reg  l2h_regs_ext_reg_none_fld_gen_r;
  reg  rg_regs_ext_reg_none_fld_ext;
  reg  reg_regs_ext_reg_none_fld_ext_next;
  reg  l2h_regs_ext_reg_none_fld_ext_r;
  reg  rg_regs_ext_reg_none_fld_int;
  reg  reg_regs_ext_reg_none_fld_int_next;
  reg  l2h_regs_ext_reg_none_fld_int_r;
  reg   [31:0] l2d_regs_ext_reg_none_r;
  reg  rg_regs_ext_reg_int_fld_none;
  reg  reg_regs_ext_reg_int_fld_none_next;
  reg  l2h_regs_ext_reg_int_fld_none_r;
  reg  rg_regs_ext_reg_int_fld_gen;
  reg  reg_regs_ext_reg_int_fld_gen_next;
  reg  l2h_regs_ext_reg_int_fld_gen_r;
  reg  rg_regs_ext_reg_int_fld_ext;
  reg  reg_regs_ext_reg_int_fld_ext_next;
  reg  l2h_regs_ext_reg_int_fld_ext_r;
  reg  rg_regs_ext_reg_int_fld_int;
  reg  reg_regs_ext_reg_int_fld_int_next;
  reg  l2h_regs_ext_reg_int_fld_int_r;
  reg   [31:0] l2d_regs_ext_reg_int_r;
  
  
  //------- combinatorial assigns for regs_none_reg_none (pio read data)
  always @ (*) begin
    l2d_regs_none_reg_none_r = 32'b0;
    l2d_regs_none_reg_none_r [0]  = rg_regs_none_reg_none_fld_none;
    l2d_regs_none_reg_none_r [1]  = rg_regs_none_reg_none_fld_gen;
    l2d_regs_none_reg_none_r [2]  = rg_regs_none_reg_none_fld_ext;
    l2d_regs_none_reg_none_r [3]  = rg_regs_none_reg_none_fld_int;
  end
  
  //------- combinatorial assigns for regs_none_reg_int
  always @ (*) begin
    reg_regs_none_reg_int_fld_none_next = rg_regs_none_reg_int_fld_none;
    l2h_regs_none_reg_int_fld_none_r = rg_regs_none_reg_int_fld_none;
    reg_regs_none_reg_int_fld_gen_next = rg_regs_none_reg_int_fld_gen;
    l2h_regs_none_reg_int_fld_gen_r = rg_regs_none_reg_int_fld_gen;
    reg_regs_none_reg_int_fld_ext_next = rg_regs_none_reg_int_fld_ext;
    l2h_regs_none_reg_int_fld_ext_r = rg_regs_none_reg_int_fld_ext;
    reg_regs_none_reg_int_fld_int_next = rg_regs_none_reg_int_fld_int;
    l2h_regs_none_reg_int_fld_int_r = rg_regs_none_reg_int_fld_int;
    if (h2l_regs_none_reg_int_fld_none_we) reg_regs_none_reg_int_fld_none_next = h2l_regs_none_reg_int_fld_none_w;
    if (h2l_regs_none_reg_int_fld_gen_we) reg_regs_none_reg_int_fld_gen_next = h2l_regs_none_reg_int_fld_gen_w;
    if (h2l_regs_none_reg_int_fld_ext_we) reg_regs_none_reg_int_fld_ext_next = h2l_regs_none_reg_int_fld_ext_w;
    if (h2l_regs_none_reg_int_fld_int_we) reg_regs_none_reg_int_fld_int_next = h2l_regs_none_reg_int_fld_int_w;
    if (d2l_regs_none_reg_int_we) reg_regs_none_reg_int_fld_none_next = d2l_regs_none_reg_int_w [0] ;
    if (d2l_regs_none_reg_int_we) reg_regs_none_reg_int_fld_gen_next = d2l_regs_none_reg_int_w [1] ;
    if (d2l_regs_none_reg_int_we) reg_regs_none_reg_int_fld_ext_next = d2l_regs_none_reg_int_w [2] ;
    if (d2l_regs_none_reg_int_we) reg_regs_none_reg_int_fld_int_next = d2l_regs_none_reg_int_w [3] ;
  end
  
  //------- reg assigns for regs_none_reg_int
  always @ (posedge clk) begin
    if (reset) begin
      rg_regs_none_reg_int_fld_none <= #1 1'b0;
      rg_regs_none_reg_int_fld_gen <= #1 1'b0;
      rg_regs_none_reg_int_fld_ext <= #1 1'b0;
      rg_regs_none_reg_int_fld_int <= #1 1'b0;
    end
    else begin
      rg_regs_none_reg_int_fld_none <= #1  reg_regs_none_reg_int_fld_none_next;
      rg_regs_none_reg_int_fld_gen <= #1  reg_regs_none_reg_int_fld_gen_next;
      rg_regs_none_reg_int_fld_ext <= #1  reg_regs_none_reg_int_fld_ext_next;
      rg_regs_none_reg_int_fld_int <= #1  reg_regs_none_reg_int_fld_int_next;
    end
  end
  
  //------- combinatorial assigns for regs_none_reg_none
  always @ (*) begin
    reg_regs_none_reg_none_fld_none_next = rg_regs_none_reg_none_fld_none;
    l2h_regs_none_reg_none_fld_none_r = rg_regs_none_reg_none_fld_none;
    reg_regs_none_reg_none_fld_gen_next = rg_regs_none_reg_none_fld_gen;
    l2h_regs_none_reg_none_fld_gen_r = rg_regs_none_reg_none_fld_gen;
    reg_regs_none_reg_none_fld_ext_next = rg_regs_none_reg_none_fld_ext;
    l2h_regs_none_reg_none_fld_ext_r = rg_regs_none_reg_none_fld_ext;
    reg_regs_none_reg_none_fld_int_next = rg_regs_none_reg_none_fld_int;
    l2h_regs_none_reg_none_fld_int_r = rg_regs_none_reg_none_fld_int;
    if (h2l_regs_none_reg_none_fld_none_we) reg_regs_none_reg_none_fld_none_next = h2l_regs_none_reg_none_fld_none_w;
    if (h2l_regs_none_reg_none_fld_gen_we) reg_regs_none_reg_none_fld_gen_next = h2l_regs_none_reg_none_fld_gen_w;
    if (h2l_regs_none_reg_none_fld_ext_we) reg_regs_none_reg_none_fld_ext_next = h2l_regs_none_reg_none_fld_ext_w;
    if (h2l_regs_none_reg_none_fld_int_we) reg_regs_none_reg_none_fld_int_next = h2l_regs_none_reg_none_fld_int_w;
    if (d2l_regs_none_reg_none_we) reg_regs_none_reg_none_fld_none_next = d2l_regs_none_reg_none_w [0] ;
    if (d2l_regs_none_reg_none_we) reg_regs_none_reg_none_fld_gen_next = d2l_regs_none_reg_none_w [1] ;
    if (d2l_regs_none_reg_none_we) reg_regs_none_reg_none_fld_ext_next = d2l_regs_none_reg_none_w [2] ;
    if (d2l_regs_none_reg_none_we) reg_regs_none_reg_none_fld_int_next = d2l_regs_none_reg_none_w [3] ;
  end
  
  //------- reg assigns for regs_none_reg_none
  always @ (posedge clk) begin
    if (reset) begin
      rg_regs_none_reg_none_fld_none <= #1 1'b0;
      rg_regs_none_reg_none_fld_gen <= #1 1'b0;
      rg_regs_none_reg_none_fld_ext <= #1 1'b0;
      rg_regs_none_reg_none_fld_int <= #1 1'b0;
    end
    else begin
      rg_regs_none_reg_none_fld_none <= #1  reg_regs_none_reg_none_fld_none_next;
      rg_regs_none_reg_none_fld_gen <= #1  reg_regs_none_reg_none_fld_gen_next;
      rg_regs_none_reg_none_fld_ext <= #1  reg_regs_none_reg_none_fld_ext_next;
      rg_regs_none_reg_none_fld_int <= #1  reg_regs_none_reg_none_fld_int_next;
    end
  end
  
  //------- combinatorial assigns for regs_ext_reg_none (pio read data)
  always @ (*) begin
    l2d_regs_ext_reg_none_r = 32'b0;
    l2d_regs_ext_reg_none_r [0]  = rg_regs_ext_reg_none_fld_none;
    l2d_regs_ext_reg_none_r [1]  = rg_regs_ext_reg_none_fld_gen;
    l2d_regs_ext_reg_none_r [2]  = rg_regs_ext_reg_none_fld_ext;
    l2d_regs_ext_reg_none_r [3]  = rg_regs_ext_reg_none_fld_int;
  end
  
  //------- combinatorial assigns for regs_ext_reg_int (pio read data)
  always @ (*) begin
    l2d_regs_ext_reg_int_r = 32'b0;
    l2d_regs_ext_reg_int_r [0]  = rg_regs_ext_reg_int_fld_none;
    l2d_regs_ext_reg_int_r [1]  = rg_regs_ext_reg_int_fld_gen;
    l2d_regs_ext_reg_int_r [2]  = rg_regs_ext_reg_int_fld_ext;
    l2d_regs_ext_reg_int_r [3]  = rg_regs_ext_reg_int_fld_int;
  end
  
  //------- combinatorial assigns for regs_none_reg_int (pio read data)
  always @ (*) begin
    l2d_regs_none_reg_int_r = 32'b0;
    l2d_regs_none_reg_int_r [0]  = rg_regs_none_reg_int_fld_none;
    l2d_regs_none_reg_int_r [1]  = rg_regs_none_reg_int_fld_gen;
    l2d_regs_none_reg_int_r [2]  = rg_regs_none_reg_int_fld_ext;
    l2d_regs_none_reg_int_r [3]  = rg_regs_none_reg_int_fld_int;
  end
  
  //------- combinatorial assigns for regs_ext_reg_none
  always @ (*) begin
    reg_regs_ext_reg_none_fld_none_next = rg_regs_ext_reg_none_fld_none;
    l2h_regs_ext_reg_none_fld_none_r = rg_regs_ext_reg_none_fld_none;
    reg_regs_ext_reg_none_fld_gen_next = rg_regs_ext_reg_none_fld_gen;
    l2h_regs_ext_reg_none_fld_gen_r = rg_regs_ext_reg_none_fld_gen;
    reg_regs_ext_reg_none_fld_ext_next = rg_regs_ext_reg_none_fld_ext;
    l2h_regs_ext_reg_none_fld_ext_r = rg_regs_ext_reg_none_fld_ext;
    reg_regs_ext_reg_none_fld_int_next = rg_regs_ext_reg_none_fld_int;
    l2h_regs_ext_reg_none_fld_int_r = rg_regs_ext_reg_none_fld_int;
    if (h2l_regs_ext_reg_none_fld_none_we) reg_regs_ext_reg_none_fld_none_next = h2l_regs_ext_reg_none_fld_none_w;
    if (h2l_regs_ext_reg_none_fld_gen_we) reg_regs_ext_reg_none_fld_gen_next = h2l_regs_ext_reg_none_fld_gen_w;
    if (h2l_regs_ext_reg_none_fld_ext_we) reg_regs_ext_reg_none_fld_ext_next = h2l_regs_ext_reg_none_fld_ext_w;
    if (h2l_regs_ext_reg_none_fld_int_we) reg_regs_ext_reg_none_fld_int_next = h2l_regs_ext_reg_none_fld_int_w;
    if (d2l_regs_ext_reg_none_we) reg_regs_ext_reg_none_fld_none_next = d2l_regs_ext_reg_none_w [0] ;
    if (d2l_regs_ext_reg_none_we) reg_regs_ext_reg_none_fld_gen_next = d2l_regs_ext_reg_none_w [1] ;
    if (d2l_regs_ext_reg_none_we) reg_regs_ext_reg_none_fld_ext_next = d2l_regs_ext_reg_none_w [2] ;
    if (d2l_regs_ext_reg_none_we) reg_regs_ext_reg_none_fld_int_next = d2l_regs_ext_reg_none_w [3] ;
  end
  
  //------- reg assigns for regs_ext_reg_none
  always @ (posedge clk) begin
    if (reset) begin
      rg_regs_ext_reg_none_fld_none <= #1 1'b0;
      rg_regs_ext_reg_none_fld_gen <= #1 1'b0;
      rg_regs_ext_reg_none_fld_ext <= #1 1'b0;
      rg_regs_ext_reg_none_fld_int <= #1 1'b0;
    end
    else begin
      rg_regs_ext_reg_none_fld_none <= #1  reg_regs_ext_reg_none_fld_none_next;
      rg_regs_ext_reg_none_fld_gen <= #1  reg_regs_ext_reg_none_fld_gen_next;
      rg_regs_ext_reg_none_fld_ext <= #1  reg_regs_ext_reg_none_fld_ext_next;
      rg_regs_ext_reg_none_fld_int <= #1  reg_regs_ext_reg_none_fld_int_next;
    end
  end
  
  //------- combinatorial assigns for regs_ext_reg_int
  always @ (*) begin
    reg_regs_ext_reg_int_fld_none_next = rg_regs_ext_reg_int_fld_none;
    l2h_regs_ext_reg_int_fld_none_r = rg_regs_ext_reg_int_fld_none;
    reg_regs_ext_reg_int_fld_gen_next = rg_regs_ext_reg_int_fld_gen;
    l2h_regs_ext_reg_int_fld_gen_r = rg_regs_ext_reg_int_fld_gen;
    reg_regs_ext_reg_int_fld_ext_next = rg_regs_ext_reg_int_fld_ext;
    l2h_regs_ext_reg_int_fld_ext_r = rg_regs_ext_reg_int_fld_ext;
    reg_regs_ext_reg_int_fld_int_next = rg_regs_ext_reg_int_fld_int;
    l2h_regs_ext_reg_int_fld_int_r = rg_regs_ext_reg_int_fld_int;
    if (h2l_regs_ext_reg_int_fld_none_we) reg_regs_ext_reg_int_fld_none_next = h2l_regs_ext_reg_int_fld_none_w;
    if (h2l_regs_ext_reg_int_fld_gen_we) reg_regs_ext_reg_int_fld_gen_next = h2l_regs_ext_reg_int_fld_gen_w;
    if (h2l_regs_ext_reg_int_fld_ext_we) reg_regs_ext_reg_int_fld_ext_next = h2l_regs_ext_reg_int_fld_ext_w;
    if (h2l_regs_ext_reg_int_fld_int_we) reg_regs_ext_reg_int_fld_int_next = h2l_regs_ext_reg_int_fld_int_w;
    if (d2l_regs_ext_reg_int_we) reg_regs_ext_reg_int_fld_none_next = d2l_regs_ext_reg_int_w [0] ;
    if (d2l_regs_ext_reg_int_we) reg_regs_ext_reg_int_fld_gen_next = d2l_regs_ext_reg_int_w [1] ;
    if (d2l_regs_ext_reg_int_we) reg_regs_ext_reg_int_fld_ext_next = d2l_regs_ext_reg_int_w [2] ;
    if (d2l_regs_ext_reg_int_we) reg_regs_ext_reg_int_fld_int_next = d2l_regs_ext_reg_int_w [3] ;
  end
  
  //------- reg assigns for regs_ext_reg_int
  always @ (posedge clk) begin
    if (reset) begin
      rg_regs_ext_reg_int_fld_none <= #1 1'b0;
      rg_regs_ext_reg_int_fld_gen <= #1 1'b0;
      rg_regs_ext_reg_int_fld_ext <= #1 1'b0;
      rg_regs_ext_reg_int_fld_int <= #1 1'b0;
    end
    else begin
      rg_regs_ext_reg_int_fld_none <= #1  reg_regs_ext_reg_int_fld_none_next;
      rg_regs_ext_reg_int_fld_gen <= #1  reg_regs_ext_reg_int_fld_gen_next;
      rg_regs_ext_reg_int_fld_ext <= #1  reg_regs_ext_reg_int_fld_ext_next;
      rg_regs_ext_reg_int_fld_int <= #1  reg_regs_ext_reg_int_fld_int_next;
    end
  end
  
endmodule

//
//---------- module top_jrdl_decode
//
module top_jrdl_decode
(
  clk,
  reset,
  leaf_dec_wr_data,
  leaf_dec_addr,
  leaf_dec_block_sel,
  leaf_dec_valid,
  leaf_dec_wr_dvld,
  leaf_dec_cycle,
  leaf_dec_wr_width ,
  l2d_regs_none_reg_none_r,
  l2d_regs_none_reg_int_r,
  l2d_regs_ext_reg_none_r,
  l2d_regs_ext_reg_int_r,

  dec_leaf_rd_data,
  dec_leaf_ack,
  dec_leaf_nack,
  dec_leaf_accept,
  dec_leaf_reject,
  dec_leaf_retry_atomic,
  dec_leaf_data_width,
  d2l_regs_none_reg_none_w,
  d2l_regs_none_reg_none_we,
  d2l_regs_none_reg_none_re,
  d2l_regs_none_reg_int_w,
  d2l_regs_none_reg_int_we,
  d2l_regs_none_reg_int_re,
  d2l_regs_ext_reg_none_w,
  d2l_regs_ext_reg_none_we,
  d2l_regs_ext_reg_none_re,
  d2l_regs_ext_reg_int_w,
  d2l_regs_ext_reg_int_we,
  d2l_regs_ext_reg_int_re );

  //------- inputs
  input    clk;
  input    reset;
  input     [31:0] leaf_dec_wr_data;
  input     [39:0] leaf_dec_addr;
  input    leaf_dec_block_sel;
  input    leaf_dec_valid;
  input    leaf_dec_wr_dvld;
  input     [1:0] leaf_dec_cycle;
  input     [2:0] leaf_dec_wr_width ;
  input     [31:0] l2d_regs_none_reg_none_r;
  input     [31:0] l2d_regs_none_reg_int_r;
  input     [31:0] l2d_regs_ext_reg_none_r;
  input     [31:0] l2d_regs_ext_reg_int_r;

  //------- outputs
  output     [31:0] dec_leaf_rd_data;
  output    dec_leaf_ack;
  output    dec_leaf_nack;
  output    dec_leaf_accept;
  output    dec_leaf_reject;
  output    dec_leaf_retry_atomic;
  output     [2:0] dec_leaf_data_width;
  output     [31:0] d2l_regs_none_reg_none_w;
  output    d2l_regs_none_reg_none_we;
  output    d2l_regs_none_reg_none_re;
  output     [31:0] d2l_regs_none_reg_int_w;
  output    d2l_regs_none_reg_int_we;
  output    d2l_regs_none_reg_int_re;
  output     [31:0] d2l_regs_ext_reg_none_w;
  output    d2l_regs_ext_reg_none_we;
  output    d2l_regs_ext_reg_none_re;
  output     [31:0] d2l_regs_ext_reg_int_w;
  output    d2l_regs_ext_reg_int_we;
  output    d2l_regs_ext_reg_int_re;

  //------- wire defines
  wire   [31:0] pio_dec_write_data;
  wire   [3:2] pio_dec_address;
  wire  pio_dec_read;
  wire  pio_dec_write;
  wire   [39:0] block_sel_addr;
  wire  block_sel;
  wire  leaf_dec_valid_active;
  wire  leaf_dec_wr_dvld_active;
  
  //------- reg defines
  reg   [31:0] d2l_regs_none_reg_none_w;
  reg  d2l_regs_none_reg_none_we;
  reg  d2l_regs_none_reg_none_re;
  reg   [31:0] d2l_regs_none_reg_int_w;
  reg  d2l_regs_none_reg_int_we;
  reg  d2l_regs_none_reg_int_re;
  reg   [31:0] d2l_regs_ext_reg_none_w;
  reg  d2l_regs_ext_reg_none_we;
  reg  d2l_regs_ext_reg_none_re;
  reg   [31:0] d2l_regs_ext_reg_int_w;
  reg  d2l_regs_ext_reg_int_we;
  reg  d2l_regs_ext_reg_int_re;
  reg  leaf_dec_valid_hld1;
  reg  leaf_dec_valid_hld1_next;
  reg  leaf_dec_wr_dvld_hld1;
  reg  leaf_dec_wr_dvld_hld1_next;
  reg  pio_write_active;
  reg  pio_read_active;
  reg   [3:2] pio_dec_address_d1;
  reg   [31:0] pio_dec_write_data_d1;
  reg   [31:0] dec_pio_read_data;
  reg   [31:0] dec_pio_read_data_d1;
  reg  dec_pio_ack;
  reg  dec_pio_nack;
  reg  dec_pio_ack_next;
  reg  dec_pio_nack_next;
  reg  pio_internal_ack;
  reg  pio_internal_nack;
  reg  pio_external_ack;
  reg  pio_external_nack;
  reg  pio_external_ack_next;
  reg  pio_external_nack_next;
  reg  pio_no_acks;
  reg  pio_activate_write;
  reg  pio_activate_read;
  reg   [31:0] dec_pio_read_data_next;
  reg  external_transaction_active;
  
  
  //------- assigns
  assign  pio_dec_write_data = leaf_dec_wr_data;
  assign  dec_leaf_rd_data = dec_pio_read_data;
  assign  dec_leaf_ack = dec_pio_ack;
  assign  dec_leaf_nack = dec_pio_nack;
  assign  pio_dec_address = leaf_dec_addr [3:2] ;
  assign  block_sel_addr = 40'h0;
  assign  block_sel = leaf_dec_block_sel;
  assign  leaf_dec_wr_dvld_active = leaf_dec_wr_dvld | leaf_dec_wr_dvld_hld1;
  assign  leaf_dec_valid_active = leaf_dec_valid | leaf_dec_valid_hld1;
  assign  dec_leaf_accept = leaf_dec_valid & block_sel;
  assign  dec_leaf_reject = leaf_dec_valid & ~block_sel;
  assign  pio_dec_read = block_sel & leaf_dec_valid_active & (leaf_dec_cycle == 2'b10);
  assign  pio_dec_write = block_sel & leaf_dec_wr_dvld_active & (leaf_dec_cycle[1] == 1'b0);
  assign  dec_leaf_retry_atomic = 1'b0;
  assign  dec_leaf_data_width = 3'b0;
  
  //------- combinatorial assigns for pio read data
  always @ (*) begin
    dec_pio_read_data = dec_pio_read_data_d1;
  end
  
  //------- reg assigns for pio read data
  always @ (posedge clk) begin
    if (reset) begin
      dec_pio_read_data_d1 <= #1  32'b0;
    end
    else begin
      dec_pio_read_data_d1 <= #1 dec_pio_read_data_next;
    end
  end
  
  //------- reg assigns for pio i/f
  always @ (posedge clk) begin
    if (reset) begin
      pio_write_active <= #1  1'b0;
      pio_read_active <= #1  1'b0;
    end
    else begin
      pio_write_active <= #1  pio_write_active ? pio_no_acks : pio_activate_write;
      pio_read_active <= #1  pio_read_active ? pio_no_acks : pio_activate_read;
      pio_dec_address_d1 <= #1   pio_dec_address;
      pio_dec_write_data_d1 <= #1  pio_dec_write_data;
    end
  end
  
  //------- combinatorial assigns for leaf i/f
  always @ (*) begin
    leaf_dec_valid_hld1_next = leaf_dec_valid | leaf_dec_valid_hld1;
    if (dec_pio_ack_next | dec_pio_nack_next) leaf_dec_valid_hld1_next = 1'b0;
    leaf_dec_wr_dvld_hld1_next = leaf_dec_wr_dvld | leaf_dec_wr_dvld_hld1;
    if (dec_pio_ack_next | dec_pio_nack_next | leaf_dec_valid) leaf_dec_wr_dvld_hld1_next = 1'b0;
  end
  
  //------- reg assigns for leaf i/f
  always @ (posedge clk) begin
    if (reset) begin
      leaf_dec_valid_hld1 <= #1  1'b0;
      leaf_dec_wr_dvld_hld1 <= #1  1'b0;
    end
    else begin
      leaf_dec_valid_hld1 <= #1 leaf_dec_valid_hld1_next;
      leaf_dec_wr_dvld_hld1 <= #1 leaf_dec_wr_dvld_hld1_next;
    end
  end
  
  //------- combinatorial assigns for pio ack/nack
  always @ (*) begin
    pio_internal_nack = (pio_read_active | pio_write_active) & ~pio_internal_ack & ~external_transaction_active;
    dec_pio_ack_next = (pio_internal_ack | (pio_external_ack_next & external_transaction_active));
    dec_pio_nack_next = (pio_internal_nack | (pio_external_nack_next & external_transaction_active));
    pio_no_acks = ~(dec_pio_ack | dec_pio_nack | pio_external_ack | pio_external_nack);
    pio_activate_write = (pio_dec_write & ~(dec_pio_ack | dec_pio_nack));
    pio_activate_read = (pio_dec_read & ~(dec_pio_ack | dec_pio_nack));
  end
  
  //------- reg assigns for pio ack/nack
  always @ (posedge clk) begin
    if (reset) begin
      dec_pio_ack <= #1 1'b0;
      dec_pio_nack <= #1 1'b0;
      pio_external_ack <= #1  1'b0;
      pio_external_nack <= #1  1'b0;
    end
    else begin
      dec_pio_ack <= #1 dec_pio_ack ? 1'b0 : dec_pio_ack_next;
      dec_pio_nack <= #1 dec_pio_nack ? 1'b0 : dec_pio_nack_next;
      pio_external_ack <= #1 pio_external_ack_next;
      pio_external_nack <= #1 pio_external_nack_next;
    end
  end
  
  
  //------- address decode
  always @ (*) begin
    pio_internal_ack = 1'b0;
    external_transaction_active = 1'b0;
    pio_external_ack_next = 1'b0;
    pio_external_nack_next = 1'b0;
    dec_pio_read_data_next = 32'b0;
    
    d2l_regs_none_reg_none_w = pio_dec_write_data_d1  [31:0] ;
    d2l_regs_none_reg_none_we = 1'b0;
    d2l_regs_none_reg_none_re = 1'b0;
    d2l_regs_none_reg_int_w = pio_dec_write_data_d1  [31:0] ;
    d2l_regs_none_reg_int_we = 1'b0;
    d2l_regs_none_reg_int_re = 1'b0;
    d2l_regs_ext_reg_none_w = pio_dec_write_data_d1  [31:0] ;
    d2l_regs_ext_reg_none_we = 1'b0;
    d2l_regs_ext_reg_none_re = 1'b0;
    d2l_regs_ext_reg_int_w = pio_dec_write_data_d1  [31:0] ;
    d2l_regs_ext_reg_int_we = 1'b0;
    d2l_regs_ext_reg_int_re = 1'b0;
    
    casez(pio_dec_address_d1)
    //  Register: regs_none.reg_none     Address: 0x0     External: false
    2'b00:
      begin
        d2l_regs_none_reg_none_we = pio_write_active & ~dec_pio_ack;
        d2l_regs_none_reg_none_re = pio_read_active & ~dec_pio_ack;
        pio_internal_ack =  pio_read_active | pio_write_active;
        dec_pio_read_data_next  [31:0]  = l2d_regs_none_reg_none_r;
      end
    //  Register: regs_none.reg_int     Address: 0x4     External: false
    2'b01:
      begin
        d2l_regs_none_reg_int_we = pio_write_active & ~dec_pio_ack;
        d2l_regs_none_reg_int_re = pio_read_active & ~dec_pio_ack;
        pio_internal_ack =  pio_read_active | pio_write_active;
        dec_pio_read_data_next  [31:0]  = l2d_regs_none_reg_int_r;
      end
    //  Register: regs_ext.reg_none     Address: 0x8     External: false
    2'b10:
      begin
        d2l_regs_ext_reg_none_we = pio_write_active & ~dec_pio_ack;
        d2l_regs_ext_reg_none_re = pio_read_active & ~dec_pio_ack;
        pio_internal_ack =  pio_read_active | pio_write_active;
        dec_pio_read_data_next  [31:0]  = l2d_regs_ext_reg_none_r;
      end
    //  Register: regs_ext.reg_int     Address: 0xc     External: false
    2'b11:
      begin
        d2l_regs_ext_reg_int_we = pio_write_active & ~dec_pio_ack;
        d2l_regs_ext_reg_int_re = pio_read_active & ~dec_pio_ack;
        pio_internal_ack =  pio_read_active | pio_write_active;
        dec_pio_read_data_next  [31:0]  = l2d_regs_ext_reg_int_r;
      end
    endcase
  end
  
endmodule

//
//---------- module top_pio
//
module top_pio
(
  clk,
  reset,
  h2l_regs_none_reg_none_fld_none_w,
  h2l_regs_none_reg_none_fld_none_we,
  h2l_regs_none_reg_none_fld_gen_w,
  h2l_regs_none_reg_none_fld_gen_we,
  h2l_regs_none_reg_none_fld_ext_w,
  h2l_regs_none_reg_none_fld_ext_we,
  h2l_regs_none_reg_none_fld_int_w,
  h2l_regs_none_reg_none_fld_int_we,
  h2l_regs_none_reg_int_fld_none_w,
  h2l_regs_none_reg_int_fld_none_we,
  h2l_regs_none_reg_int_fld_gen_w,
  h2l_regs_none_reg_int_fld_gen_we,
  h2l_regs_none_reg_int_fld_ext_w,
  h2l_regs_none_reg_int_fld_ext_we,
  h2l_regs_none_reg_int_fld_int_w,
  h2l_regs_none_reg_int_fld_int_we,
  h2l_regs_ext_reg_none_fld_none_w,
  h2l_regs_ext_reg_none_fld_none_we,
  h2l_regs_ext_reg_none_fld_gen_w,
  h2l_regs_ext_reg_none_fld_gen_we,
  h2l_regs_ext_reg_none_fld_ext_w,
  h2l_regs_ext_reg_none_fld_ext_we,
  h2l_regs_ext_reg_none_fld_int_w,
  h2l_regs_ext_reg_none_fld_int_we,
  h2l_regs_ext_reg_int_fld_none_w,
  h2l_regs_ext_reg_int_fld_none_we,
  h2l_regs_ext_reg_int_fld_gen_w,
  h2l_regs_ext_reg_int_fld_gen_we,
  h2l_regs_ext_reg_int_fld_ext_w,
  h2l_regs_ext_reg_int_fld_ext_we,
  h2l_regs_ext_reg_int_fld_int_w,
  h2l_regs_ext_reg_int_fld_int_we,
  leaf_dec_wr_data,
  leaf_dec_addr,
  leaf_dec_block_sel,
  leaf_dec_valid,
  leaf_dec_wr_dvld,
  leaf_dec_cycle,
  leaf_dec_wr_width ,

  l2h_regs_none_reg_none_fld_none_r,
  l2h_regs_none_reg_none_fld_gen_r,
  l2h_regs_none_reg_none_fld_ext_r,
  l2h_regs_none_reg_none_fld_int_r,
  l2h_regs_none_reg_int_fld_none_r,
  l2h_regs_none_reg_int_fld_gen_r,
  l2h_regs_none_reg_int_fld_ext_r,
  l2h_regs_none_reg_int_fld_int_r,
  l2h_regs_ext_reg_none_fld_none_r,
  l2h_regs_ext_reg_none_fld_gen_r,
  l2h_regs_ext_reg_none_fld_ext_r,
  l2h_regs_ext_reg_none_fld_int_r,
  l2h_regs_ext_reg_int_fld_none_r,
  l2h_regs_ext_reg_int_fld_gen_r,
  l2h_regs_ext_reg_int_fld_ext_r,
  l2h_regs_ext_reg_int_fld_int_r,
  dec_leaf_rd_data,
  dec_leaf_ack,
  dec_leaf_nack,
  dec_leaf_accept,
  dec_leaf_reject,
  dec_leaf_retry_atomic,
  dec_leaf_data_width );

  //------- inputs
  input    clk;
  input    reset;
  input    h2l_regs_none_reg_none_fld_none_w;
  input    h2l_regs_none_reg_none_fld_none_we;
  input    h2l_regs_none_reg_none_fld_gen_w;
  input    h2l_regs_none_reg_none_fld_gen_we;
  input    h2l_regs_none_reg_none_fld_ext_w;
  input    h2l_regs_none_reg_none_fld_ext_we;
  input    h2l_regs_none_reg_none_fld_int_w;
  input    h2l_regs_none_reg_none_fld_int_we;
  input    h2l_regs_none_reg_int_fld_none_w;
  input    h2l_regs_none_reg_int_fld_none_we;
  input    h2l_regs_none_reg_int_fld_gen_w;
  input    h2l_regs_none_reg_int_fld_gen_we;
  input    h2l_regs_none_reg_int_fld_ext_w;
  input    h2l_regs_none_reg_int_fld_ext_we;
  input    h2l_regs_none_reg_int_fld_int_w;
  input    h2l_regs_none_reg_int_fld_int_we;
  input    h2l_regs_ext_reg_none_fld_none_w;
  input    h2l_regs_ext_reg_none_fld_none_we;
  input    h2l_regs_ext_reg_none_fld_gen_w;
  input    h2l_regs_ext_reg_none_fld_gen_we;
  input    h2l_regs_ext_reg_none_fld_ext_w;
  input    h2l_regs_ext_reg_none_fld_ext_we;
  input    h2l_regs_ext_reg_none_fld_int_w;
  input    h2l_regs_ext_reg_none_fld_int_we;
  input    h2l_regs_ext_reg_int_fld_none_w;
  input    h2l_regs_ext_reg_int_fld_none_we;
  input    h2l_regs_ext_reg_int_fld_gen_w;
  input    h2l_regs_ext_reg_int_fld_gen_we;
  input    h2l_regs_ext_reg_int_fld_ext_w;
  input    h2l_regs_ext_reg_int_fld_ext_we;
  input    h2l_regs_ext_reg_int_fld_int_w;
  input    h2l_regs_ext_reg_int_fld_int_we;
  input     [31:0] leaf_dec_wr_data;
  input     [39:0] leaf_dec_addr;
  input    leaf_dec_block_sel;
  input    leaf_dec_valid;
  input    leaf_dec_wr_dvld;
  input     [1:0] leaf_dec_cycle;
  input     [2:0] leaf_dec_wr_width ;

  //------- outputs
  output    l2h_regs_none_reg_none_fld_none_r;
  output    l2h_regs_none_reg_none_fld_gen_r;
  output    l2h_regs_none_reg_none_fld_ext_r;
  output    l2h_regs_none_reg_none_fld_int_r;
  output    l2h_regs_none_reg_int_fld_none_r;
  output    l2h_regs_none_reg_int_fld_gen_r;
  output    l2h_regs_none_reg_int_fld_ext_r;
  output    l2h_regs_none_reg_int_fld_int_r;
  output    l2h_regs_ext_reg_none_fld_none_r;
  output    l2h_regs_ext_reg_none_fld_gen_r;
  output    l2h_regs_ext_reg_none_fld_ext_r;
  output    l2h_regs_ext_reg_none_fld_int_r;
  output    l2h_regs_ext_reg_int_fld_none_r;
  output    l2h_regs_ext_reg_int_fld_gen_r;
  output    l2h_regs_ext_reg_int_fld_ext_r;
  output    l2h_regs_ext_reg_int_fld_int_r;
  output     [31:0] dec_leaf_rd_data;
  output    dec_leaf_ack;
  output    dec_leaf_nack;
  output    dec_leaf_accept;
  output    dec_leaf_reject;
  output    dec_leaf_retry_atomic;
  output     [2:0] dec_leaf_data_width;

  //------- wire defines
  wire   [31:0] d2l_regs_none_reg_none_w;
  wire  d2l_regs_none_reg_none_we;
  wire  d2l_regs_none_reg_none_re;
  wire   [31:0] d2l_regs_none_reg_int_w;
  wire  d2l_regs_none_reg_int_we;
  wire  d2l_regs_none_reg_int_re;
  wire   [31:0] d2l_regs_ext_reg_none_w;
  wire  d2l_regs_ext_reg_none_we;
  wire  d2l_regs_ext_reg_none_re;
  wire   [31:0] d2l_regs_ext_reg_int_w;
  wire  d2l_regs_ext_reg_int_we;
  wire  d2l_regs_ext_reg_int_re;
  wire   [31:0] l2d_regs_none_reg_none_r;
  wire   [31:0] l2d_regs_none_reg_int_r;
  wire   [31:0] l2d_regs_ext_reg_none_r;
  wire   [31:0] l2d_regs_ext_reg_int_r;
  
  
  top_jrdl_decode pio_decode (
    .clk(clk),
    .reset(reset),
    .leaf_dec_wr_data(leaf_dec_wr_data),
    .leaf_dec_addr(leaf_dec_addr),
    .leaf_dec_block_sel(leaf_dec_block_sel),
    .leaf_dec_valid(leaf_dec_valid),
    .leaf_dec_wr_dvld(leaf_dec_wr_dvld),
    .leaf_dec_cycle(leaf_dec_cycle),
    .leaf_dec_wr_width (leaf_dec_wr_width ),
    .l2d_regs_none_reg_none_r(l2d_regs_none_reg_none_r),
    .l2d_regs_none_reg_int_r(l2d_regs_none_reg_int_r),
    .l2d_regs_ext_reg_none_r(l2d_regs_ext_reg_none_r),
    .l2d_regs_ext_reg_int_r(l2d_regs_ext_reg_int_r),
    .dec_leaf_rd_data(dec_leaf_rd_data),
    .dec_leaf_ack(dec_leaf_ack),
    .dec_leaf_nack(dec_leaf_nack),
    .dec_leaf_accept(dec_leaf_accept),
    .dec_leaf_reject(dec_leaf_reject),
    .dec_leaf_retry_atomic(dec_leaf_retry_atomic),
    .dec_leaf_data_width(dec_leaf_data_width),
    .d2l_regs_none_reg_none_w(d2l_regs_none_reg_none_w),
    .d2l_regs_none_reg_none_we(d2l_regs_none_reg_none_we),
    .d2l_regs_none_reg_none_re(d2l_regs_none_reg_none_re),
    .d2l_regs_none_reg_int_w(d2l_regs_none_reg_int_w),
    .d2l_regs_none_reg_int_we(d2l_regs_none_reg_int_we),
    .d2l_regs_none_reg_int_re(d2l_regs_none_reg_int_re),
    .d2l_regs_ext_reg_none_w(d2l_regs_ext_reg_none_w),
    .d2l_regs_ext_reg_none_we(d2l_regs_ext_reg_none_we),
    .d2l_regs_ext_reg_none_re(d2l_regs_ext_reg_none_re),
    .d2l_regs_ext_reg_int_w(d2l_regs_ext_reg_int_w),
    .d2l_regs_ext_reg_int_we(d2l_regs_ext_reg_int_we),
    .d2l_regs_ext_reg_int_re(d2l_regs_ext_reg_int_re) );
    
  top_jrdl_logic pio_logic (
    .clk(clk),
    .reset(reset),
    .d2l_regs_none_reg_none_w(d2l_regs_none_reg_none_w),
    .d2l_regs_none_reg_none_we(d2l_regs_none_reg_none_we),
    .d2l_regs_none_reg_none_re(d2l_regs_none_reg_none_re),
    .d2l_regs_none_reg_int_w(d2l_regs_none_reg_int_w),
    .d2l_regs_none_reg_int_we(d2l_regs_none_reg_int_we),
    .d2l_regs_none_reg_int_re(d2l_regs_none_reg_int_re),
    .d2l_regs_ext_reg_none_w(d2l_regs_ext_reg_none_w),
    .d2l_regs_ext_reg_none_we(d2l_regs_ext_reg_none_we),
    .d2l_regs_ext_reg_none_re(d2l_regs_ext_reg_none_re),
    .d2l_regs_ext_reg_int_w(d2l_regs_ext_reg_int_w),
    .d2l_regs_ext_reg_int_we(d2l_regs_ext_reg_int_we),
    .d2l_regs_ext_reg_int_re(d2l_regs_ext_reg_int_re),
    .h2l_regs_none_reg_none_fld_none_w(h2l_regs_none_reg_none_fld_none_w),
    .h2l_regs_none_reg_none_fld_none_we(h2l_regs_none_reg_none_fld_none_we),
    .h2l_regs_none_reg_none_fld_gen_w(h2l_regs_none_reg_none_fld_gen_w),
    .h2l_regs_none_reg_none_fld_gen_we(h2l_regs_none_reg_none_fld_gen_we),
    .h2l_regs_none_reg_none_fld_ext_w(h2l_regs_none_reg_none_fld_ext_w),
    .h2l_regs_none_reg_none_fld_ext_we(h2l_regs_none_reg_none_fld_ext_we),
    .h2l_regs_none_reg_none_fld_int_w(h2l_regs_none_reg_none_fld_int_w),
    .h2l_regs_none_reg_none_fld_int_we(h2l_regs_none_reg_none_fld_int_we),
    .h2l_regs_none_reg_int_fld_none_w(h2l_regs_none_reg_int_fld_none_w),
    .h2l_regs_none_reg_int_fld_none_we(h2l_regs_none_reg_int_fld_none_we),
    .h2l_regs_none_reg_int_fld_gen_w(h2l_regs_none_reg_int_fld_gen_w),
    .h2l_regs_none_reg_int_fld_gen_we(h2l_regs_none_reg_int_fld_gen_we),
    .h2l_regs_none_reg_int_fld_ext_w(h2l_regs_none_reg_int_fld_ext_w),
    .h2l_regs_none_reg_int_fld_ext_we(h2l_regs_none_reg_int_fld_ext_we),
    .h2l_regs_none_reg_int_fld_int_w(h2l_regs_none_reg_int_fld_int_w),
    .h2l_regs_none_reg_int_fld_int_we(h2l_regs_none_reg_int_fld_int_we),
    .h2l_regs_ext_reg_none_fld_none_w(h2l_regs_ext_reg_none_fld_none_w),
    .h2l_regs_ext_reg_none_fld_none_we(h2l_regs_ext_reg_none_fld_none_we),
    .h2l_regs_ext_reg_none_fld_gen_w(h2l_regs_ext_reg_none_fld_gen_w),
    .h2l_regs_ext_reg_none_fld_gen_we(h2l_regs_ext_reg_none_fld_gen_we),
    .h2l_regs_ext_reg_none_fld_ext_w(h2l_regs_ext_reg_none_fld_ext_w),
    .h2l_regs_ext_reg_none_fld_ext_we(h2l_regs_ext_reg_none_fld_ext_we),
    .h2l_regs_ext_reg_none_fld_int_w(h2l_regs_ext_reg_none_fld_int_w),
    .h2l_regs_ext_reg_none_fld_int_we(h2l_regs_ext_reg_none_fld_int_we),
    .h2l_regs_ext_reg_int_fld_none_w(h2l_regs_ext_reg_int_fld_none_w),
    .h2l_regs_ext_reg_int_fld_none_we(h2l_regs_ext_reg_int_fld_none_we),
    .h2l_regs_ext_reg_int_fld_gen_w(h2l_regs_ext_reg_int_fld_gen_w),
    .h2l_regs_ext_reg_int_fld_gen_we(h2l_regs_ext_reg_int_fld_gen_we),
    .h2l_regs_ext_reg_int_fld_ext_w(h2l_regs_ext_reg_int_fld_ext_w),
    .h2l_regs_ext_reg_int_fld_ext_we(h2l_regs_ext_reg_int_fld_ext_we),
    .h2l_regs_ext_reg_int_fld_int_w(h2l_regs_ext_reg_int_fld_int_w),
    .h2l_regs_ext_reg_int_fld_int_we(h2l_regs_ext_reg_int_fld_int_we),
    .l2d_regs_none_reg_none_r(l2d_regs_none_reg_none_r),
    .l2d_regs_none_reg_int_r(l2d_regs_none_reg_int_r),
    .l2d_regs_ext_reg_none_r(l2d_regs_ext_reg_none_r),
    .l2d_regs_ext_reg_int_r(l2d_regs_ext_reg_int_r),
    .l2h_regs_none_reg_none_fld_none_r(l2h_regs_none_reg_none_fld_none_r),
    .l2h_regs_none_reg_none_fld_gen_r(l2h_regs_none_reg_none_fld_gen_r),
    .l2h_regs_none_reg_none_fld_ext_r(l2h_regs_none_reg_none_fld_ext_r),
    .l2h_regs_none_reg_none_fld_int_r(l2h_regs_none_reg_none_fld_int_r),
    .l2h_regs_none_reg_int_fld_none_r(l2h_regs_none_reg_int_fld_none_r),
    .l2h_regs_none_reg_int_fld_gen_r(l2h_regs_none_reg_int_fld_gen_r),
    .l2h_regs_none_reg_int_fld_ext_r(l2h_regs_none_reg_int_fld_ext_r),
    .l2h_regs_none_reg_int_fld_int_r(l2h_regs_none_reg_int_fld_int_r),
    .l2h_regs_ext_reg_none_fld_none_r(l2h_regs_ext_reg_none_fld_none_r),
    .l2h_regs_ext_reg_none_fld_gen_r(l2h_regs_ext_reg_none_fld_gen_r),
    .l2h_regs_ext_reg_none_fld_ext_r(l2h_regs_ext_reg_none_fld_ext_r),
    .l2h_regs_ext_reg_none_fld_int_r(l2h_regs_ext_reg_none_fld_int_r),
    .l2h_regs_ext_reg_int_fld_none_r(l2h_regs_ext_reg_int_fld_none_r),
    .l2h_regs_ext_reg_int_fld_gen_r(l2h_regs_ext_reg_int_fld_gen_r),
    .l2h_regs_ext_reg_int_fld_ext_r(l2h_regs_ext_reg_int_fld_ext_r),
    .l2h_regs_ext_reg_int_fld_int_r(l2h_regs_ext_reg_int_fld_int_r) );
    
endmodule
