def isPrime(i : int):
    if 2 > i:
        return 0
    for j in range(2, int(i / 2), 1):
        if (i % j == 0):
            return 0
    return 1

batas = 1000
print("Bilangan prima antara 1 - ", batas, end=": ")
print(" ".join([str(i) for i in range(batas + 1) if isPrime(i)]))