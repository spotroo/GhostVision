% load('data_via_UART_USB.mat')

% for i=1:5
%     name = sprintf('data%i', i);
%     new_name = sprintf('data%if', i);
%     % down-sample: keep every 48th sample to go from 488->100 Hz
%     eval(new_name) = zeros(ceil(length(eval(name))/4),1);
%     eval(new_name) = downsample(eval(name), 48);
%     
%     Fs = 100;
% end




%     % down-sample: keep every 48th sample to go from 488->100 Hz
%     %data1f = zeros(ceil(length(data1)/4),1);
%     data1s = downsample(data1, 48);
%     data2s = downsample(data2, 48);
%     data3s = downsample(data3, 48);
%     data4s = downsample(data4, 48);
%     data5s = downsample(data5, 48);
%     
%     save('data_UART_downsampled.mat', 'data1s', 'data2s', 'data3s', 'data4s', 'data5s');
%     
%     Fs = 100;

    
    % down-sample: keep every 48th sample to go from 488->100 Hz
    %data1f = zeros(ceil(length(data1)/4),1);
    data1fs = downsample(data1f, 48);
    data2fs = downsample(data2f, 48);
    data3fs = downsample(data3f, 48);
    data4fs = downsample(data4f, 48);
    data5fs = downsample(data5f, 48);
    
    save('data_UART_Filtered_downsampled.mat', 'data1fs', 'data2fs', 'data3fs', 'data4fs', 'data5fs');
    