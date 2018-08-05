# PrimeFinder

This is a prime finding algorithm. I came up with the logic myself while trying to solve some problem on Project Euler. After I solved the problem I kept messing around with the algorithm I wrote. Mine is more efficient than nearly every other algorithm I could find on the internet, except for the prime sieve algorithm.

I used this "Umlaut Spiral" pattern I found on Wikipedia to guess prime numbers. It made finding large primes much easier, because instead of having my program check 15 digit numbers one by one, I could generate a set of four 15 digit numbers, and by the Umlaut Spiral pattern one of the four would be guaranteed to be a prime number.

The reason I didn't use the prime sieve algorithm to solve the Project Euler problem in the first place was because a prime sieve has to check all numbers from 1 through x in order to determine if x is prime. The algorithm I found only needs to check x. Although the prime sieve is mathematically proven to be more efficient in almost all cases, it wasn't very useful for the problem I had to solve, which required me to check the primality of numbers in the millions.

On a slightly unrelated (but interesting) note, the prime sieve algorithm would be the most efficient algorithm to check the primality of all integers, aka [0, infinity).
