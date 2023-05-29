//
//  프로그래머스-튜플-lv1.swift
//  
//
//  Created by KoJeongseok on 2023/05/30.
//  https://school.programmers.co.kr/learn/courses/30/lessons/64065

/// 주어진 문자열 s 를 어떻게 파싱하는지가 관건이었던 문제이다
/// 나름 대로 시도한 방식이 있었지만 깔끔한 정답이 있어서 같이 올렸다.
///
/// 배운것 1. forEach 활용
/// 배운것 2. removeFirst()와 dropFirst()의 차이
/// removeFirst()는 원본이 수정되고, 제거한 값이 반환
/// dropFirst()는 원본이 수정되지 않고 제거된 새로운 값이 반환

import Foundation

// 나의 풀이
func solution(_ s:String) -> [Int] {
    var answer = [Int]()
    var s = s.dropFirst(2).dropLast(2).components(separatedBy: "},{")
    var newS = s.map { $0.components(separatedBy: ",").map { Int(String($0))! } }
    let sortedNewS = newS.sorted { $0.count < $1.count }

    for n in sortedNewS {
        var new = n
        for a in answer {
            new = new.filter { $0 != a }
        }
        answer.append(new[0])
    }
    return answer
}

// 좋은 풀이
func solution(_ s:String) -> [Int] {
    var s = s
    var answer = [Int]()

    s.removeFirst(2)
    s.removeLast(2)
    s.components(separatedBy: "},{")
    .map { $0.components(separatedBy: ",").map { Int($0)! } }
    .sorted { $0.count < $1.count }
    .forEach {
        $0.forEach {
            if !answer.contains($0) {
                answer.append($0)
            }
        }
    }
    return answer
}


