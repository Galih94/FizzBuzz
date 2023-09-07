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
        expectGetNumber(from: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15], expectedResult: ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz", "11", "Fizz", "13", "14", "FizzBuzz"])
    }
    
    func test_run() {
        expectRun(from: [[1,2], [1,4]], expectedResult: [["1", "2"], ["1", "2", "Fizz", "4"]])
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
    
    private func expectGetNumber(from numbers: [Int], expectedResult: [String], file: StaticString = #filePath, line: UInt = #line) {
        for i in 0..<numbers.count {
            XCTAssertEqual(FizzBuzz.getNumber(numbers[i]), expectedResult[i], file: file, line: line)
        }
    }
    
    private func expectRun(from numbers: [[Int]], expectedResult: [[String]], file: StaticString = #filePath, line: UInt = #line) {
        for i in 0..<numbers.count {
            XCTAssertEqual(FizzBuzz.run(from: numbers[i].first!, to: numbers[i].last!), expectedResult[i], file: file, line: line)
        }
    }
}
