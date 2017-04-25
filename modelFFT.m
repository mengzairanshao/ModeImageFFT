clc,clear,close all;
M=256;
N=256;
sizeA=100;
sizeB=50;
binPic1=zeros(M,N);
binPic2=zeros(M,N);
binPic1((M-sizeA)/2+1:(M-sizeA)/2+1+sizeA,(M-sizeA)/2+1:(M-sizeA)/2+1+sizeA)=1;
binPic2((N-sizeB)/2+1:(N-sizeB)/2+1+sizeB,(N-sizeB)/2+1:(N-sizeB)/2+1+sizeB)=1;
binPic1=uint8(binPic1);
binPic2=uint8(binPic2);
figure,
subplot(221),imshow(binPic1,[]),title('原始图像A');
subplot(222),imshow(binPic2,[]),title('原始图像B');
binPic1fft=mySpectrum(binPic1);             %进行傅里叶变换,并中心化,对其值进行log变换,以便于显示
binPic2fft=mySpectrum(binPic2);
subplot(223),imshow(binPic1fft),title('图像A频谱2D图');
subplot(224),imshow(binPic2fft),title('图像B频谱2D图');

[z,Fx,Fy]=mesh3D(binPic1fft);       %作网格,并求出赋值
figure,mesh(Fx,Fy,z);title('3D频谱图');
z1=mesh3D(binPic2fft);              %求出赋值
figure,mesh(Fx,Fy,z1);title('3D频谱图');
