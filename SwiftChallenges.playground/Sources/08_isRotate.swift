// Challenge 8: String is rotated
// Write a function that accepts two strings, and returns true if
// one string is a rotation of the other.

import Foundation

// classic brute force solution

public func isRotate(string1: String, string2:String) -> Bool {
    let letter = Array(string1)[0]
    var string2_index = 0

    // short circuit if the two strings are not of equal length
    if string1.count != string2.count {
        return false
    }

    for match in string2 {
        if letter == match {
            // make a new string out of the slice before the match and compare
            let newIndex = string2.index(string2.startIndex, offsetBy: string2_index)

            let prefix = string2.substring(to: newIndex)
            let suffix = string2.substring(from: newIndex)
            let potential_Rotate = "\(suffix)\(prefix)"

            if string1 == potential_Rotate {
                return true
            }
        }
        string2_index += 1 // increment the index to string 2
    }
    return false
}

// -------------------------------------------------------------
// Alternate solution which doubles the second string
// and if the first is in the second and they are the same length
// then its a rotation.

public func isRotateDoubler(_ input: String, _ rotated: String) -> Bool {
    guard input.count == rotated.count else { return false }

    let doubledUp = rotated + rotated
    return doubledUp.contains(input)
}


//Swift 4
public func isRotateDoubler2(_ strOne: String, _ strTwo: String) -> Bool {
    guard strOne.count == strTwo.count else { return false }
    return (strTwo+strTwo).contains(strOne)
}

