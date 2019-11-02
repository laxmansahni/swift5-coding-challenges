// Remove duplicate letters from a string.
// Write a function that accepts a string as its input and
// return a string with the duplicate letters removed.

public func removeDuplicatesFrom(_ input: String) -> String {
    var returnString = Array(input)
    var i = 0
    var length = returnString.count

    while i < length - 1 {
        if returnString[i] == returnString[i+1] {
            returnString.remove(at: i+1)
            length -= 1
        }
        i+=1
    }

    return String(returnString)
}

// ----------------------------------------------------------
// Second approach using a for in and an additive array

public func removeDuplicatesFrom2(_ input: String) -> String {
  var usedCharacters = [Character]()

  for letter in input {
    if !usedCharacters.contains(letter) {
      usedCharacters.append(letter)
    }
  }

  return String(usedCharacters)
}

// ----------------------------------------------------------
// A third solution - a functional approach using a dictionary
//                    (note: this solution has poor performance)

public func removeDuplicatesFrom3(_ input: String) -> String {
  var usedCharacters = [Character: Bool]()

  let result = input.filter {
    usedCharacters.updateValue(true, forKey: $0) == nil
  }

  return String(result)
}

// Swift 4
public func removeDuplicatesFrom4(_ str: String) -> String {
    var usedChar = String()
    str.forEach { if !usedChar.contains($0) { usedChar.append($0) }}
    return usedChar
}

