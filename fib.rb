#Iterative solution:
def Fib_it(n)
	if n <= 1
		return n
	end

	fibArray = [0, 1]

	i = 0

	while i < n - 1
		fibArray.push(fibArray[i] + fibArray[i + 1] )
		i += 1
	end
	puts fibArray[-1]
end

#Fib_it(9)


#Recursive solution:
def fib_recursive(n)
	if n <= 1
		return n
	else
		return fib_recursive(n - 1) + fib_recursive(n - 2)
	end

end

#puts fib_recursive(9)

require 'benchmark'
n = 35
Benchmark.bm do |x|
  x.report("fib_recursive") { fib_recursive(n) }
  x.report("Fib_it")  { Fib_it(n)  }
end
