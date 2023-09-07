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
        expectNumberBuzz(from: [2, 4, 5, 10, 15, 100], expectedResult: [nil, nil, "Buzz", "Buzz", "Buzz", "Buzz"])
    }
    
    func test_numberFizzBuzz() {
        expectNumberFizzBuzz(from: [3, 5, 9, 15, 30, 60, 90], expectedResult: [nil, nil, nil, "FizzBuzz", "FizzBuzz", "FizzBuzz", "FizzBuzz"])
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
    
    private func expectNumberBuzz(from numbers: [Int], expectedResult: [String?], file: StaticString = #filePath, line: UInt = #line) {
        for i in 0..<numbers.count {
            XCTAssertEqual(FizzBuzz.numberBuzz(numbers[i]), expectedResult[i], file: file, line: line)
        }
    }
    
    private func expectNumberFizzBuzz(from numbers: [Int], expectedResult: [String?], file: StaticString = #filePath, line: UInt = #line) {
        for i in 0..<numbers.count {
            XCTAssertEqual(FizzBuzz.numberFizzBuzz(numbers[i]), expectedResult[i], file: file, line: line)
        }
    }
}
