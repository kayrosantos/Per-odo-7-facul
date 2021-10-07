function potencia_recebida_wifi()
  
  addpath('../../../iguanas')
  
  %% Configura as variáveis fundamentais
  global v;
  v = setFundVars(0.001, 10);
  
  runSim()
 
end

function runSim()
  
  global v;
  
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % Condiguração de Variáveis
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  
  output_file = 'quarto.csv';
  
  wifi_power = wlan_RSSI('Ubuntu', 0.5, 120, 'wlp1s0');
  csvwrite(output_file, wifi_power);
  
end