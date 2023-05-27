//
//  백준-20115-구현-실버3.swift
//  
//
//  Created by KoJeongseok on 2023/05/27.
//  https://www.acmicpc.net/problem/20115

import Foundation

let n = readLine()!
let drinks = readLine()!.components(separatedBy: " ").map { Double(String($0))! }
var sortedDrinks = drinks.sorted(by: >)
let maxDrink = sortedDrinks.removeFirst()
print(maxDrink + sortedDrinks.map { $0 / 2 }.reduce(0, +))
