//
//  백준-1946-그리디.swift
//  
//
//  Created by KoJeongseok on 2023/04/27.
//  https://www.acmicpc.net/problem/1946

/// 문제는 어렵지 않은 문제이지만 Swift의 readLine()은 입력받는 속도가 느려서 시간초과 발생
/// FileIO 클래스를 가져와서 문제 해결

import Foundation

final class FileIO {
    private let buffer:[UInt8]
    private var index: Int = 0

    init(fileHandle: FileHandle = FileHandle.standardInput) {

        buffer = Array(try! fileHandle.readToEnd()!)+[UInt8(0)] // 인덱스 범위 넘어가는 것 방지
    }

    @inline(__always) private func read() -> UInt8 {
        defer { index += 1 }

        return buffer[index]
    }

    @inline(__always) func readInt() -> Int {
        var sum = 0
        var now = read()
        var isPositive = true

        while now == 10
                || now == 32 { now = read() } // 공백과 줄바꿈 무시
        if now == 45 { isPositive.toggle(); now = read() } // 음수 처리
        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now-48)
            now = read()
        }

        return sum * (isPositive ? 1:-1)
    }

    @inline(__always) func readString() -> String {
        var now = read()

        while now == 10 || now == 32 { now = read() } // 공백과 줄바꿈 무시
        let beginIndex = index-1

        while now != 10,
              now != 32,
              now != 0 { now = read() }

        return String(bytes: Array(buffer[beginIndex..<(index-1)]), encoding: .ascii)!
    }

    @inline(__always) func readByteSequenceWithoutSpaceAndLineFeed() -> [UInt8] {
        var now = read()

        while now == 10 || now == 32 { now = read() } // 공백과 줄바꿈 무시
        let beginIndex = index-1

        while now != 10,
              now != 32,
              now != 0 { now = read() }

        return Array(buffer[beginIndex..<(index-1)])
    }
}


let file = FileIO()


let t = file.readInt()

for _ in 0..<t {
  let n = file.readInt()
  var arr: [(Int, Int)] = []

  for _ in 0..<n {
    arr.append((file.readInt(), file.readInt()))
  }

  let sortedArr = arr.sorted { $0.0 < $1.0 }
  var min = n + 1
  var answer = 0

  for i in sortedArr {
    let test = i.1
    if test < min {
      answer += 1
      min = test
    }
  }
  print(answer)
}
