//
//  백준-8979-올림픽-실버5.swift
//  
//
//  Created by KoJeongseok on 2023/06/14.
//  https://www.acmicpc.net/problem/8979

import Foundation
let countryInfo = readLine()!.split(separator: " ").map { Int(String($0))! }
let num = countryInfo[0]
let checkCountry = countryInfo[1]
var dic: [Int: (Int, Int, Int)] = [:]

for _ in 0..<num {
  let recordInfo = readLine()!.split(separator: " ").map { Int(String($0))! }
  let country = recordInfo[0]
  let record = (recordInfo[1], recordInfo[2], recordInfo[3])
  dic[country] = record
}

let checkRecord = dic.filter { $0.value > dic[checkCountry]! }.count + 1
print(checkRecord)
