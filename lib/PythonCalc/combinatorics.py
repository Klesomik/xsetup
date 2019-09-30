def fact(n):
	if n == 0:
		return 1
	return n * fact(n - 1)

def ank(n, k):
	return fact(n) // fact(n - k)

def cnk(n, k):
	return fact(n) // fact(n - k) // fact(k)

def fib(n):
	if n <= 1:
		return 1
	f0 = 1
	f1 = 1
	for i in range(2, n + 1):
		value = f0 + f1
		f0 = f1
		f1 = value
	return f1