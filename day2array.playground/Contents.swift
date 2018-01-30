//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
//array decleration
var a = [10,20,30,40,50]
print(" a[0] : \(a[0])")

//print whole array elements
print("a : ",a)


let j1 = [10,20]
print("j1 : ",j1)

//alternative fro mentionong array with datatype
var b = [Int]();

//size of array

print("size of array b : \(b.count)")
b.append(100)
print("b[0] : \(b[0])")

b.append(1000)
print("b : ",b)
 //b[2]=500
print("b : ", b)

//we are trying to access index which is not available
//    print("size of array b : \(b.count)")


//assigning with default values
//repeating means array will contaion same values intialize with 1 upto count
var num1 = [Int](repeating : 1,count : 3)
print("num1 array : \(num1)")
var num2 = [Int](repeating : 5,count : 3)
print("num2 array : \(num2)")
var numMerge = num1 + num2
print("numMerge array : \(numMerge)")
print("numMerge array : \(numMerge)")


//declare to store any datatypes values

var c = [Any]();
print("size of array c : \(c.count)")
c.append(100)
c.append("sukhman")
c.append(100.230)
print("C array : \(c)")

//creating array a ,extract 3 elements and save them to new array

var x = a[1...3]
for t in x{
    print("x : \(t)")
}

//string array and for each with(key,value)
var shoppinglist: [String] = ["Eggs", "Milk"]

//to extract,use enum
for(index, value)in shoppinglist.enumerated(){
    print("Item \(index): \(value)")
}
print("the shopping list contains \(shoppinglist.count) items.")

if shoppinglist.isEmpty {
    print("the shopping list is empty.")
}
else
{
    print("the shopping list is not empty.")
}
shoppinglist.append("flour")
print("shoppinglist array : \(shoppinglist)")

//alternative for inserting elements into array

shoppinglist += ["choclate spread", "cheese", "butter"]
print("shoppinglist array : \(shoppinglist)")

shoppinglist.insert("maple syrup", at: 0)
let mapplesyrup = shoppinglist.remove(at: 2)
let apples = shoppinglist.removeLast()
print("shoppinglist array : \(shoppinglist)")

//set
//declaring of set

var grades: Set<Character> = []
grades.insert("a")
grades.insert("b")
print("grades : \(grades)")
print("grades no of elements",grades.count)

//set only allows distinct values,any values having same hash ,they will not be allowed to declare
//var gradeType: Set<Any> = []

var favoritegenres: Set<String> = ["rock", "classical", "jazz"]
print("favouritegenres : \(favoritegenres.count) favourite music genres.")

if favoritegenres.isEmpty {
    print("As far as music goes, i'm not picky,")
}
else
{
    print("i'm picky")
}

favoritegenres.insert("musical")
print("favoritegenres : \(favoritegenres)")

let odddigits: Set = [1,3,5,7,9]
let evendigits: Set = [0,2,4,6,8]
let singeldigitprimenumbers: Set = [2,3,5,7]

print(odddigits.union(evendigits).sorted())
print(odddigits.intersection(evendigits).sorted())
print(odddigits.subtracting(singeldigitprimenumbers).sorted())
print(odddigits.symmetricDifference(singeldigitprimenumbers).sorted())

let houseAnimals: Set = ["🐶", "🐱"]

