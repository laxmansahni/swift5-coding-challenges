// Challenge 11: Three Different Letters
// Write a function that accepts two strings, and returns true if they are
// identical in length but have no more than three different letters.

public func threeLetterDiff(_ input1: String, _ input2: String) -> Bool {
    if input1.count != input2.count { return false }
    var difference = 0

    for letter in input1 {
        if input2.contains(letter) == false {
            difference += 1
        }
        if difference > 3 { return false }
    }

    return true
}

//Swift 4
public func threeLetterDiff2(_ strOne: String, _ strTwo: String) -> Bool {
    guard strOne.count == strTwo.count else { return false }
    let setOne = Set(strOne)
    return setOne.subtracting(strTwo).count <= 3
}


