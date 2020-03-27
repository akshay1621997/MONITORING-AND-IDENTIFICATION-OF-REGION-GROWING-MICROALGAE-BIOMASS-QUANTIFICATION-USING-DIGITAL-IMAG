function s=shadow1(image)

imge=image;
%figure,imshow(imge);
img_c=imge;
red1 = imge(:,:,1);
green1 = imge(:,:,2);
blue1 = imge(:,:,3);
img = im2double(imge);
red = img(:,:,1);
green = img(:,:,2);
blue = img(:,:,3);
sr = size(red);
sg = size(green);
sb = size(blue);

mr = 0;mg = 0;mb = 0;

for i=1:sr(1)
    for j=1:sr(2)
        mr=mr+red(i,j);
        mg=mg+green(i,j);
        mb=mb+blue(i,j);
    end
end

ar=mr/(sr(1)*sr(2));
ag=mg/(sr(1)*sr(2));
ab=mb/(sr(1)*sr(2));

ror=ceil(ar*255);
rog=ceil(ag*255);
rob=ceil(ab*255);

sur = zeros(sr(1),sr(2));
sug = zeros(sg(1),sg(2));
sub = zeros(sb(1),sb(2));

for i=1:sr(1)
    for j=1:sr(2)
        sur(i,j)=red1(i,j)-ror;
        sug(i,j)=green1(i,j)-rog;
        sub(i,j)=blue1(i,j)-rob;
    end
end

tr = ones(sr(1),sr(2));
tg = ones(sg(1),sg(2));
tb = ones(sb(1),sb(2));

for i=1:sr(1)
    for j=1:sr(2)
        if sur(i,j)<=2
            tr(i,j) = 0;
        if sug(i,j)<=2
            tg(i,j) = 0;
        if sub(i,j)<=2
            tb(i,j) = 0;
        end
        end
        end
    end
end

original_img = cat(3, tr, tg, tb);
I = im2bw(original_img);
%figure,imshow(I);

k=0;sum1=0;
l=0;sum2=0;
for i=1:sr(1)
    for j=1:sr(2)
        if I(i,j)==1
            sum1=sum1+img(i,j);
            k=k+1;
        else
            sum2=sum2+img(i,j);
            l=l+1;
        end
    end
end
    s1=ceil((sum1/k)*255);
    s2=ceil((sum2/l)*255);
    
    th=s1-s2;
    
  for i=1:sr(1)
    for j=1:sr(2)
        if I(i,j)==0
            red1(i,j)=red1(i,j)+ceil(th/2);
            green1(i,j)=green1(i,j)+ceil(th/2);
            blue1(i,j)=blue1(i,j)+ceil(th/2);
        end
    end
  end
  
  original_imge = cat(3, red1, green1, blue1);
  s=original_imge;
end
    
        
    
    



        
        
