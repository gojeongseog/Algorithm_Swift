//
//  프로그래머스-프렌즈4블록-lv2.swift
//  
//
//  Created by KoJeongseok on 2023/05/22.
//  https://school.programmers.co.kr/learn/courses/30/lessons/17679

struct Point: Hashable {
    let x: Int
    let y: Int

    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}

func solution(_ m:Int, _ n:Int, _ board:[String]) -> Int {
    var board = board.map { $0.map { String($0) } }
    var points: Set<Point> = Set<(Point)>()
    var point = 0

    func getPoints() -> Bool {
        for i in 0..<m - 1 {
            for j in 0..<n - 1 {
                let char = board[i][j]
                if char == "X" { continue }
                if board[i + 1][j] == char &&
                board[i][j + 1] == char &&
                board[i + 1][j + 1] == char {
                    points.insert(Point(x: i, y: j))
                    points.insert(Point(x: i + 1, y: j))
                    points.insert(Point(x: i, y: j + 1))
                    points.insert(Point(x: i + 1, y: j + 1))
                }
            }
        }
        for p in points {
            board[p.x][p.y] = "X"
        }
        if points.count == 0 {
            return false
        } else {
            point += points.count
            points = Set<(Point)>()
            return true
        }
    }

    func updatePoint() {
        for i in (0..<m-2).reversed() {
            for j in 0..<n {
                if board[i][j] == "X" { continue }
                let char = board[i][j]
                var bottom = i + 1
                while true {
                    if bottom >= m || board[bottom][j] != "X" { break }
                    board[bottom - 1][j] = "X"
                    board[bottom][j] = char
                    bottom += 1
                }
            }
        }
    }
    while true {
        if getPoints() {
            updatePoint()
        } else {
            break
        }
    }
    return point
}

