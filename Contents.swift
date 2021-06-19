import UIKit

var greeting = "Hello, playground"


//Are the strings equal


func chek (string1: String, string2: String) -> Bool {
    return string1.sorted() == string2.sorted()
}

chek(string1: "Hello World!", string2: "World Hello!")  //true
chek(string1: "123", string2: "abc")                    //false

//___________________________________________________________________
func chek2 (string1: String, string2: String) -> Bool {
    var comparisonString = string1
    for letter in string2 {
        if let index = comparisonString.firstIndex(of: letter) {
            comparisonString.remove(at: index)
        } else {
            return false
        }
    }
    return comparisonString.count == 0
}

chek2(string1: "Hello World!", string2: "World Hello!")  //true
chek2(string1: "123", string2: "abc")                    //false
