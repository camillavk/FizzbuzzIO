
divideThree := method(x, x % 3 == 0)

divideFive := method(x, x % 5 == 0)

divideFifteen := method(x, x % 15 == 0)

fizzBuzz := Object clone

fizzBuzz play := method(number, result := ""
							if(self divideThree(number), result = result .. "Fizz", result)
							if(self divideFive(number), result = result .. "Buzz", result)
							if(result isEmpty, number, result))


Test := Object clone
Test assert := method(actual, expected, if(actual == expected, "WINNING" println, "FAILURES" println))

	"Divisible by Three?:" println
	"3 should be true" println
		Test assert(divideThree(3), true)
	"5 should be false" println
		Test assert(divideThree(1), false)

	"Divisible by Five?:" println
	"5 should be true" println
		Test assert(divideFive(5), true)
	"3 should be false" println
		Test assert(divideFive(3), false)

	"Divisible by Fifteen?:" println
	"15 should be true" println
		Test assert(divideFifteen(15), true)
	"7 should be false" println
		Test assert(divideFifteen(7), false)

	"Return number if not divisible by 3, 5, 15" println
	"1 should return 1"
		Test assert(fizzBuzz play(1), 1)




for(number, 1, 100, fizzBuzz play(number) println)