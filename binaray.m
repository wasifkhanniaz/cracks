X= imread('C:\Users\Dell\Desktop\cracks\1.jpg');
I=rgb2gray(X); % 'map' is loaded from 'trees'. Convert to grayscale.

%%%%FOr BIMArAY
% level = graythresh(I);  % Compute an appropriate threshold
% BW = im2bw(I, level);, figure, imshow(BW)
%  BW2 = bwareaopen(BW, 5);
%  imshow(BW2)
% % imshowpair(BW,BW2)%'montage')
% % title ('kak')

%%% Intensity MEAN
%meanIntensityValue = mean(mean(I));

%%%% HSITOGRAM
k = imhist(I);
mea = mean2(k), subplot(2,2,1);title ('hist mean');
%mean and standard deviation
mn= mean2(I), subplot(2,2,2); title ('mean');
st=std2(I),subplot(2,2,3);title ('std');

%gradiant magnitude
% figure
% Gmag = imgradient(I, 'prewitt');% subplot(2,2,4); title ('gradient');
% imshowpair(Gmag, Gdir, 'montage');
%imshow(Gmag, 'montage');
%% 
mofG= mean2(Gmag)
%% 
%how(mofG);
stgm= std2(Gmag)
J = im2single(imread(X));
gaussPyramid = vision.Pyramid('PyramidLevel', 2);
J = step(gaussPyramid, J);
imshow(J)


