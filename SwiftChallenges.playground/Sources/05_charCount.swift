// Count the characters
// Write a function that accepts a string, and returns how many times a specific
// character appears. Case sensitive.

// the classy way with a for-in loop
public func charCount(_ input: String, char find: Character) -> Int {
    var count = 0
    for char in input {
        if char == find {
            count += 1
        }
    }
    return count
}

// introduce a constraint of no for-in or while loop

// a functional approach
public func charCountNoFor(_ input: String, char check: Character) -> Int {
    return input.reduce(0) {
        $1 == check ? $0 + 1 : $0
    }
}

// an arithmetic solution
import Foundation

public func charCountWithRemoval(_ input: String, char check: String) -> Int {
    let newInput = input.replacingOccurrences(of: check, with: "")
    return input.count - newInput.count
}

//Swift 4
public func charCount2(_ input: String, char check: Character) -> Int {
    var count = 0
    input.forEach { if $0 == check { count += 1 }}
    return count
}

public func charCountNoFor2(_ input: String, char check: Character) -> Int {
    return input.reduce(0) {
        $1 == check ? $0 + 1 : $0
    }
}


