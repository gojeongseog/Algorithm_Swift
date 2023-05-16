//
//  프로그래머스-숫자변환하기-lv2.swift
//  
//
//  Created by KoJeongseok on 2023/05/08.
//  https://school.programmers.co.kr/learn/courses/30/lessons/154538

import Foundation

// 코드 확인후 풀었음
func solution(_ x:Int, _ y:Int, _ n:Int) -> Int {
    var results: Set<Int> = [x] // 불필요한 중복을 피하기 위해 Set 사용
    var count = 0

    while !results.isEmpty {
        if results.contains(y) { // Y와 같은 값이 있다면 목표값을 찾은것이기 때문에 count 반환
            return count
        }
        var nextResults: Set<Int> = [] // 다음 set를 업데이트 하기 위한 새로운 set
        for result in results {
            if result + n <= y { // 1번연산
                nextResults.insert(result + n)
            }
            if result * 2 <= y { // 2번연산
                nextResults.insert(result * 2)
            }
            if result * 3 <= y { // 3번연산
                nextResults.insert(result * 3)
            }
        }
        results = nextResults // 기존 results의 값들은 모두 확인했기 때문에 새로운 값들을 가지고 있는 nextRsults 저장
        count += 1 // 연산을 한단게 더 한 값이기 때문에 count + 1
    }
    return -1 // 가능한 값들을 모두 확인했음에도 y랑 같은 값이 없었다면 -1 반환
}
