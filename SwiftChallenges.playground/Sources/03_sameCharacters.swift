// Do two strings contain the same characters?
// Write a function that accepts two String parameters, and returns
// true if they contain the same characters in any order.

public func isSameCharacters(_ input1: String, _ input2: String) -> Bool {
  let input1Array = Array(input1)
  var input2Array = Array(input2)

  // brute force - O(n^2)
  for input1char in input1Array {
    for input2char in input2Array {
      // nested for loops check for matches
      if input2char == input1char {
        // remove the match
        if let index = input2Array.index(of: input2char) {
          input2Array.remove(at: index)
        }
      }
    }
    // if everything matched the array is empty - return true
    if input2Array.count == 0 {
      return true
    }
  }
  // otherwise the strings did not match - return false
  return false
}

// tighen up the check and return code
public func isSameCharacters2(_ input: String, _ check: String) -> Bool {
  let inputArray = Array(input)
  var checkArray = Array(check)

  // brute force - O(n^2)
  for inputChar in inputArray {
    // remove this character if its found in the check array
    if let index = checkArray.index(of: inputChar) {
      checkArray.remove(at: index)
    }
  }
  return checkArray.count == 0
}

// sorted arrays - O(n log n)
public func isSameCharactersSorted(_ input: String, _ check: String) -> Bool {
  let inputArray = Array(input)
  let checkArray = Array(check)

  return inputArray.sorted() == checkArray.sorted()
}


// Swift 4
public func isSameCharactersSorted2(_ one: String, _ two: String) -> Bool {
    return one.sorted() == two.sorted()
}



