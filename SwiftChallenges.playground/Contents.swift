import UIKit

var str = "Hello, playground"

// call function 01_unique.swift

print(isUnique("AaBbCc"))         // true
print(isUnique("Hello, world!"))  // false

print(isUnique2("AaBbCc"))         // true
print(isUnique2("Hello, world!"))  // false


print(isUnique3("AaBbCc"))         // true
print(isUnique3("Hello, world!"))  // false

// call function 02_palindrome.swift
print(isPalindrome("rotator"))     // true
print(isPalindrome("palindrome"))  // false

print(isPalindrome2("rotator"))     // true
print(isPalindrome2("roTator"))     // false - not case sensitive
print(isPalindrome2("palindrome"))  // false

print(isPalindromeCaseInsensitive("rotator"))     // true
print(isPalindromeCaseInsensitive("roTator"))     // true - case sensitive
print(isPalindromeCaseInsensitive("palindrome"))  // false


print(isPalindrome3("rotator"))     // true
print(isPalindrome3("roTator"))     // false - not case sensitive
print(isPalindrome3("palindrome"))  // false

print(isPalindromeCaseInsensitive2("rotator"))     // true
print(isPalindromeCaseInsensitive2("roTator"))     // true - case sensitive
print(isPalindromeCaseInsensitive2("palindrome"))  // false

// call function 03_sameCharacters.swift
print(isSameCharacters("hello", "world")) // false
print(isSameCharacters("hello", "hello")) // true

print(isSameCharacters2("hello", "world")) // false
print(isSameCharacters2("hello", "hello")) // true

print(isSameCharactersSorted("hello", "world")) // false
print(isSameCharactersSorted("hello", "hello")) // true

print(isSameCharactersSorted2("hello", "world")) // false
print(isSameCharactersSorted2("hello", "hello")) // true

// call function 04_contains.swift

print("hello".doesContain("world")) // false
print("hello".doesContain("hello")) // true


print("hello".doesContain2("world")) // false
print("hello".doesContain2("hello")) // true

// call function 05_charCount.swift
// Test Cases

charCount("hello", char: "h") // 1
charCount("hello", char: "l") // 2
charCount("hello", char: "q") // 0
charCount("hello", char: "H") // 0

charCountNoFor("hello", char: "h") // 1
charCountNoFor("hello", char: "l") // 2
charCountNoFor("hello", char: "q") // 0
charCountNoFor("hello", char: "H") // 0

charCountWithRemoval("hello", char: "h") // 1
charCountWithRemoval("hello", char: "l") // 1
charCountWithRemoval("hello", char: "q") // 1
charCountWithRemoval("hello", char: "H") // 1

charCount2("hello", char: "h") // 1
charCount2("hello", char: "l") // 2
charCount2("hello", char: "q") // 0
charCount2("hello", char: "H") // 0

charCountNoFor2("hello", char: "h") // 1
charCountNoFor2("hello", char: "l") // 2
charCountNoFor2("hello", char: "q") // 0
charCountNoFor2("hello", char: "H") // 0

// call function 06_removeDuplicates.swift

print(removeDuplicatesFrom("hello")) // helo
print(removeDuplicatesFrom("helo"))  // helo
print(removeDuplicatesFrom("Helllo,, worrld!!"))  // Hello, world!

print(removeDuplicatesFrom2("hello")) // helo
print(removeDuplicatesFrom2("helo"))  // helo
print(removeDuplicatesFrom2("Helllo,, worrld!!"))  // Helo, wrd!

print(removeDuplicatesFrom3("hello")) // helo
print(removeDuplicatesFrom3("helo"))  // helo
print(removeDuplicatesFrom3("Helllo,, worrld!!"))  // Helo, wrd!


print(removeDuplicatesFrom4("hello")) // helo
print(removeDuplicatesFrom4("helo"))  // helo
print(removeDuplicatesFrom4("Helllo,, worrld!!"))  // Helo, wrd!

// call function 07_condensedWhiteSpace.swift

print(truncateWhiteSpaces("Hello,         world!")) // Hello, world!
print(truncateWhiteSpaces("      a")) // [1 space]a

print("-------------------")
print(truncateWhiteSpaces2("Hello,         world!")) // Hello, world!
print(truncateWhiteSpaces2("      a")) // [1 space]a

print("-------------------")
print(truncateWhiteSpaces3("Hello,         world!")) // Hello, world!
print(truncateWhiteSpaces3("      a")) // [1 space]a

// call function 08_isRotate.swift

print("-------------------")
print(isRotate(string1: "Swift", string2: "ftSwi")) // true
print(isRotate(string1: "tca", string2: "cat"))     // true
print(isRotate(string1: "atc", string2: "cat"))     // true
print(isRotate(string1: "dog", string2: "catty"))   // false


print("-------------------")
print(isRotateDoubler("Swift", "ftSwi")) // true
print(isRotateDoubler("tca", "cat"))     // true
print(isRotateDoubler("atc", "cat"))     // true
print(isRotateDoubler("dog", "catty"))   // false

print("-------------------")
print(isRotateDoubler2("Swift", "ftSwi")) // true
print(isRotateDoubler2("tca", "cat"))     // true
print(isRotateDoubler2("atc", "cat"))     // true
print(isRotateDoubler2("dog", "catty"))   // false

// call function 09_isPangram.swift

print("---------------")
print(isPangram("The quick brown fox jumps over the lazy dog."))  // true
print(isPangram("The quick brown fox jumped over the lazy dog.")) // false - missing s

print("---------------")
print(isPangram2("The quick brown fox jumps over the lazy dog."))  // true
print(isPangram2("The quick brown fox jumped over the lazy dog.")) // false - missing s

// call function 10_vowelsConsonants.swift

print("---------------")
print(vowelConsonants("hello, world")) // (3, 7)
print(vowelConsonants("Mississippi"))  // (4, 7)

print("---------------")
print(vowelConsonants2("hello, world")) // (3, 7)
print(vowelConsonants2("Mississippi"))  // (4, 7)

// call function 09_isPangram.swift

print("---------------")
print(threeLetterDiff("One", "Three"))      // false - different length
print(threeLetterDiff("String", "Threes"))  // false - 4 letter difference
print(threeLetterDiff("Hello", "World"))    // true - 3 letter difference
print(threeLetterDiff("Clamp", "Cramp"))    // true  - 1 letter difference

print("---------------")
print(threeLetterDiff2("One", "Three"))      // false - different length
print(threeLetterDiff2("String", "Threes"))  // false - 4 letter difference
print(threeLetterDiff2("Hello", "World"))    // true - 3 letter difference
print(threeLetterDiff2("Clamp", "Cramp"))    // true  - 1 letter difference
