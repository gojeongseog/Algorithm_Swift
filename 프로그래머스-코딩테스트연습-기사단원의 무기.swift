//
//  프로그래머스-코딩테스트연습-기사단원의 무기.swift
//  
//
//  Created by KoJeongseok on 2023/02/11.
//  https://school.programmers.co.kr/learn/courses/30/lessons/136798

// 일반적인 약수를 구하는 방법으로는 시간초과가 예상되었고 방법을 찾지 못하여
// https://zoiworld.tistory.com/921 해당 블로그를 참고하여 풀었음


import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    var resultArr = [Int]()
    for i in 1...number {
        resultArr.append(getDivisor(n: i, limit: limit, power: power))
    }
    return resultArr.reduce(0, +)
}

func getDivisor(n: Int, limit: Int, power: Int) -> Int {
    if n == 1 { return 1 }
    var count = 0
    var isSquare = floor(sqrt(Double(n))) == sqrt(Double(n))

    for i in 1...Int(sqrt(Double(n))) {
        if n % i == 0 {
            count += 1
            if (isSquare ? count * 2 - 1 : count * 2) > limit {
                return power
            }
        }
    }
    count = isSquare ? count * 2 - 1 : count * 2
    return count
}
