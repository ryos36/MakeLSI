def lvs_digital_settings
  same_circuits 'int_test', '.TOP'
  netlist.flatten_circuit 'Nch*'
  netlist.flatten_circuit 'Pch*'
end
