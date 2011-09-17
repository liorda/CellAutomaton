% rule 110 example
% Lior 20110917

N = 40;

X = zeros(N);
% X(1,floor(N/2)) = 1;
X(1,floor(7*N/8)) = 1;
% X(1,:)=rand(1,N)>0.5;

close all; clc

figure;
imshow(X);
h = get(gca,'Children');

i = 1;
while i<N
    nw = X(i,1:N-2);
    n = X(i, 2:N-1);
    ne = X(i,3:N);
    l = nw+n+ne;
    X(i+1,2:N-1) = ( (n~=ne) | (ne==1&n==1&nw==0)); % Karnaugh map FTW

    set(h,'CData',X);%imshow(X);
    title(['i=' num2str(i)]);
    drawnow;
    pause(0.5);
    i = i+1;
%     keyboard
end

imshow(X);

