//   Ordt 170315.01 autogenerated file 
//   Input: ./rdl_hier_02/test.rdl
//   Parms: ./rdl_hier_02/test.parms
//   Date: Wed Mar 15 12:13:27 EDT 2017
//

import uvm_pkg::*;
import ordt_uvm_reg_pkg::*;

// Config reg set  config_regs
class reg_base_map_base_regs_config_regs extends uvm_reg_rdl;
  string m_rdl_tag;
  rand uvm_reg_field_rdl lsb_field;
  rand uvm_reg_field_rdl msb_field;
  
  function new(string name = "reg_base_map_base_regs_config_regs");
    super.new(name, 32, build_coverage(UVM_NO_COVERAGE));
  endfunction: new
  
  virtual function void build();
    string rdl_reg_name;
    this.lsb_field = new("lsb_field");
    this.lsb_field.set_rdl_access_info(1, 1, 1, 0, 0, 0);
    this.lsb_field.configure(this, 16, 0, "RW", 0, 16'hffff, 1, 1, 0);
    this.msb_field = new("msb_field");
    this.msb_field.set_rdl_access_info(1, 1, 1, 0, 0, 0);
    this.msb_field.configure(this, 16, 16, "RW", 0, 16'h0, 1, 1, 0);
    
    rdl_reg_name = get_rdl_name("rg_");
    add_hdl_path_slice({rdl_reg_name, "lsb_field"}, 0, 16);
    add_hdl_path_slice({rdl_reg_name, "msb_field"}, 16, 16);
  endfunction: build
  
  virtual function void add_callbacks();
  endfunction: add_callbacks
  
endclass : reg_base_map_base_regs_config_regs

// State regs
class reg_base_map_base_regs_state_regs extends uvm_reg_rdl;
  string m_rdl_tag;
  rand uvm_reg_field_rdl lsb_field;
  
  function new(string name = "reg_base_map_base_regs_state_regs");
    super.new(name, 32, build_coverage(UVM_NO_COVERAGE));
  endfunction: new
  
  virtual function void build();
    string rdl_reg_name;
    this.lsb_field = new("lsb_field");
    this.lsb_field.set_rdl_access_info(1, 0, 0, 1, 0, 0);
    this.lsb_field.configure(this, 16, 0, "RO", 1, 16'hffff, 1, 0, 1);
    
    rdl_reg_name = get_rdl_name("rg_");
    add_hdl_path_slice({rdl_reg_name, "lsb_field"}, 0, 16);
  endfunction: build
  
  virtual function void add_callbacks();
  endfunction: add_callbacks
  
endclass : reg_base_map_base_regs_state_regs

// Block base_regs
class block_base_map_base_regs extends uvm_reg_block_rdl;
  rand reg_base_map_base_regs_config_regs config_regs[8];
  rand reg_base_map_base_regs_state_regs state_regs[8];
  
  function new(string name = "block_base_map_base_regs");
    super.new(name);
  endfunction: new
  
  virtual function void build();
    this.default_map = create_map("", 0, 4, UVM_LITTLE_ENDIAN, 1);
    foreach (this.config_regs[i]) begin
      this.config_regs[i] = new($psprintf("config_regs [%0d]",i));
      this.config_regs[i].configure(this, null, "");
      this.config_regs[i].set_rdl_tag($psprintf("config_regs_%0d_",i));
      this.config_regs[i].set_reg_test_info(0, 0, 0);
      this.config_regs[i].build();
      this.default_map.add_reg(this.config_regs[i], `UVM_REG_ADDR_WIDTH'h0+i*`UVM_REG_ADDR_WIDTH'h4, "RW", 0);
    end
    foreach (this.state_regs[i]) begin
      this.state_regs[i] = new($psprintf("state_regs [%0d]",i));
      this.state_regs[i].configure(this, null, "");
      this.state_regs[i].set_rdl_tag($psprintf("state_regs_%0d_",i));
      this.state_regs[i].set_reg_test_info(0, 0, 0);
      this.state_regs[i].build();
      this.default_map.add_reg(this.state_regs[i], `UVM_REG_ADDR_WIDTH'h100+i*`UVM_REG_ADDR_WIDTH'h4, "RO", 0);
    end
  endfunction: build
  
  `uvm_object_utils(block_base_map_base_regs)
endclass : block_base_map_base_regs

// Block ext_base_regs
class block_base_map_ext_base_regs extends uvm_reg_block_rdl;
  rand reg_base_map_base_regs_config_regs config_regs[8];
  rand reg_base_map_base_regs_state_regs state_regs[8];
  
  function new(string name = "block_base_map_ext_base_regs");
    super.new(name);
  endfunction: new
  
  virtual function void build();
    this.default_map = create_map("", 0, 4, UVM_LITTLE_ENDIAN, 1);
    foreach (this.config_regs[i]) begin
      this.config_regs[i] = new($psprintf("config_regs [%0d]",i));
      this.config_regs[i].configure(this, null, "");
      this.config_regs[i].set_rdl_tag($psprintf("config_regs_%0d_",i));
      this.config_regs[i].set_external(1);
      this.config_regs[i].set_reg_test_info(0, 0, 0);
      this.config_regs[i].build();
      this.default_map.add_reg(this.config_regs[i], `UVM_REG_ADDR_WIDTH'h0+i*`UVM_REG_ADDR_WIDTH'h4, "RW", 0);
    end
    foreach (this.state_regs[i]) begin
      this.state_regs[i] = new($psprintf("state_regs [%0d]",i));
      this.state_regs[i].configure(this, null, "");
      this.state_regs[i].set_rdl_tag($psprintf("state_regs_%0d_",i));
      this.state_regs[i].set_external(1);
      this.state_regs[i].set_reg_test_info(0, 0, 0);
      this.state_regs[i].build();
      this.default_map.add_reg(this.state_regs[i], `UVM_REG_ADDR_WIDTH'h100+i*`UVM_REG_ADDR_WIDTH'h4, "RO", 0);
    end
  endfunction: build
  
  `uvm_object_utils(block_base_map_ext_base_regs)
endclass : block_base_map_ext_base_regs

// Block ext_base_regs
class block_base_map_l2_r16_child_ext_base_regs extends uvm_reg_block_rdl;
  rand reg_base_map_base_regs_config_regs config_regs[8];
  rand reg_base_map_base_regs_state_regs state_regs[8];
  
  function new(string name = "block_base_map_l2_r16_child_ext_base_regs");
    super.new(name);
  endfunction: new
  
  virtual function void build();
    this.default_map = create_map("", 0, 4, UVM_LITTLE_ENDIAN, 1);
    foreach (this.config_regs[i]) begin
      this.config_regs[i] = new($psprintf("config_regs [%0d]",i));
      this.config_regs[i].configure(this, null, "");
      this.config_regs[i].set_rdl_tag($psprintf("config_regs_%0d_",i));
      this.config_regs[i].set_external(1);
      this.config_regs[i].set_reg_test_info(0, 0, 0);
      this.config_regs[i].build();
      this.default_map.add_reg(this.config_regs[i], `UVM_REG_ADDR_WIDTH'h0+i*`UVM_REG_ADDR_WIDTH'h4, "RW", 0);
    end
    foreach (this.state_regs[i]) begin
      this.state_regs[i] = new($psprintf("state_regs [%0d]",i));
      this.state_regs[i].configure(this, null, "");
      this.state_regs[i].set_rdl_tag($psprintf("state_regs_%0d_",i));
      this.state_regs[i].set_external(1);
      this.state_regs[i].set_reg_test_info(0, 0, 0);
      this.state_regs[i].build();
      this.default_map.add_reg(this.state_regs[i], `UVM_REG_ADDR_WIDTH'h100+i*`UVM_REG_ADDR_WIDTH'h4, "RO", 0);
    end
  endfunction: build
  
  `uvm_object_utils(block_base_map_l2_r16_child_ext_base_regs)
endclass : block_base_map_l2_r16_child_ext_base_regs

// L3 regs
class block_base_map_l2_r16_child_l3_child extends uvm_reg_block_rdl;
  rand block_base_map_base_regs base_regs;
  rand block_base_map_l2_r16_child_ext_base_regs ext_base_regs;
  
  function new(string name = "block_base_map_l2_r16_child_l3_child");
    super.new(name);
  endfunction: new
  
  virtual function void build();
    this.default_map = create_map("", 0, 4, UVM_LITTLE_ENDIAN, 1);
    this.base_regs = block_base_map_base_regs::type_id::create("base_regs",, get_full_name());
    this.base_regs.configure(this, "");
    this.base_regs.set_rdl_tag("base_regs_");
    this.base_regs.build();
    this.default_map.add_submap(this.base_regs.default_map, `UVM_REG_ADDR_WIDTH'h0);
    this.ext_base_regs = block_base_map_l2_r16_child_ext_base_regs::type_id::create("ext_base_regs",, get_full_name());
    this.ext_base_regs.configure(this, "");
    this.ext_base_regs.set_rdl_tag("ext_base_regs_");
    this.ext_base_regs.build();
    this.default_map.add_submap(this.ext_base_regs.default_map, `UVM_REG_ADDR_WIDTH'h800);
    set_hdl_path_root({`BASE_MAP_L2_R16_CHILD_PIO_INSTANCE_PATH, ".pio_logic"});
  endfunction: build
  
  `uvm_object_utils(block_base_map_l2_r16_child_l3_child)
endclass : block_base_map_l2_r16_child_l3_child

// L2 regs
class block_base_map_l2_r16_child extends uvm_reg_block_rdl;
  rand block_base_map_base_regs base_regs;
  rand block_base_map_l2_r16_child_ext_base_regs ext_base_regs;
  rand block_base_map_l2_r16_child_l3_child l3_child;
  
  function new(string name = "block_base_map_l2_r16_child");
    super.new(name);
  endfunction: new
  
  virtual function void build();
    this.default_map = create_map("", 0, 4, UVM_LITTLE_ENDIAN, 1);
    this.base_regs = block_base_map_base_regs::type_id::create("base_regs",, get_full_name());
    this.base_regs.configure(this, "");
    this.base_regs.set_rdl_tag("base_regs_");
    this.base_regs.build();
    this.default_map.add_submap(this.base_regs.default_map, `UVM_REG_ADDR_WIDTH'h0);
    this.ext_base_regs = block_base_map_l2_r16_child_ext_base_regs::type_id::create("ext_base_regs",, get_full_name());
    this.ext_base_regs.configure(this, "");
    this.ext_base_regs.set_rdl_tag("ext_base_regs_");
    this.ext_base_regs.build();
    this.default_map.add_submap(this.ext_base_regs.default_map, `UVM_REG_ADDR_WIDTH'h1000);
    this.l3_child = block_base_map_l2_r16_child_l3_child::type_id::create("l3_child",, get_full_name());
    this.l3_child.configure(this, "");
    this.l3_child.set_rdl_address_map(1);
    this.l3_child.set_rdl_address_map_hdl_path({`BASE_MAP_L2_R16_CHILD_PIO_INSTANCE_PATH, ".pio_logic"});
    this.l3_child.build();
    this.default_map.add_submap(this.l3_child.default_map, `UVM_REG_ADDR_WIDTH'h2000);
    set_hdl_path_root({`BASE_MAP_L2_R16_CHILD_PIO_INSTANCE_PATH, ".pio_logic"});
  endfunction: build
  
  `uvm_object_utils(block_base_map_l2_r16_child)
endclass : block_base_map_l2_r16_child

// L2 regs
class block_base_map_l2_s8_child extends uvm_reg_block_rdl;
  rand block_base_map_base_regs base_regs;
  rand block_base_map_l2_r16_child_ext_base_regs ext_base_regs;
  rand block_base_map_l2_r16_child_l3_child l3_child;
  
  function new(string name = "block_base_map_l2_s8_child");
    super.new(name);
  endfunction: new
  
  virtual function void build();
    this.default_map = create_map("", 0, 4, UVM_LITTLE_ENDIAN, 1);
    this.base_regs = block_base_map_base_regs::type_id::create("base_regs",, get_full_name());
    this.base_regs.configure(this, "");
    this.base_regs.set_rdl_tag("base_regs_");
    this.base_regs.build();
    this.default_map.add_submap(this.base_regs.default_map, `UVM_REG_ADDR_WIDTH'h0);
    this.ext_base_regs = block_base_map_l2_r16_child_ext_base_regs::type_id::create("ext_base_regs",, get_full_name());
    this.ext_base_regs.configure(this, "");
    this.ext_base_regs.set_rdl_tag("ext_base_regs_");
    this.ext_base_regs.build();
    this.default_map.add_submap(this.ext_base_regs.default_map, `UVM_REG_ADDR_WIDTH'h1000);
    this.l3_child = block_base_map_l2_r16_child_l3_child::type_id::create("l3_child",, get_full_name());
    this.l3_child.configure(this, "");
    this.l3_child.set_rdl_address_map(1);
    this.l3_child.set_rdl_address_map_hdl_path({`BASE_MAP_L2_S8_CHILD_PIO_INSTANCE_PATH, ".pio_logic"});
    this.l3_child.build();
    this.default_map.add_submap(this.l3_child.default_map, `UVM_REG_ADDR_WIDTH'h2000);
    set_hdl_path_root({`BASE_MAP_L2_S8_CHILD_PIO_INSTANCE_PATH, ".pio_logic"});
  endfunction: build
  
  `uvm_object_utils(block_base_map_l2_s8_child)
endclass : block_base_map_l2_s8_child

// L2 regs
class block_base_map_l2_dflt_child extends uvm_reg_block_rdl;
  rand block_base_map_base_regs base_regs;
  rand block_base_map_l2_r16_child_ext_base_regs ext_base_regs;
  rand block_base_map_l2_r16_child_l3_child l3_child;
  
  function new(string name = "block_base_map_l2_dflt_child");
    super.new(name);
  endfunction: new
  
  virtual function void build();
    this.default_map = create_map("", 0, 4, UVM_LITTLE_ENDIAN, 1);
    this.base_regs = block_base_map_base_regs::type_id::create("base_regs",, get_full_name());
    this.base_regs.configure(this, "");
    this.base_regs.set_rdl_tag("base_regs_");
    this.base_regs.build();
    this.default_map.add_submap(this.base_regs.default_map, `UVM_REG_ADDR_WIDTH'h0);
    this.ext_base_regs = block_base_map_l2_r16_child_ext_base_regs::type_id::create("ext_base_regs",, get_full_name());
    this.ext_base_regs.configure(this, "");
    this.ext_base_regs.set_rdl_tag("ext_base_regs_");
    this.ext_base_regs.build();
    this.default_map.add_submap(this.ext_base_regs.default_map, `UVM_REG_ADDR_WIDTH'h1000);
    this.l3_child = block_base_map_l2_r16_child_l3_child::type_id::create("l3_child",, get_full_name());
    this.l3_child.configure(this, "");
    this.l3_child.set_rdl_address_map(1);
    this.l3_child.set_rdl_address_map_hdl_path({`BASE_MAP_L2_DFLT_CHILD_PIO_INSTANCE_PATH, ".pio_logic"});
    this.l3_child.build();
    this.default_map.add_submap(this.l3_child.default_map, `UVM_REG_ADDR_WIDTH'h2000);
    set_hdl_path_root({`BASE_MAP_L2_DFLT_CHILD_PIO_INSTANCE_PATH, ".pio_logic"});
  endfunction: build
  
  `uvm_object_utils(block_base_map_l2_dflt_child)
endclass : block_base_map_l2_dflt_child

// Register sing_reg
class reg_base_map_singleton_rf_s8_sing_reg extends uvm_reg_rdl;
  string m_rdl_tag;
  rand uvm_reg_field_rdl lsb_field;
  rand uvm_reg_field_rdl msb_field;
  
  function new(string name = "reg_base_map_singleton_rf_s8_sing_reg");
    super.new(name, 32, build_coverage(UVM_NO_COVERAGE));
  endfunction: new
  
  virtual function void build();
    string rdl_reg_name;
    this.lsb_field = new("lsb_field");
    this.lsb_field.set_rdl_access_info(1, 1, 1, 0, 0, 0);
    this.lsb_field.configure(this, 16, 0, "RW", 0, 16'hffff, 1, 1, 0);
    this.msb_field = new("msb_field");
    this.msb_field.set_rdl_access_info(1, 1, 1, 0, 0, 0);
    this.msb_field.configure(this, 16, 16, "RW", 0, 16'h0, 1, 1, 0);
    
    rdl_reg_name = get_rdl_name("rg_");
    add_hdl_path_slice({rdl_reg_name, "lsb_field"}, 0, 16);
    add_hdl_path_slice({rdl_reg_name, "msb_field"}, 16, 16);
  endfunction: build
  
  virtual function void add_callbacks();
  endfunction: add_callbacks
  
endclass : reg_base_map_singleton_rf_s8_sing_reg

// Block singleton_rf_s8
class block_base_map_singleton_rf_s8 extends uvm_reg_block_rdl;
  rand reg_base_map_singleton_rf_s8_sing_reg sing_reg;
  
  function new(string name = "block_base_map_singleton_rf_s8");
    super.new(name);
  endfunction: new
  
  virtual function void build();
    this.default_map = create_map("", 0, 4, UVM_LITTLE_ENDIAN, 1);
    this.sing_reg = new("sing_reg");
    this.sing_reg.configure(this, null, "");
    this.sing_reg.set_rdl_tag("sing_reg_");
    this.sing_reg.set_reg_test_info(0, 0, 0);
    this.sing_reg.build();
    this.default_map.add_reg(this.sing_reg, `UVM_REG_ADDR_WIDTH'h0, "RW", 0);
    set_hdl_path_root({`BASE_MAP_SINGLETON_RF_S8_PIO_INSTANCE_PATH, ".pio_logic"});
  endfunction: build
  
  `uvm_object_utils(block_base_map_singleton_rf_s8)
endclass : block_base_map_singleton_rf_s8

// Block singleton_rf_r16
class block_base_map_singleton_rf_r16 extends uvm_reg_block_rdl;
  rand reg_base_map_singleton_rf_s8_sing_reg sing_reg;
  
  function new(string name = "block_base_map_singleton_rf_r16");
    super.new(name);
  endfunction: new
  
  virtual function void build();
    this.default_map = create_map("", 0, 4, UVM_LITTLE_ENDIAN, 1);
    this.sing_reg = new("sing_reg");
    this.sing_reg.configure(this, null, "");
    this.sing_reg.set_rdl_tag("sing_reg_");
    this.sing_reg.set_reg_test_info(0, 0, 0);
    this.sing_reg.build();
    this.default_map.add_reg(this.sing_reg, `UVM_REG_ADDR_WIDTH'h0, "RW", 0);
    set_hdl_path_root({`BASE_MAP_SINGLETON_RF_R16_PIO_INSTANCE_PATH, ".pio_logic"});
  endfunction: build
  
  `uvm_object_utils(block_base_map_singleton_rf_r16)
endclass : block_base_map_singleton_rf_r16

// Block singleton_rf_dflt
class block_base_map_singleton_rf_dflt extends uvm_reg_block_rdl;
  rand reg_base_map_singleton_rf_s8_sing_reg sing_reg;
  
  function new(string name = "block_base_map_singleton_rf_dflt");
    super.new(name);
  endfunction: new
  
  virtual function void build();
    this.default_map = create_map("", 0, 4, UVM_LITTLE_ENDIAN, 1);
    this.sing_reg = new("sing_reg");
    this.sing_reg.configure(this, null, "");
    this.sing_reg.set_rdl_tag("sing_reg_");
    this.sing_reg.set_reg_test_info(0, 0, 0);
    this.sing_reg.build();
    this.default_map.add_reg(this.sing_reg, `UVM_REG_ADDR_WIDTH'h0, "RW", 0);
    set_hdl_path_root({`BASE_MAP_SINGLETON_RF_DFLT_PIO_INSTANCE_PATH, ".pio_logic"});
  endfunction: build
  
  `uvm_object_utils(block_base_map_singleton_rf_dflt)
endclass : block_base_map_singleton_rf_dflt

// Base block
class block_base_map extends uvm_reg_block_rdl;
  rand block_base_map_base_regs base_regs;
  rand block_base_map_ext_base_regs ext_base_regs;
  rand block_base_map_l2_r16_child l2_r16_child;
  rand block_base_map_l2_s8_child l2_s8_child;
  rand block_base_map_l2_dflt_child l2_dflt_child;
  rand block_base_map_singleton_rf_s8 singleton_rf_s8;
  rand block_base_map_singleton_rf_r16 singleton_rf_r16;
  rand block_base_map_singleton_rf_dflt singleton_rf_dflt;
  
  function new(string name = "block_base_map");
    super.new(name);
  endfunction: new
  
  virtual function void build();
    this.default_map = create_map("", `UVM_REG_ADDR_WIDTH'h0, 4, UVM_LITTLE_ENDIAN, 1);
    this.set_rdl_address_map(1);
    this.set_rdl_address_map_hdl_path({`BASE_MAP_PIO_INSTANCE_PATH, ".pio_logic"});
    this.base_regs = block_base_map_base_regs::type_id::create("base_regs",, get_full_name());
    this.base_regs.configure(this, "");
    this.base_regs.set_rdl_tag("base_regs_");
    this.base_regs.build();
    this.default_map.add_submap(this.base_regs.default_map, `UVM_REG_ADDR_WIDTH'h0);
    this.ext_base_regs = block_base_map_ext_base_regs::type_id::create("ext_base_regs",, get_full_name());
    this.ext_base_regs.configure(this, "");
    this.ext_base_regs.set_rdl_tag("ext_base_regs_");
    this.ext_base_regs.build();
    this.default_map.add_submap(this.ext_base_regs.default_map, `UVM_REG_ADDR_WIDTH'h10000);
    this.l2_r16_child = block_base_map_l2_r16_child::type_id::create("l2_r16_child",, get_full_name());
    this.l2_r16_child.configure(this, "");
    this.l2_r16_child.set_rdl_address_map(1);
    this.l2_r16_child.set_rdl_address_map_hdl_path({`BASE_MAP_L2_R16_CHILD_PIO_INSTANCE_PATH, ".pio_logic"});
    this.l2_r16_child.build();
    this.default_map.add_submap(this.l2_r16_child.default_map, `UVM_REG_ADDR_WIDTH'h20000);
    this.l2_s8_child = block_base_map_l2_s8_child::type_id::create("l2_s8_child",, get_full_name());
    this.l2_s8_child.configure(this, "");
    this.l2_s8_child.set_rdl_address_map(1);
    this.l2_s8_child.set_rdl_address_map_hdl_path({`BASE_MAP_L2_S8_CHILD_PIO_INSTANCE_PATH, ".pio_logic"});
    this.l2_s8_child.build();
    this.default_map.add_submap(this.l2_s8_child.default_map, `UVM_REG_ADDR_WIDTH'h30000);
    this.l2_dflt_child = block_base_map_l2_dflt_child::type_id::create("l2_dflt_child",, get_full_name());
    this.l2_dflt_child.configure(this, "");
    this.l2_dflt_child.set_rdl_address_map(1);
    this.l2_dflt_child.set_rdl_address_map_hdl_path({`BASE_MAP_L2_DFLT_CHILD_PIO_INSTANCE_PATH, ".pio_logic"});
    this.l2_dflt_child.build();
    this.default_map.add_submap(this.l2_dflt_child.default_map, `UVM_REG_ADDR_WIDTH'h40000);
    this.singleton_rf_s8 = block_base_map_singleton_rf_s8::type_id::create("singleton_rf_s8",, get_full_name());
    this.singleton_rf_s8.configure(this, "");
    this.singleton_rf_s8.set_rdl_address_map(1);
    this.singleton_rf_s8.set_rdl_address_map_hdl_path({`BASE_MAP_SINGLETON_RF_S8_PIO_INSTANCE_PATH, ".pio_logic"});
    this.singleton_rf_s8.build();
    this.default_map.add_submap(this.singleton_rf_s8.default_map, `UVM_REG_ADDR_WIDTH'h50000);
    this.singleton_rf_r16 = block_base_map_singleton_rf_r16::type_id::create("singleton_rf_r16",, get_full_name());
    this.singleton_rf_r16.configure(this, "");
    this.singleton_rf_r16.set_rdl_address_map(1);
    this.singleton_rf_r16.set_rdl_address_map_hdl_path({`BASE_MAP_SINGLETON_RF_R16_PIO_INSTANCE_PATH, ".pio_logic"});
    this.singleton_rf_r16.build();
    this.default_map.add_submap(this.singleton_rf_r16.default_map, `UVM_REG_ADDR_WIDTH'h60000);
    this.singleton_rf_dflt = block_base_map_singleton_rf_dflt::type_id::create("singleton_rf_dflt",, get_full_name());
    this.singleton_rf_dflt.configure(this, "");
    this.singleton_rf_dflt.set_rdl_address_map(1);
    this.singleton_rf_dflt.set_rdl_address_map_hdl_path({`BASE_MAP_SINGLETON_RF_DFLT_PIO_INSTANCE_PATH, ".pio_logic"});
    this.singleton_rf_dflt.build();
    this.default_map.add_submap(this.singleton_rf_dflt.default_map, `UVM_REG_ADDR_WIDTH'h70000);
    set_hdl_path_root({`BASE_MAP_PIO_INSTANCE_PATH, ".pio_logic"});
    this.add_callbacks();
  endfunction: build
  
  `uvm_object_utils(block_base_map)
endclass : block_base_map
