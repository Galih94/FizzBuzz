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
        expectNumberDefault(from: [0, 1, 2, 3, 4], expectedResult: ["0", "1", "2", "3", "4"])
    }
    
    func test_numberFizz() {
        expectNumberFizz(from: [2, 4, 3, 6, 9, 99], expectedResult: [nil, nil, "Fizz", "Fizz", "Fizz", "Fizz"])
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
    
    func test_getNumber_numberFromOneToTen() {
        XCTAssertEqual(FizzBuzz.getNumber(1), "1")
        XCTAssertEqual(FizzBuzz.getNumber(2), "2")
        XCTAssertEqual(FizzBuzz.getNumber(3), "Fizz")
        XCTAssertEqual(FizzBuzz.getNumber(4), "4")
        XCTAssertEqual(FizzBuzz.getNumber(5), "Buzz")
        XCTAssertEqual(FizzBuzz.getNumber(6), "Fizz")
        XCTAssertEqual(FizzBuzz.getNumber(7), "7")
        XCTAssertEqual(FizzBuzz.getNumber(8), "8")
        XCTAssertEqual(FizzBuzz.getNumber(9), "Fizz")
        XCTAssertEqual(FizzBuzz.getNumber(10), "Buzz")
        XCTAssertEqual(FizzBuzz.getNumber(11), "11")
        XCTAssertEqual(FizzBuzz.getNumber(12), "Fizz")
        XCTAssertEqual(FizzBuzz.getNumber(13), "13")
        XCTAssertEqual(FizzBuzz.getNumber(14), "14")
        XCTAssertEqual(FizzBuzz.getNumber(15), "FizzBuzz")
    }
    
    // MARK: Helpers
    private func expectNumberDefault(from numbers: [Int], expectedResult: [String], file: StaticString = #filePath, line: UInt = #line) {
        for i in 0..<numbers.count {
            XCTAssertEqual(FizzBuzz.numberDefaultText(numbers[i]), expectedResult[i], file: file, line: line)
        }
    }
    
    private func expectNumberFizz(from numbers: [Int], expectedResult: [String?], file: StaticString = #filePath, line: UInt = #line) {
        for i in 0..<numbers.count {
            XCTAssertEqual(FizzBuzz.numberFizz(numbers[i]), expectedResult[i], file: file, line: line)
        }
    }
}
