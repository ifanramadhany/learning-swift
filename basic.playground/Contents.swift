import UIKit

var greeting = "Hello, playground"
//print(greeting)

//for i in 1...5 {
//    print("\(i) times 5 is \(i * 5)")
//}

//var test = "Welcome World oiii"

//print(variable[variable.endIndex])


//let numbers = [10, 20, 30, 40, 50]
//if let i = numbers.firstIndex(of: 30) {
//    print(numbers[i ..< numbers.endIndex])
//}
//
//print(numbers.endIndex)

//let hello = "Hola"
//
//let indexF = hello.index(before: hello.endIndex)
//print(indexF)

//greeting.insert("A", at: greeting.endIndex)
//
//print(greeting)
var test = "Welcome World oiii"

let index = test.firstIndex(of: " ") ?? test.endIndex
let beginning = test[..<index]
print(beginning)

//let text = "Hello, World"
//if let index = text.firstIndex(of: "W") {
//    print("The index of 'W' is: \(index)")
//} else {
//    print("'W' was not found in the string")
//}

//let text = "Hello, World"
//if let index = text.firstIndex(of: "W") {
//    let position = text.distance(from: text.startIndex, to: index)
//    print("The position of 'W' is: \(position)")
//} else {
//    print("'W' was not found in the string")
//}

/*
 Array
*/

//var shoppingList: [String] = ["ayam", "telur"]
//
//shoppingList.append("buncis")
//shoppingList += ["udang"]
//
//for (i, value) in shoppingList.enumerated() {
//    print("\(i+1) \(value)")
//}

/*
 Set
*/

//var favouriteGenres: Set<String> = ["Rock", "Pop", "Jazz"]
//var favouriteGenres = Set<String>()
//favouriteGenres.insert("Metal")
//
//print(favouriteGenres)

//let oddNumbers: Set = [1,3,5,7,9,11]
//let evenNumbers: Set = [0,2,4,6,8,10]
//let primenumbers: Set = [2,3,5,7,9,11]
//
//oddNumbers.union(evenNumbers).sorted()
//oddNumbers.intersection(evenNumbers)
//oddNumbers.symmetricDifference(primenumbers)
//evenNumbers.subtracting(primenumbers).sorted()

/*
 Dictionary
 */

var nameOfIntegers = [Int:String]()
nameOfIntegers[16] = "Sixteens"

var airports: [String:String] = [:]
airports = ["JAM": "Jambi", "KSL": "Kalimantan Selatan"]

var apis = [200: "Ok", 204: "No Content", 403: "Forbidden", 404: "Not Found"]
let httpResponseCode = [200, 204, 300, 404]

for code in httpResponseCode {
    if let message = apis[code] {
        print("Response \(code): \(message)")
    } else {
        print("Unknown Response \(code)")
    }
}
