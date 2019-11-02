// Challenge 10: Vowels and Consonants
// Write a function that returns a tuple containing the number of vowels and consonants.

public func vowelConsonants(_ input: String) -> (vowels: Int, consonants: Int) {
    let vowels = "aeiou"
    let consonants = "bcdfghjklmnpqrstvwxyz"
    var vowelCount = 0
    var consonantCount = 0

    for letter in input.lowercased() {
        if consonants.contains(letter) {
            consonantCount += 1
        } else {
            // check again to weed out punctuations
            if vowels.contains(letter) {
                vowelCount += 1
            }
        }
    }
    return (vowelCount, consonantCount)
}



//Swift 4
public func vowelConsonants2(_ str: String) -> (vowels: Int, consonants: Int) {
    var numOfVow = 0
    var numOfCon = 0
    str.lowercased().forEach {
        if  "bcdfghjklmnpqrstvwxyz".contains($0) { numOfCon += 1 }
        else if "aeiou".contains($0) { numOfVow += 1 }
    }
    return (numOfVow, numOfCon)
}


