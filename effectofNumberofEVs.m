x = [20, 30, 40, 50];

DEDICATED =[9.1,10.18,13.21,16.1];
SP=[8.93,10.23,12.21,15.23];
MS2=[8.92,10.01,11.69,14.49];
MS=[8.91,9.98,10.99,13.77];





p1=subplot(1,1,1);
%h1=plot(x, OMNISuggest,'-ko', x, SVD,'-k*', x, POPULAR,'-kx', x,SOCIAL,'-k<', x, RANDOM,'-k+', 'MarkerSize', 12, 'LineWidth',1);
h1=plot(x, DEDICATED,'-ko', x, SP,'-k*', x, MS2,'-d', x,MS,'-kx' , 'MarkerSize',8, 'LineWidth',2);

%xh1=xlabel('Departure time of most population in minutes (Poisson distribution mean)', 'FontSize',15);
%[0.13 0.154008438818565 0.775 0.770991561181434
%set(p1, 'Position', [0.100 0.15 0.400 0.330]);
%get(xh1,'Position')
%set(xh1,'Position',get(xh1,'Position')+[0 0 0]);
xlim([20 50]);
%yh1=ylabel('Average Total Evacuation time in minutes', 'FontSize',15);
%%set(yh1,'Position',get(yh1,'Position')+[35 0 0]);
ylim([8,16]);
set(gca,'XTick',[20, 30, 40, 50], 'FontSize',16);

%leg=legend('UBCF','RANDOM','POPULAR','SVD','OmniSuggest','FontSize',10)  
leg=legend('Dedicated','Shortest Path','CARRS-P','CARRS','FontSize',14); 
set(p1, 'Position', [0.13 0.11 0.25 0.5], 'FontSize', 12);
set(leg,...
    'Position',[0.1 0.474835709230615 0.219642857142857 0.13015873015873]);
%set(gcf, 'PaperPosition', [-1.3 -0.05 9.5 4.25]);
%set(gcf, 'Color', 'w');
%set(gcf, 'PaperSize', [3 2.27]); %Keep the same paper size
%saveas(gcf, 'DR', 'pdf');

set(gcf, 'PaperPosition', [-1.3 -0.05 9.5 4.25]); %Position the plot further to the left and down. Extend the plot to fill entire paper.
set(gcf, 'PaperSize', [3.5 2.7]); %Keep the same paper size
set(gcf, 'Color', 'w');
print('-djpeg','-r1000','departureRate');
%export_fig 'evacuation-normal' -jpg -r1000

%set(gcf, 'PaperPosition', [-1.3 -0.05 9.5 4.25]);
%set(gcf, 'Color', 'w');
%set(gcf, 'PaperSize', [1.59 1.16]); %Keep the same paper size

%set(gcf, 'Position', [100 100 300.59 250.16])

%export_fig DR -tiff -r1200 -q110;


