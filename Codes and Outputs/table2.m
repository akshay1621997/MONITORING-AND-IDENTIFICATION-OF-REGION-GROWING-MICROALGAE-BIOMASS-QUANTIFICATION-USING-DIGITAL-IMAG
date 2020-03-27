function ta=table2(img)

img=im2double(img);
img_gr=rgb2gray(img);
green = img(:,:,3);

s_gr=size(img_gr);
sg = size(green);

mg = 0;

for i=1:sg(1)
    for j=1:sg(2)
        mg=mg+green(i,j);
    end
end

m_gr=0;
for i=1:s_gr(1)
    for j=1:s_gr(2)
      m_gr=m_gr+img_gr(i);
    end
end

ag=mg/(sg(1)*sg(2));
a_gr=m_gr/(s_gr(1)*s_gr(2));

rog=ceil(ag*255);
r_gr=ceil(a_gr*255);

ta(1)=255-rog;
ta(2)=255-r_gr;

