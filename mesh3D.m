function [z,Fx,Fy]=mesh3D(f)
    [M,N]=size(f);
    dr = 0.5; dc = 0.5;
    Fx = ((0:M-1)-floor(M/2))/(M*dc);   %��Fxƽ��,����һ��
    Fy = ((0:N-1)-floor(N/2))/(N*dr);   %��Fyƽ��,����һ��
    [Fx,Fy] = meshgrid(Fx, Fy);         %������
    z=double(f(:,:));
end