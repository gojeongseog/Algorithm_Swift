//
//  프로그래머스-코딩테스트입문.swift
//  
//
//  Created by KoJeongseok on 2022/10/12.
//

import Foundation

// MARK: 배열자르기
// https://school.programmers.co.kr/learn/courses/30/lessons/120833

// 나의 풀이
func solution(_ numbers:[Int], _ num1:Int, _ num2:Int) -> [Int] {
    var newArr = numbers
    let count = newArr.count
    newArr.removeFirst(num1)
    newArr.removeLast(count - (num2 + 1))
    return newArr
}

// 다른사람의 풀이
// 아주 쉽게 특정 범위의 배열을 만드는 법을 배웠음
func solution(_ numbers:[Int], _ num1:Int, _ num2:Int) -> [Int] {
    return Array(numbers[num1...num2])
}
