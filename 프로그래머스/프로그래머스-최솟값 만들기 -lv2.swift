//
//  프로그래머스-최솟값 만들기 -lv2.swift
//  
//
//  Created by KoJeongseok on 2023/05/10.
//  https://school.programmers.co.kr/learn/courses/30/lessons/12941

/// 문제는 어렵지 않았는데 첫번째 작성한 코드는 이상하게 케이스8에서 시간초과가 나온다
/// 그런데 다시 해보니 시간초과가 뜨지 않는다 이상하다
/// 결론은 둘다 맞음

import Foundation

// 8번에서 시간초과 떴던 코드
func solution(_ A:[Int], _ B:[Int]) -> Int {
    var sortedA = A.sorted(by: <)
    var sortedB = B.sorted(by: >)
    var answer = 0

    for idx in 0..<sortedA.count {
        answer += sortedA[idx] * sortedB[idx]
    }
    return answer
}

// 시간초과 해결한 코드
func solution(_ A:[Int], _ B:[Int]) -> Int {
    var sortedA = A.sorted()
    var sortedB = B.sorted()
    var answer = 0

    while sortedA.isEmpty == false {
        answer += sortedA.removeFirst() * sortedB.removeLast()
    }
    return answer
}
