fH = gcf; colormap(jet(4));
yy = [2 2 3; 2 5 6; 2 8 9];
%h = bar(y,'stacked');
xx = [1, 4, 8,16];

% Apply Brandon's function
tH = title('Brandon''s applyhatch');

recoK28 =[91.17,30.951,21.984,13.344];
recoK10=[65.1236,22.1084,15.7032,8.9624];
recoK=[48.8427,16.5813,11.774,6.2218];


simK28 =[91.17,30.951,21.984,13.344];
simK10=[65.1236,22.1084,15.7032,8.9624];
simK=[48.8427,16.5813,11.774,6.2218];



%data2=[91.117,65.1236,48.8427;30.951,22.1084,16.5813;21.984,15.7032,11.774;13.344,8.9624,6.2218];

set(gca,'XTick',[1, 4, 8, 16], 'FontSize',16);

K28 =[41,12.2,18.984,39.46];
K10=[21.9,7.78,11.76,31.13];
K=[14.96,5.12,8.23,25.89];

data2=[(41*60),91.17 (21.9* 60),65.1236 (14.96*60),48.8427;
    (12.2*60),30.951 (7.78*60),22.1084 (5.12*60),16.58;
    (18.984*60),21.984 (11.76*60),15.70 (8.23*60),11.74;
    (39.46*60),13.344 (31.13*60),8.96 (25.89*60),6.22];

% Create multiple lines using matrix input to bar



%data=[(recox1+recox1); (recox4 + recox4) ; (recox8 +recox8);(recox16 +recox16)];
nmK28 =[0,267,731,2131];
nmK10=[0,591,1797,3332];
nmK=[0,1091,2825,5512];

%data2=[nmK28;nmK10;nmK];
p1=subplot(1,1,1);
%To use different data types in the plotyy environment, you
%can use Matlab's 'anonymous function' feature. Stackedbar
%and prettyline below are temporary functions you can only
%use inside of this script.
stackedbar = @(x,A) bar(x,A, 'group');
prettyline = @(x, y) plot(x, y, 'k', 'LineWidth', 5);

%There's a version of plotyy that accepts function handles as an
%argument. We'll pass stackedbar and prettyline in there as the
%last arguments to this function.
[ax, h1, h2] = plotyy(xx, data2, xx, nmK28, stackedbar, prettyline);

 set(ax(2),'xticklab',[],'xtick',xx)
%h=bar(data2);
set(ax,'FontSize',30)
 
leg=legend('Simulation Time','Recommendation Generation Time','Number of Messages','FontSize',30); 
set(leg,...
    'Position',[0.196892941573793 0.809221658206428 0.67983789260385 0.187394247038917]);

applyhatch_pluscolor(fH, '\-x.', 0, [1 0 1 0], jet(4));