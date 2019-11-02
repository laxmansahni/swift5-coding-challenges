// Is a string a palindrome?
// Write a function that accepts a String as its only parameter, and returns
// true if the string reads the same when reversed, ignoring case.

public func isPalindrome(_ input: String) -> Bool {
  let reversedInput = String(input.reversed())
  if input == reversedInput {
    return true
  }
  return false
}

// the one line of code solution
public func isPalindrome2(_ input: String) -> Bool {
  return String(input.reversed()) == input
}

// case insensitive
public func isPalindromeCaseInsensitive(_ input: String) -> Bool {
  return String(input.lowercased().reversed()) == input.lowercased()
}


// Swift 4
public func isPalindrome3(_ word: String) -> Bool {
    return word == String(word.reversed())
}

public func isPalindromeCaseInsensitive2(_ word:String) -> Bool {
    return word.lowercased() == String(word.reversed()).lowercased()
}

