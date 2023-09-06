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
        return nil
    }
}

final class FizzBuzzTests: XCTestCase {
    func test_numberDefaultText_resultNumberInString() {
        XCTAssertEqual(FizzBuzz().numberDefaultText(0), "0")
        XCTAssertEqual(FizzBuzz().numberDefaultText(1), "1")
    }
    
    func test_numberFizz_resultNumberNotMultiplyThree_numberTwo() {
        XCTAssertEqual(FizzBuzz().numberFizz(2), nil)
    }
}
