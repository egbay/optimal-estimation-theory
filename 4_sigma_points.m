A = randn(1000,2);

%plot(x(:,1),x(:,2), '.r');

Ma = mean(A);
Cx = cov(A);



n = 4;
k = -1;

Ch = chol((n+k).*Cx);

S0 = Ma;
W0 =(k/(n+k));
S1 = transpose(Ma) + Ch(:,1);
W1 = (1/(2.*(n+k)));
S2 = transpose(Ma) - Ch(:,1);
W2 = (1/(2.*(n+k)));
S3 = transpose(Ma) + Ch(:,2);
W3 = (1/(2.*(n+k)));
S4= transpose(Ma) - Ch(:,2);
W4 = (1/(2.*(n+k)));


plot(A(:,1), A(:,2), '.r')
hold on
plot(Ma(:,1), Ma(:,2), '*b')
plot(S1(1,:), S1(2,:), '*b');
plot(S2(1,:), S2(2,:), '*b');
plot(S3(1,:), S3(2,:), '*b');
plot(S4(1,:), S4(2,:), '*b');
