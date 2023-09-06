//
//  FizzBuzzTests.swift
//  FizzBuzzTests
//
//  Created by Galih Samudra on 06/09/23.
//

import XCTest
import FizzBuzz

final class FizzBuzzTests: XCTestCase {
    func test_numberDefaultText() {
        XCTAssertEqual(FizzBuzz.numberDefaultText(0), "0")
        XCTAssertEqual(FizzBuzz.numberDefaultText(1), "1")
    }
    
    func test_numberFizz() {
        XCTAssertEqual(FizzBuzz.numberFizz(2), nil)
        XCTAssertEqual(FizzBuzz.numberFizz(4), nil)
        XCTAssertEqual(FizzBuzz.numberFizz(3), "Fizz")
        XCTAssertEqual(FizzBuzz.numberFizz(6), "Fizz")
        XCTAssertEqual(FizzBuzz.numberFizz(9), "Fizz")
        XCTAssertEqual(FizzBuzz.numberFizz(99), "Fizz")
    }
    
    func test_numberBuzz() {
        XCTAssertEqual(FizzBuzz.numberBuzz(2), nil)
        XCTAssertEqual(FizzBuzz.numberBuzz(4), nil)
        XCTAssertEqual(FizzBuzz.numberBuzz(5), "Buzz")
        XCTAssertEqual(FizzBuzz.numberBuzz(10), "Buzz")
        XCTAssertEqual(FizzBuzz.numberBuzz(15), "Buzz")
        XCTAssertEqual(FizzBuzz.numberBuzz(100), "Buzz")
    }
    
    func test_numberFizzBuzz() {
        XCTAssertEqual(FizzBuzz.numberFizzBuzz(3), nil)
        XCTAssertEqual(FizzBuzz.numberFizzBuzz(5), nil)
        XCTAssertEqual(FizzBuzz.numberFizzBuzz(9), nil)
        XCTAssertEqual(FizzBuzz.numberFizzBuzz(15), "FizzBuzz")
        XCTAssertEqual(FizzBuzz.numberFizzBuzz(30), "FizzBuzz")
        XCTAssertEqual(FizzBuzz.numberFizzBuzz(60), "FizzBuzz")
        XCTAssertEqual(FizzBuzz.numberFizzBuzz(90), "FizzBuzz")
    }
}
