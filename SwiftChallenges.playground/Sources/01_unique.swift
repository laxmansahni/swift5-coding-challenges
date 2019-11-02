// Are the letters unique?
// Write a function that accepts a string as its only param and returns
// true if the string has only unique letters taking letter case into account.
public func isUnique(_ input: String) -> Bool {
  var checkLetter = [Character]()
  for letter in input {
    if checkLetter.contains(letter) {
      return false
    }
    checkLetter.append(letter)
  }

	return true
}

public func isUnique2(_ input: String) -> Bool {
  return Set(input).count == input.count
}

// Swift 4
public func isUnique3(_ input: String) -> Bool {
    return Set(input).count == input.count
}


