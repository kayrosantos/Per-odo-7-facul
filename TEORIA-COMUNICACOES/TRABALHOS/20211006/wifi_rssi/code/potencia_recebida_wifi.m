function potencia_recebida_wifi()
  
  %%addpath('../../../iguanas')
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
  printf('Início de execução \n');
  output_file = 'fundos.csv';
  wifi_power = wlan_RSSI('Ubuntu', 0.5, 120, 'wlo1');
  csvwrite(output_file, wifi_power);
  printf('Fim de execução \n');
end

potencia_recebida_wifi()