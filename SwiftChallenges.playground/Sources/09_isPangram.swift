// Challenge 9: Is the string a pangram?
// Write a function that returns true if a given string is an English pangram.

public func isPangram(_ input: String) -> Bool {
    var alphabet = Array("abcdefghijklmnopqrstuvwxyz")

    for letter in input.lowercased() {
        if let index = alphabet.index(of: letter) {
            alphabet.remove(at: index)
        }
        if alphabet.count == 0 { return true }
    }
    return false
}


//Swift 4
public func isPangram2(_ string: String) -> Bool {
    var isPan = true
    "abcdefghijklmnopqrstuvwxyz".forEach({
        if !string.lowercased().contains($0) { isPan = false }
    })
    return isPan
}


