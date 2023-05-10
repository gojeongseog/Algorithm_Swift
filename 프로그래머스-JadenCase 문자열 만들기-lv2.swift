//
//  프로그래머스-JadenCase 문자열 만들기-lv2.swift
//  
//
//  Created by KoJeongseok on 2023/05/10.
//  https://school.programmers.co.kr/learn/courses/30/lessons/12951

func solution(_ s:String) -> String {
    let strArr = s.components(separatedBy: " ").map { Array($0) }
    var answer: String = ""

    for i in strArr {
        for j in 0..<i.count {
            if j == 0 {
                answer += i[j].uppercased()
            } else {
                answer += i[j].lowercased()
            }
        }
        answer += " "
    }
    answer.removeLast()
    return answer
}
