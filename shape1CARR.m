



x=[6,36,96,156,276,336, 372, 402,446];



DEDICATED=[375.823,426.3333333,638.483333,2470.99,2927.5,3032.333333,3366.5,3466.5,3477.3];
SP=[665.1666667,626.3333333,1933.333333,2490.5,2627.5,2632.333333,3166.5,3366.5,0];






MS2=[9.333333333,2077,3098.833333,2828.333333,2641,1122,0,0,0];

MS=[8.333333333,2677,3398.833333,2428.333333,2441,0,0,0,0];






p1=subplot(1,1,1);
%h1=plot(x, OMNISuggest,'-ko', x, SVD,'-k*', x, POPULAR,'-kx', x,SOCIAL,'-k<', x, RANDOM,'-k+', 'MarkerSize', 12, 'LineWidth',1);
h1=plot(x, DEDICATED,'-ko', x, SP,'-k*', x, MS2,'-d', x,MS,'-kx' , 'MarkerSize',8, 'LineWidth',2);

%xh1=xlabel('Departure time of most population in minutes (Poisson distribution mean)', 'FontSize',15);
%[0.13 0.154008438818565 0.775 0.770991561181434
%set(p1, 'Position', [0.100 0.15 0.400 0.330]);
%get(xh1,'Position')
%set(xh1,'Position',get(xh1,'Position')+[0 0 0]);
xlim([6 ,446]);
%yh1=ylabel('Average Total Evacuation time in minutes', 'FontSize',15);
%%set(yh1,'Position',get(yh1,'Position')+[35 0 0]);
ylim([0,6000]);
set(gca,'XTick',[6,36,96,156,276,336,372,402,446], 'FontSize',14);

%leg=legend('UBCF','RANDOM','POPULAR','SVD','OmniSuggest','FontSize',10)  
leg=legend('Dedicated','Shortest Path','CARRS-P','CARRS','FontSize',12); 
set(p1, 'Position', [0.13 0.11 0.25 0.5], 'FontSize', 10);

set(leg,...
    'Position',[0.171428571428571 0.455788090183 0.219642857142857 0.13015873015873]);
set(gcf, 'PaperPosition', [-1.3 -0.05 9.5 4.25]);
set(gcf, 'Color', 'w');
set(gcf, 'PaperSize', [3 2.27]); %Keep the same paper size
%saveas(gcf, 'DR', 'pdf');

print('-djpeg','-r1000','shape1');
%export_fig 'evacuation-normal' -jpg -r1000

%set(gcf, 'PaperPosition', [-1.3 -0.05 9.5 4.25]);
%set(gcf, 'Color', 'w');r
%set(gcf, 'PaperSize', [1.59 1.16]); %Keep the same paper size

%set(gcf, 'Position', [100 100 300.59 250.16])

%export_fig DR -tiff -r1200 -q110;


