//
//  프로그래머스-키패드 누르기-lv1.swift
//  
//
//  Created by KoJeongseok on 2023/05/25.
//  https://school.programmers.co.kr/learn/courses/30/lessons/67256

import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    var answer = ""
    let hand = hand == "right" ? "R" : "L"
    var l = 10
    var r = 12


    for number in numbers {
        let number = number == 0 ? 11 : number
        var lDist = 0
        var rDist = 0

        switch number {
            case 1, 4, 7:
            answer += "L"
            l = number
            case 3, 6, 9:
            answer += "R"
            r = number
            default:
            let distL = (abs(l - number) / 3) + (abs(l - number) % 3)
            let distR = (abs(r - number) / 3) + (abs(r - number) % 3)

            if distL == distR {
                answer += hand
                if hand == "R" {
                    r = number
                } else {
                    l = number
                }
            } else if distL < distR {
                l = number
                answer += "L"
            } else {
                r = number
                answer += "R"
            }
        }
    }
    return answer
}
