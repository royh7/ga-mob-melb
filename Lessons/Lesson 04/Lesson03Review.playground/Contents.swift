//: REVIEW

import UIKit

//: TODO Declare a constant, Declare a variable. Explain the difference between the two
var nameThatChanges = "Brett"
let nameThatDoesntChange = "Fred"

// A variable is a value that can change. a constant (let) is a value that doesnt change.


//: TODO Declare a constant, that has a type of optional Bool
let apple : Bool? = nil


//: TODO Declare a variable int "yearOfMyCar". Write code to print "My car is old" if the year is less than 2005 and to print "My car is new" if the year is greater than 2005
var yearOfMyCar : Int;
yearOfMyCar = 2007

if yearOfMyCar < 2005 && yearOfMyCar < 900
{
    print("My car is old");
}
else if (yearOfMyCar >= 2005)
{
    print("My car is new");
}

//: TODO Delcare and Print an Optional String
var strOpt: String?
strOpt = "Roy"
if(strOpt != nil)
{
    print(strOpt!)
}


//: TODO Write a for loop that prints the number of its current loop
for (var i = 1; i <= 10; ++i) {
    print(i)
}

let cities = ["New York", "London", "Melbourne"]

for mycity in cities {
    
}
