function[t1]=process(a)
a=rgb2gray(a); 
a=imresize(a,[16 16]);
[r c]=size(a);
p=r*c;
l=graythresh(a);
% l=mean([l 0.92]);
b=im2bw(a,l);
bp=sum(b(:)==0);
wp=p-bp;
if(bp<wp)
 b=1-b;
end;
t1=bwmorph(b,'thin','Inf');
if(bp<wp)
 t1=1-t1;
end;
% imshow(t1);
end
