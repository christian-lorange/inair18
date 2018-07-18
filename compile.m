clear all

data=readtable('indoorair.xlsx');

s1='<tr class="content"><td class="sortnr" style="display:none;">'; %id
s2='</td><td class="tpl">'; %day
s3='</td><td class="tpl">';%time
s4='</td><td class="tpl">';%room
s5='</td><td class="middlerow">';%talk
s6='</td><td class="bottomrow"><button onclick="openModal();currentSlide(';%authors
s7='</td><td class="bottomrow2">';%session
s7b=')">';
s8='</button></td><td class="heart"><a href="#favorites">&#10032;</a></td></tr>';



s=[];

for i=1:height(data)
  
    sessions=strcat(s1,num2str(table2array(data(i,1))),s2,(table2array(data(i,2))),s3,datestr(table2array(data(i,3)),'HH:MM'),s4,char(table2array(data(i,4))),s5,char(table2array(data(i,5))),s6,num2str(table2array(data(i,8))),s7b,char(table2array(data(i,6))),s7,char(table2array(data(i,7))),s8);
   
    s=[s;sessions];
    
end

filePh = fopen('s.txt','w');
fprintf(filePh,'%s\n',s{:});
fclose(filePh);

% fid = fopen('s.txt','rt') ;
% X = fread(fid) ;
% fclose(fid) ;
% X = char(X.') ;
% % replace string S1 with string S2
% Y = strrep(X, '@', '"') ;
% Z = strrep(Y, '.3', ':30') ;
% fid2 = fopen('hh.html','wt') ;
% fwrite(fid2,Z) ;
% fclose (fid2) ;



data=readtable('cards.xlsx');

s1='<div class="mySlides"><h2 class="symp">'; %symposium
s2='</h2><p class="description">';%descriptions
s3='</p></div>';%ending text

work=[];

for i=1:height(data)
  
    w=strcat(s1,(table2array(data(i,1))),s2,(table2array(data(i,2))),s3);   
    work=[work;w];
    
end

filePh = fopen('w.txt','w');
fprintf(filePh,'%s\n',work{:});
fclose(filePh);
