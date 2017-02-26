//: This playground demonstrate the *basics of Swift.*
import UIKit

// Declaring Constants and Variables
let age: Int = 20 // Type Inference as Int

var hello = "Hello World"
hello = "Hello Swift"
print(hello)

for character in hello.characters {
    print(character)
}

// Optionals
var optionalResponseCode: Int? = 404
// serverResponseCode contains an actual Int value of 404
optionalResponseCode = nil
// serverResponseCode now contains no value

// Optional Binding
if let serverResponseCode = optionalResponseCode {
    print("server response code: \(serverResponseCode)")
} else {
    print("server response code is \(optionalResponseCode)")
}

// Collections
var languages = ["Swift", "Objective-C", "Go", "Java"]
languages.append("Kotlin")

for (index, lang) in languages.enumerated() {
    print("\(index): Hello \(lang)")
}

let employees: [Int: String] = [1: "Steve", 2: "Tom", 3: "Bill"]
for (employeeID, employeeName) in employees {
    print("\(employeeID), \(employeeName)")
}

// Functions
func greet(person: String) -> String {
    let greeting = "Hello, " + person + "!"

    return greeting
}
print(greet(person: "Anna"))

func addTwoInts(a: Int, b: Int) -> Int {
    return a + b
}

func multiplyTwoInts(a: Int, b: Int) -> Int {
    return a * b
}

func mathResult(mathFunction: (Int, Int) -> Int, a: Int, b: Int) {
    print("Result: \(mathFunction(a, b))")
}

mathResult(mathFunction: addTwoInts, a: 2, b: 3)
mathResult(mathFunction: multiplyTwoInts, a: 2, b: 3)

// Closures
func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 < s2
}
var reversedLangs = languages.sorted(by: backward)
for (index, lang) in reversedLangs.enumerated() {
    print("\(index): Hello \(lang)")
}

reversedLangs = languages.sorted{ (s1, s2) -> Bool in
    return s1 < s2
}

// Classes
protocol HatDelegate {
    var hatColor: UIColor { get }
}

extension HatDelegate {
    var hatColor: UIColor {
        return .red
    }
}

class Person: HatDelegate {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    var hatColor: UIColor {
        return .blue
    }
}

let taylor = Person(name: "Taylor", age: 18)
taylor.hatColor

