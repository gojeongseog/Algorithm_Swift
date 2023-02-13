//
//  프로그래머스-코딩테스트 연습-약수의 개수와 덧셈.swift
//  
//
//  Created by KoJeongseok on 2023/02/13.
//  https://school.programmers.co.kr/learn/courses/30/lessons/77884


// 직접 약수의 개수를 구하고 홀수인지 짝수인지 확인하여 첫번째 방법을 처리 함.
// 하지만 개수를 구하지 않아도 제곱근이 존재하면 홀수, 존재하지 않으면 짝수라는 사실을 알고 두번째 방법을 처리 함.
import Foundation

// 첫번째 방법
func solution(_ left:Int, _ right:Int) -> Int {
    var result: Int = 0

    for n in left...right {
        var count = getDivisor(n)
        result += count % 2 == 0 ? n : -n
    }
    return result
}

func getDivisor(_ n: Int) -> Int {
    if n == 1 { return 1 }
    var count = 0
    var isSquare = floor(sqrt(Double(n))) == sqrt(Double(n))
    for i in 1...Int(sqrt(Double(n))) {
        if n % i == 0 {
            count += 1
        }
    }
    count = isSquare ? count * 2 - 1 : count * 2
    return count
}

// 두번째 방법
func solution2(_ left:Int, _ right:Int) -> Int {
    var count = 0
    for n in left...right {
        if floor(sqrt(Double(n))) == sqrt(Double(n)) {
            count -= n
        } else {
            count += n
        }
    }
    return count
}
