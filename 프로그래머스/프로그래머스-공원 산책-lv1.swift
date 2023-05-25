//
//  프로그래머스-공원 산책-lv1.swift
//  
//
//  Created by KoJeongseok on 2023/05/25.
//  https://school.programmers.co.kr/learn/courses/30/lessons/172928

import Foundation

func solution(_ park:[String], _ routes:[String]) -> [Int] {
    let park: [[String]] = park.map { $0.map { String($0) } }
    let h: Int = park.count
    let w: Int = park[0].count

    var y: Int = 0
    var x: Int = 0

    for i in 0..<h {
        for j in 0..<w {
            if park[i][j] == "S" {
                y = i
                x = j
            }
        }
    }

    for route in routes {
        let direction = String(route.first!)
        let distance = Int(String(route.last!))!
        var ny = y
        var nx = x

        for move in 0..<distance {
            switch direction {
            case "E": nx += 1
            case "W": nx -= 1
            case "S": ny += 1
            default: ny -= 1
            }
            if ny < 0 || ny >= h || nx < 0 || nx >= w || park[ny][nx] == "X" {
                ny = y
                nx = x
                break
            }
        }
        y = ny
        x = nx
    }
    return [y, x]
}
