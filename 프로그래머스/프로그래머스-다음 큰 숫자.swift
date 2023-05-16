//
//  프로그래머스-다음 큰 숫자.swift
//  
//
//  Created by KoJeongseok on 2023/03/22.
//

import Foundation

// 1차 시도: 시간 초과
/*
 테스트 통과 하였지만 효율성 검사에서 실패
 1의 개수를 filter를 통해 확인하고 num을 1씩 증가시켜 비교하여 구현
 */

func solution(_ n:Int) -> Int {
    var answer:Int = 0
    var isNext = false
    var num = n
    let count = String(n, radix: 2).map { String($0) }.filter { $0 == "1" }.count

    while !isNext {
        num += 1
        let next = String(num, radix: 2)
        let nextCount = next.map { String($0) }.filter { $0 == "1" }.count
        if count == nextCount {
            isNext = true
            answer = Int(next, radix: 2)!
        }
    }
    return answer
}

// 2차: 연산프로퍼티를 이용하여 해결
/* 구글의 도움을 받아 해결...
 연산프로퍼티를 응용하여 통과하였다.
 But 아래 count의 반환 구문에서 타입변경 방식에 따라 성능이 다른듯 하다

 1. String과 Character의 차이
 2. Type() 와 as Typer 의 성능차이

 */


import Foundation

func solution(_ n:Int) -> Int {
    var answer:Int = n + 1
    let count: (Int) -> Int = { n in
        let value = String(n, radix: 2)
        return value.map { $0 as Character }.filter { $0 == "1" as Character }.count
    }

    let num = count(n)

    while num != count(answer) {
        answer += 1
    }
    return answer
}

// 3차: 좀더 좋은 방법을 발견
// nonzeroBitCount 라는 기본 메서드가 1의 개수를 반환 함

func solution(_ n:Int) -> Int {
    var answer : Int = n + 1

    while true {
        if n.nonzeroBitCount == answer.nonzeroBitCount {
            break;
        }
        answer += 1
    }

    return answer
}
