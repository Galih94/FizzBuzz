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
}

final class FizzBuzzTests: XCTestCase {
    func test_numberDefaultText_resultNumberInString_numberZero() {
        let sut = FizzBuzz()
        let result = sut.numberDefaultText(0)
        XCTAssertEqual(result, "0")
    }
    
    func test_numberDefaultText_resultNumberInString_numberOne() {
        let sut = FizzBuzz()
        let result = sut.numberDefaultText(1)
        XCTAssertEqual(result, "1")
    }
}
