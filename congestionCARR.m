x = [6, 12,18, 24,30,36,42,48,54,60,66,72,78];

DEDICATED=[0.35,1.1,1.95,2.3, 2.25,2.15,2.13,2.10,2.05,1.5,1.5,1,1];

SP=[1.05,1.5,2.05,2.06,2.05,2.04,2.01,1.55,1.05,1,0.5,0.5,0];
MS2=[1.85,1.22,0.95,0.75,0.50,0.40,0.35,0.30,0.20,0.09,0.06,0,0];
MS=[2.05,1.1,0.55,0.35,0.30,0.25,0.2,0.15,0.15,0.05,0.05,0,0];






p1=subplot(1,1,1);
%h1=plot(x, OMNISuggest,'-ko', x, SVD,'-k*', x, POPULAR,'-kx', x,SOCIAL,'-k<', x, RANDOM,'-k+', 'MarkerSize', 12, 'LineWidth',1);
h1=plot(x, DEDICATED,'-ko', x, SP,'-k*',x, MS2,'-d', x, MS,'-kx' , 'MarkerSize',8, 'LineWidth',2);


%xh1=xlabel('Departure time of most population in minutes (Poisson distribution mean)', 'FontSize',15);
%[0.13 0.154008438818565 0.775 0.770991561181434
%set(p1, 'Position', [0.100 0.15 0.400 0.330]);
%get(xh1,'Position')
%set(xh1,'Position',get(xh1,'Position')+[0 0 0]);
xlim([5 70]);
%yh1=ylabel('Average Total Evacuation time in minutes', 'FontSize',15);
%%set(yh1,'Position',get(yh1,'Position')+[35 0 0]);
ylim([0,3.5]);
set(gca,'XTick',[6, 12,18, 24,30,36,42,48,54,60,66,72,78], 'FontSize',16);

%leg=legend('UBCF','RANDOM','POPULAR','SVD','OmniSuggest','FontSize',10)  
leg=legend('Dedicated','Shortest Path','CARRS-P','CARRS','FontSize',12); 
set(p1, 'Position', [0.13 0.11 0.25 0.5], 'FontSize', 10);

set(leg,...
    'Position',[0.171428571428571 0.455788090183 0.219642857142857 0.13015873015873]);
set(gcf, 'PaperPosition', [-1.3 -0.05 9.5 4.25]);
set(gcf, 'Color', 'w');
set(gcf, 'PaperSize', [3 2.27]); %Keep the same paper size
%saveas(gcf, 'DR', 'pdf');

print('-djpeg','-r1000','averagecongestion');
%export_fig 'evacuation-normal' -jpg -r1000

%set(gcf, 'PaperPosition', [-1.3 -0.05 9.5 4.25]);
%set(gcf, 'Color', 'w');r
%set(gcf, 'PaperSize', [1.59 1.16]); %Keep the same paper size

%set(gcf, 'Position', [100 100 300.59 250.16])

%export_fig DR -tiff -r1200 -q110;


