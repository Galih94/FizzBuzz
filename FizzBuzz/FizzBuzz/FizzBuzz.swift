//
//  FizzBuzz.swift
//  FizzBuzz
//
//  Created by Galih Samudra on 06/09/23.
//

public class FizzBuzz {
    
    public static func numberDefaultText(_ number: Int) -> String {
        return "\(number)"
    }
    
    public static func numberFizz(_ number: Int) -> String? {
        guard number.isMultiple(of: 3) else { return nil }
        return "Fizz"
    }
    
    public static func numberBuzz(_ number: Int) -> String? {
        guard number.isMultiple(of: 5) else { return nil }
        return "Buzz"
    }
    
    public static func numberFizzBuzz(_ number: Int) -> String? {
        guard number.isMultiple(of: 15) else { return nil }
        return "FizzBuzz"
    }
}
