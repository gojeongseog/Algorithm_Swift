//
//  스킬 체크 테스트 Level.1.swift
//  
//
//  Created by KoJeongseok on 2022/10/12.
//

import Foundation

// 1번 문제
func solution(_ n:Int) -> String {
    var str = String(repeating: "수박", count: n / 2)
    if n % 2 != 0 {
        str += "수"
    }
    return str
}

// 2번 문제
import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var long = [Int]()
    var short = [Int]()
    
    for s in sizes {
        if s[0] < s[1] {
            long.append(s[0])
            short.append(s[1])
        } else {
            long.append(s[1])
            short.append(s[0])
        }
    }
    let result = long.max()! * short.max()!
    return result
}
