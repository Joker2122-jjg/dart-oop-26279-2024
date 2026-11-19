Dart OOP Assignment: Kigali Bus Card

Name: Allen
Student ID: 26279/2024

My Numbers

* D = 24
* L = 4
* Starting balance = 1,240 RWF
* Bus fare = 224 RWF
* Student discount = 14%

Output of main.dart


Error: name too short          
Owner: Allen | Balance: 1240 RWF
Owner: Allen | Balance: 1240 RWF
Error: top-up must be 500 to 50000 RWF
Topped up 2000 RWF
Paid 244 RWF
Paid 244 RWF
Owner: Allen | Balance: 2752 RWF
Student discount: 31 RWF
Paid 193 RWF
Owner: Allen | Balance: 1047 RWF
Student card: 14% off


Part 1: Why no setter for balance?

There is no setter for balance because we want to prevent fraud, stealing and unauthorized changes. The balance should only be changed through approved methods such as topUp() and pay(), which follow specific rules.

Part 2: What does ~/ do?

The ~/ operator performs integer division in Dart. It divides two numbers and returns a whole number without the decimal part.

For example:

* 237 * 17 / 100 = 40.29
* 237 * 17 ~/ 100 = 40

The difference is that / returns a decimal result, while ~/ returns an integer.


Part 4: Bug table
Bug	The line	Why it is wrong	My fix
1	String _brand;	The field was not initialized.	Set it to an empty string ''.
2	int _battery;	The field was not initialized.	Set it to 0.
3	SmartPhone constructor	It did not call the parent constructor.	Added : super(brand, battery).
4	p.battery = 100;	There was no battery setter.	Added a setter accepting values from 0 to 100.
5	print(p.battery());	A getter is not a method.	Changed it to print(p.battery);.

Not a bug: Phone p = new Phone('Tecno', 50);

Why is this line fine?

The new keyword is valid in Dart. It is optional, but it is not an error.

Real output:

100



Part 5

My prediction:

1
5

Explanation:

The first Bag starts with 0 items. Calling add() increases it to 1. The setter rejects -5 because negative values are not allowed, so the value remains 1.

The BigBag calls super.add() twice each time its add() method is called. Two calls increase the value to 4. Adding another 1 makes the final value 5.