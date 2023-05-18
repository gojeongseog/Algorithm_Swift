//
//  프로그래머스-점프와 순간 이동-lv2.swift
//  
//
//  Created by KoJeongseok on 2023/05/18.
//  https://school.programmers.co.kr/learn/courses/30/lessons/12980

import Foundation

func solution(_ n:Int) -> Int {
    var num = n
    var answer = 0
    while num != 0 {
        if num % 2 == 0 {
            num /= 2
        } else {
            num -= 1
            answer += 1
        }
    }
    return answer
}

// 흥미로운 다른사람 풀이

func solution2(_ n:Int) -> Int {
    if n == 1 { return 1 }
    if n % 2 == 0 {
        return solution2(n / 2)
    }
    return solution2(n / 2) + 1
}

/// 문제는 간결하였지만 재귀보다는 반복문이 성능이 좋다.
/// 재귀는 함수 호출 스택을 사용하기 때문에 깊이가 매무 깊어지면
///  스택 오버플로우를 일으킬 수 있다.
