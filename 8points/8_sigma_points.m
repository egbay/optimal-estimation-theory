A = randn(1000,4);

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
S5 = transpose(Ma) + Ch(:,3);
W5 = (1/(2.*(n+k)));
S6 = transpose(Ma) - Ch(:,3);
W6 = (1/(2.*(n+k)));
S7 = transpose(Ma) + Ch(:,4);
W7 = (1/(2.*(n+k)));
S8 = transpose(Ma) - Ch(:,4);
W8 = (1/(2.*(n+k)));


plot(A(:,1), A(:,2), '.r')
hold on
plot(Ma(:,1), Ma(:,2), '*b')
plot(S1(1,:), S1(2,:), '*b');
plot(S2(1,:), S2(2,:), '*b');
plot(S3(1,:), S3(2,:), '*b');
plot(S4(1,:), S4(2,:), '*b');
plot(S5(1,:), S5(2,:), '*b');
plot(S6(1,:), S6(2,:), '*b');
plot(S7(1,:), S7(2,:), '*b');
plot(S8(1,:), S8(2,:), '*b');
