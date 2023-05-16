//
//  프로그래머스-가장 큰 정사각형 찾기-lv2.swift
//  
//
//  Created by KoJeongseok on 2023/05/10.
//  https://school.programmers.co.kr/learn/courses/30/lessons/12905

/// 다이나믹프로그래밍
/// 정사각형의 조건은 자신의 위, 왼쪽, 좌상 중 가장 낮은 수 + 1이다.

import Foundation

func solution(_ board:[[Int]]) -> Int {
    var maxSize = 0
    var board = board
    let boardHeight = board.count
    let boardWidth = board.first!.count

    for i in 0..<boardHeight {
        for j in 0..<boardWidth {
            if i == 0 || j == 0 {
                maxSize = maxSize < board[i][j] ? board[i][j] : maxSize
            } else if board[i][j] == 1 {
                let size = [board[i - 1][j], board[i][j - 1], board[i - 1][j - 1]].min()! + 1
                board[i][j] = size
                maxSize = maxSize < size ? size : maxSize
            }
        }
    }
    return maxSize * maxSize
}
