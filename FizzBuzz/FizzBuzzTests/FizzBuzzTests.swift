//
//  FizzBuzzTests.swift
//  FizzBuzzTests
//
//  Created by Galih Samudra on 06/09/23.
//

import XCTest

public class FizzBuzz {
    public func numberDefaultText(_ number: Int) -> String {
        return "\(number)"
    }
    
    public func numberFizz(_ number: Int) -> String? {
        guard number.isMultiple(of: 3) else { return nil }
        return "Fizz"
    }
}

final class FizzBuzzTests: XCTestCase {
    func test_numberDefaultText_resultNumberInString() {
        XCTAssertEqual(FizzBuzz().numberDefaultText(0), "0")
        XCTAssertEqual(FizzBuzz().numberDefaultText(1), "1")
    }
    
    func test_numberFizz_resultNumberNotMultiplyThree() {
        XCTAssertEqual(FizzBuzz().numberFizz(2), nil)
        XCTAssertEqual(FizzBuzz().numberFizz(4), nil)
    }
    
    func test_numberFizz_resultNumberMultiplyThree() {
        XCTAssertEqual(FizzBuzz().numberFizz(3), "Fizz")
        XCTAssertEqual(FizzBuzz().numberFizz(6), "Fizz")
        XCTAssertEqual(FizzBuzz().numberFizz(9), "Fizz")
        XCTAssertEqual(FizzBuzz().numberFizz(99), "Fizz")
    }
}
