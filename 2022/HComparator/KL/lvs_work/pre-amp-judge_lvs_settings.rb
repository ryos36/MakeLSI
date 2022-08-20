def lvs_settings
  same_circuits 'TOP', '.TOP'
  align
  same_device_classes 'HRES', 'RES'
  same_device_classes 'RES', 'RES'
  same_device_classes 'NMOS', 'NCH'
  same_device_classes 'PMOS', 'PCH'
  tolerance 'HRES', 'R', :relative => 0.03
  tolerance 'RES', 'R', :relative => 0.03
  tolerance 'CAP', 'C', :relative => 0.03
  netlist.make_top_level_pins
  netlist.flatten_circuit 'Nch*'
  netlist.flatten_circuit 'Pch*'
  netlist.flatten_circuit 'R_poly*'
  netlist.flatten_circuit 'HR_poly'
  netlist.combine_devices
  schematic.combine_devices
  same_device_classes 'PMOS', 'PMOS_OR1'
  same_device_classes 'NMOS', 'NMOS_OR1'
end
