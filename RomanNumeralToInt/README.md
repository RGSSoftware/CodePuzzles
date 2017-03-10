Take roman numeral string and converts it to a base10 digit.

```swift
XCTAssertEqual(try "LXXVIII".romanNumeralToInt(), 78)
XCTAssertEqual(try "LXXXIX".romanNumeralToInt(), 89)
XCTAssertEqual(try "II".romanNumeralToInt(), 2)
XCTAssertEqual(try "IV".romanNumeralToInt(), 4)

XCTAssertEqual(try "V".romanNumeralToInt(), 5)
XCTAssertEqual(try "v".romanNumeralToInt(), 5)

XCTAssertThrowsError(try "".romanNumeralToInt())
//failed: threw error "invalidRomanNumber("")"

XCTAssertThrowsError(try "abc".romanNumeralToInt())
//failed: threw error "invalidRomanNumber("abc")"

XCTAssertThrowsError(try "LXXVIIIC".romanNumeralToInt())
//failed: threw error "invalidRomanNumber("LXXVIIIC")"
```
