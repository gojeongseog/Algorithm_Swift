//
//  프로그래머스-바탕화면 정리-lv1.swift
//  
//
//  Created by KoJeongseok on 2023/05/26.
//  https://school.programmers.co.kr/learn/courses/30/lessons/161990

/// 비교적 쉽게 풀이 가능
/// 좋은 정답 예시가 있어서 따로 작성
/// 삼항연산자보다 min(Int, Int)가 더 간결해 보임
/// for문에 enumerated() 메서드를 이용하여 편히라게 사용

import Foundation

func solution(_ wallpaper:[String]) -> [Int] {
    var xArr: [Int] = []
    var yArr: [Int] = []
    let wallpaper = wallpaper.map { $0.map { String($0) } }

    for i in 0..<wallpaper.count {
        for j in 0..<wallpaper[0].count {
            if wallpaper[i][j] == "#" {
                xArr.append(i)
                yArr.append(j)
            }
        }
    }
    return [xArr.min()!, yArr.min()!, xArr.max()! + 1, yArr.max()! + 1]
}

// 좋은 예시
func solution(_ wallpaper:[String]) -> [Int] {
    var lux = 50
    var luy = 50
    var rdx = 0
    var rdy = 0

    for (i, str) in wallpaper.enumerated() {
        for (j, char) in str.enumerated() {
            if char == "#" {
                lux = min(lux, i)
                luy = min(luy, j)
                rdx = max(rdx, i + 1)
                rdy = max(rdy, j + 1)
            }
        }
    }
    return [lux, luy, rdx, rdy]
}
