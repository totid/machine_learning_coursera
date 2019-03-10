clc
clear all

C_test = [0.01 0.03 0.1 0.3 1 3 10 30];
sigma_test = [0.01 0.03 0.1 0.3 1 3 10 30];

i = 0;
for C = C_test
	for sigma = sigma_test
		i += 1;
		fprintf('[%d]%f, %f\n', i, C, sigma);
	end
end
