//
//  백준-17413-구현.swift
//  
//
//  Created by KoJeongseok on 2023/05/01.
//

let str = readLine()!.map {String($0)}
var tag = ""
var word = ""

for s in str {
  if s == "<" {
    tag += s
    if !word.isEmpty {
      print(String(word.reversed()), terminator: "")
      word = ""
    }
  } else if s == ">" {
    tag += s
    print(tag, terminator: "")
    tag = ""
  } else {
    if !tag.isEmpty {
      tag += s
    } else {
      if s == " " {
        print(String(word.reversed()), terminator: " ")
        word = ""
      } else {
        word += s
      }
    }
  }
}
if !word.isEmpty {
  print(String(word.reversed()))
}
