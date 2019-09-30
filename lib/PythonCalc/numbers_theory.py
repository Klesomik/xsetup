def lcm(a, b):
	return a // gcd(a, b) * b

def is_prime(x):
	i = 2
	while i * i <= x:
		if x % i == 0:
			return False
	return (x > 1)

def divisors(x):
	divs = []
	i = 1
	while i * i <= x:
		if x % i == 0:
			divs.append(i)
			if i * i != x:
				divs.append(x // i)
	divs.sort()
	return divs

def prime_divs(x):
	primes = []
	i = 2
	while i * i <= x:
		if x % i == 0:
			primes.append(i)
			while x % i == 0:
				x = x // i
	return primes