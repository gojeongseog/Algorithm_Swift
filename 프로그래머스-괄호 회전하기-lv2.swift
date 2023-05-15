//
//  프로그래머스-괄호 회전하기-lv2.swift
//  
//
//  Created by KoJeongseok on 2023/05/15.
//  https://school.programmers.co.kr/learn/courses/30/lessons/76502

import Foundation

func solution(_ s:String) -> Int {
    var brackets = s.map { String($0) }
    var answer = 0

    func checkBracket(_ brackets: [String]) -> Bool {
        var stack:[String] = []
        for bracket in brackets {
            if bracket == "(" || bracket == "{" || bracket == "[" {
                stack.append(bracket)
                continue
            } else {
                if stack.isEmpty { return false }
                let last = stack.removeLast()
                if bracket == ")" && last != "(" {
                    return false
                } else if bracket == "}" && last != "{" {
                    return false
                } else if bracket == "]" && last != "[" {
                    return false
                }
            }
        }
        if stack.isEmpty {
            return true
        } else {
            return false
        }
    }

    for _ in 0..<brackets.count {
        if checkBracket(brackets) {
            answer += 1
        }
        let first = brackets.removeFirst()
        brackets.append(first)
    }
    return answer
}
