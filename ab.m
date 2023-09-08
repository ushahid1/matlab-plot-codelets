%x=[0.01,0.1,0.3,0.5];
DEDICATED=[41.23,57.31,69.21,85.11];
SP=[39.75,49.23,57.16,61.27];



	%Sensor1	Sensor2	Sensor 3	Sensor4	Sensor 5	All 5 sensors
%Naïve Bayes	0.769	0.718	0.15	0.316	0.351	0.837
%Simplelogistics	0.85	0.529	0.238	0.35	0.158	0.842
%SMO	0.9	0.75	0.057	0.171	0.121	0.842





y=[0	0	0	0.596	0.258	0.429;0.146	0.187	0.205	0.615	0.383	0.558;0	0.05	0.047	0.476	0.341	0.558];


y=transpose(y);


MS=[18.45,20.99,22.65,25.76];













































%p1=subplot(1,1,1);
%h1=plot(x, OMNISuggest,'-ko', x, SVD,'-k*', x, POPULAR,'-kx', x,SOCIAL,'-k<', x, RANDOM,'-k+', 'MarkerSize', 12, 'LineWidth',1);
h1=bar( y);

%xh1=xlabel('Departure time of most population in minutes (Poisson distribution mean)', 'FontSize',15);
%[0.13 0.154008438818565 0.775 0.770991561181434
%set(p1, 'Position', [0.100 0.15 0.400 0.330]);
%get(xh1,'Position')
%set(xh1,'Position',get(xh1,'Position')+[0 0 0]);
%xlim([0.01 ,0.5]);
%yh1=ylabel('Average Total Evacuation time in minutes', 'FontSize',15);
%%set(yh1,'Position',get(yh1,'Position')+[35 0 0]);
%ylim([0,120]);
set(gca,'XTickLabel',[{'Sensor 1'},{'Sensor 2'},{'Sensor 3'},{'Sensor 4'},{'Sensor 5'},{'All 5 Sensors'}], 'FontSize', 12);
rotateXLabels( gca(), 45 )
%leg=legend('UBCF','RANDOM','POPULAR','SVD','OmniSuggest','FontSize',10)  
leg=legend('Naive Bayes','SLR','SMO'); 
%set(p1, 'Position', [0.13 0.11 0.25 0.5], 'FontSize', 12);
ylabel('F-measure Score');

mycolor=[0 0 0;0.72 0.72 0.72;1 1 1];
colormap(mycolor);
%set(leg,...
 %   'Position',[0.171428571428571 0.455788090183 0.219642857142857 0.13015873015873]);
%set(gcf, 'PaperPosition', [-1.3 -0.05 9.5 4.25]);
set(gcf, 'Color', 'w');
set(gcf, 'PaperSize', [3 2.27]); %Keep the same paper size
%saveas(gcf, 'DR', 'pdf');

print('-djpeg','-r1000','dprob');
%export_fig 'evacuation-normal' -jpg -r1000

%set(gcf, 'PaperPosition', [-1.3 -0.05 9.5 4.25]);
%set(gcf, 'Color', 'w');r
%set(gcf, 'PaperSize', [1.59 1.16]); %Keep the same paper size

%set(gcf, 'Position', [100 100 300.59 250.16])

%export_fig DR -tiff -r1200 -q110;


