
x=[6,36,66,96,126,156,186,216,246,276,300];


DEDICATED=[274.8,641.97,1137.27,1818.98,2412.12,2756.96,3171.21,3202,3394.23,3301.11,2812];
SP=[264.6666667,938.6666667,1527.666667,2308.666667,2967.666667,2885.833333,3091.333333,2905,3094.166667,2905.666667,0];


MS2=[13,2097,2283.166667,3036.166667,2960.166667,1760.166667,0,0,0,0,0];
MS=[3,2597,2583.166667,3336.166667,2660.166667,0,0,0,0,0,0];








p1=subplot(1,1,1);
%h1=plot(x, OMNISuggest,'-ko', x, SVD,'-k*', x, POPULAR,'-kx', x,SOCIAL,'-k<', x, RANDOM,'-k+', 'MarkerSize', 12, 'LineWidth',1);
h1=plot(x, DEDICATED,'-ko', x, SP,'-k*', x, MS2,'-d', x,MS,'-kx' , 'MarkerSize',8, 'LineWidth',2);

%xh1=xlabel('Departure time of most population in minutes (Poisson distribution mean)', 'FontSize',15);
%[0.13 0.154008438818565 0.775 0.770991561181434
%set(p1, 'Position', [0.100 0.15 0.400 0.330]);
%get(xh1,'Position')
%set(xh1,'Position',get(xh1,'Position')+[0 0 0]);
xlim([6 ,300]);
%yh1=ylabel('Average Total Evacuation time in minutes', 'FontSize',15);
%%set(yh1,'Position',get(yh1,'Position')+[35 0 0]);
ylim([0,5000]);
set(gca,'XTick',[6,36,66,96,126,156,186,216,246,276,300], 'FontSize',14);

%leg=legend('UBCF','RANDOM','POPULAR','SVD','OmniSuggest','FontSize',10)  
leg=legend('Dedicated','Shortest Path','CARRS-P','CARRS','FontSize',12);  
set(p1, 'Position', [0.13 0.11 0.25 0.5], 'FontSize', 8);

set(leg,...
    'Position',[0.171428571428571 0.455788090183 0.219642857142857 0.13015873015873]);
set(gcf, 'PaperPosition', [-1.3 -0.05 9.5 4.25]);
set(gcf, 'Color', 'w');
set(gcf, 'PaperSize', [3 2.27]); %Keep the same paper size
%saveas(gcf, 'DR', 'pdf');

print('-djpeg','-r1000','shape2');
%export_fig 'evacuation-normal' -jpg -r1000

%set(gcf, 'PaperPosition', [-1.3 -0.05 9.5 4.25]);
%set(gcf, 'Color', 'w');r
%set(gcf, 'PaperSize', [1.59 1.16]); %Keep the same paper size

%set(gcf, 'Position', [100 100 300.59 250.16])

%export_fig DR -tiff -r1200 -q110;


