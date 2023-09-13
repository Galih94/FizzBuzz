//
//  FizzBuzz.swift
//  FizzBuzz
//
//  Created by Galih Samudra on 06/09/23.
//

public final class FizzBuzz {
    private static let FIZZ_NUMBER = 3
    private static let BUZZ_NUMBER = 5
    private static let FIZZBUZZ_NUMBER = 15
    
    public static func run(from start: Int, to end: Int) -> [String] {
        var result = [String]()
        for i in start...end {
            result.append(getNumber(i))
        }
        return result
    }
    
    public static func getNumber(_ number: Int) -> String {
        if let numberFizzBuzz = numberFizzBuzz(number) {
            return numberFizzBuzz
        } else if let numberBuzz = numberBuzz(number) {
            return numberBuzz
        } else if let numberFizz = numberFizz(number) {
            return numberFizz
        } else {
            return numberDefaultText(number)
        }
    }
    
    public static func numberDefaultText(_ number: Int) -> String {
        return "\(number)"
    }
    
    public static func numberFizz(_ number: Int) -> String? {
        guard number.isMultiple(of: FIZZ_NUMBER) else { return nil }
        return "Fizz"
    }
    
    public static func numberBuzz(_ number: Int) -> String? {
        guard number.isMultiple(of: BUZZ_NUMBER) else { return nil }
        return "Buzz"
    }
    
    public static func numberFizzBuzz(_ number: Int) -> String? {
        guard number.isMultiple(of: FIZZBUZZ_NUMBER) else { return nil }
        return "FizzBuzz"
    }
}
