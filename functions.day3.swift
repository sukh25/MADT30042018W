//: Playground - noun: a place where people can play

import UIKit
//Working with functions
//Simple declaration
func add()
{
    print("I am a user defined function")
}
add()
//Double parameters
func add(n1:Int, n2:Int)
{
    var sum : Int
    sum = n1 + n2
    print("Sum is :",sum)
}
add(n1:4,n2:6)
//add(4,7)
//add(n2:4,n1:6)

//Single paramater
func welcome(name:String)
{
    print("Hello \(name)")
}

//Making parameter label optional using _
func sub(a:Int, _ b:Int)
{
    let c = a - b
    print("Sub : ",c)
}
sub(a: 5,8)

//Single return type
func mul(a:Int,b:Int) ->Int
{
    let c = a * b
    return c
}
var c = mul(a:6,b:8)
print("Mul is:",c)

//Multi return values and define new label names
func swipe(number1 a: Int, b:Int) -> (Int,Int)
{
    //function parameters are constants by default
    //var temp = a
    // a= b
    //b= temp
    return (b,a)
}
// Swapping the values
var (a,b) = swipe(number1:10, b:40)
print("a: \(a), b: \(b)")
(_,c) = swipe(number1:10, b:40)
print("c: \(c)")
//inout concept
func swipe(aa: inout Double , bb:inout Double)
{
    let temp = aa
    aa = bb
    bb = temp
}
var x = 8.0,y = 9.0
swipe(aa:&x, bb:&y)
//swipe(aa:&23, bb:&34)
print("x : \(x) , y : \(y)")

//Default Parameter
func simpleInterest(amount: Double, noOfYears: Double, rate: Double = 5.0) -> Double
{
    let si = amount * rate * noOfYears / 100
    return si
}
print("Simple interest : \(simpleInterest(amount: 1000, noOfYears: 5))")
print("Simple interest : \(simpleInterest(amount: 1000, noOfYears: 5, rate:7))")


//Variadic Parameters  - passing as much values but of same types
func display(n:Int...)
{
    for i in n{
        print(i)
    }
}
display(n: 1,2,3,4,3)
display(n: 10,20,40,50,40)

//passing array as parameter
func display(numberValues:Int, parameters:[Int]...)
{
print("Number of values \(numberValues)")
    for i in parameters{
        print("i : \(i)")
    }
}
var arr = [1,2,3,4,5,6,7]
display(numberValues: 3 , parameters: arr,arr,arr)

func display(arrayList:[Int]...) -> [Int]
{
    var array1 = arrayList[0]
    var array2 = arrayList[1]
    var result = [Int]()
    
    if array1.count == array2.count
    {
        for i in 0..<array1.count
        {
            result.append(array1[i] + array2[i])
        }
        
    }
    return result
}
var a1 = [1,2,3,4,5]
var a2 = [10,11,12,13,14,15]
var a3 = display(arrayList: a1,a2)
print(a1)
print(a2)
print(a3)






