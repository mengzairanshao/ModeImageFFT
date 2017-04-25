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
subplot(221),imshow(binPic1,[]),title('ԭʼͼ��A');
subplot(222),imshow(binPic2,[]),title('ԭʼͼ��B');
binPic1fft=mySpectrum(binPic1);             %���и���Ҷ�任,�����Ļ�,����ֵ����log�任,�Ա�����ʾ
binPic2fft=mySpectrum(binPic2);
subplot(223),imshow(binPic1fft),title('ͼ��AƵ��2Dͼ');
subplot(224),imshow(binPic2fft),title('ͼ��BƵ��2Dͼ');

[z,Fx,Fy]=mesh3D(binPic1fft);       %������,�������ֵ
figure,mesh(Fx,Fy,z);title('3DƵ��ͼ');
z1=mesh3D(binPic2fft);              %�����ֵ
figure,mesh(Fx,Fy,z1);title('3DƵ��ͼ');
