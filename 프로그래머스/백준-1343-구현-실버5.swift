//
//  백준-1343-구현-실버5.swift
//  
//
//  Created by KoJeongseok on 2023/05/26.
//  https://www.acmicpc.net/problem/1343

import Foundation

var board = readLine()!
board = board.replacingOccurrences(of: "XXXX", with: "AAAA")
board = board.replacingOccurrences(of: "XX", with: "BB")
if board.contains("X") {
  print(-1)
} else {
  print(board)
}
