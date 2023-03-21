//
//  프로그래머스-뒤에 있는 큰 수 찾기.swift
//  
//
//  Created by KoJeongseok on 2023/03/21.
//  https://school.programmers.co.kr/learn/courses/30/lessons/154539

// 1차시도: 테스트 20~ 23 시간초과
// numbers의 길이와 numbers[i]의 크기가 최대 1,000,000이기 때문에 2중 for문을 쓰면 시간초과
import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var result = Array(repeating: -1, count: numbers.count)
    for i in 0..<numbers.count {
        for j in i + 1..<numbers.count {
            if numbers[j] > numbers[i] {
                result[i] = numbers[j]
                break
            }
        }
    }
    return result
}

// 2차 시도
// stack을 응용하여 풀이
import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var result = Array(repeating: -1, count: numbers.count)
    var stack = [0]

    for i in 1..<numbers.count {
        while !stack.isEmpty {
            if numbers[stack.last!] < numbers[i] {
                let last = stack.removeLast()
                result[last] = numbers[i]
            } else {
                break
            }
        }
        stack.append(i)
    }
    return result
}
