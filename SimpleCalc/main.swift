//
//  main.swift
//  SimpleCalc
//
//  Created by Timothy Luong on 4/3/16.
//  Copyright © 2016 Timothy Luong. All rights reserved.
//

import Foundation

print("Enter an expression separated by returns:")

var response = readLine(stripNewline: true)!
var loop = true

var nums = [Double]()

func doublify(s:String) -> Double {
    return Double(s)!
}


while loop {
    switch response {
        case "+":
            print("Result: \(nums[0] + doublify(readLine(stripNewline:true)!))")
            loop = false
        case "-":
            print("Result: \(nums[0] - doublify(readLine(stripNewline:true)!))")
            loop = false
        case "/":
            print("Result: \(nums[0] / doublify(readLine(stripNewline:true)!))")
            loop = false
        case "*":
            print("Result: \(nums[0] * doublify(readLine(stripNewline:true)!))")
            loop = false
        case "x":
            print("Result: \(nums[0] * doublify(readLine(stripNewline:true)!))")
            loop = false
        case "%":
            print("Result: \(nums[0] % doublify(readLine(stripNewline:true)!))")
            loop = false
        case "count":
            print("Result: \(nums.count)")
            loop = false;
        case "avg":
            var sum : Double = 0
            for i in 1...nums.count {
                sum += nums[i - 1]
            }
            print("Result: \(sum / Double(nums.count))")
            loop = false;
        case "fact":
            if nums.count > 1 {
                print("Can only Factorial one number")
            } else {
                var factorial : Int = 1
                for i in 1...Int(nums[0]) {
                    factorial *= i
                }
                print("Result: \(Double(factorial))")
            }
            loop = false;
        default:
            nums.append(doublify(response))
            response = readLine(stripNewline: true)!
    }
}
