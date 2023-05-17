//
//  프로그래머스-짝지어 제거하기-lv2.swift
//  
//
//  Created by KoJeongseok on 2023/05/17.
//  https://school.programmers.co.kr/learn/courses/30/lessons/12973

// 스택을 사용하면 쉽게 구현 가능, 하지만 스택이 바로 떠오르지 않았다.

import Foundation

func solution(_ s:String) -> Int{
    var stack = [Character]()

    for char in s {
        if stack.last == char {
            stack.removeLast()
        } else {
            stack.append(char)
        }
    }
    return stack.isEmpty ? 1 : 0
}
