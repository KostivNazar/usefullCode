//
//  nameByValue.swift
//  Animations
//
//  Created by Nazar Kostiv on 10/24/18.
//  Copyright © 2018 Nazar Kostiv. All rights reserved.
//

import Foundation

func nazar() {
  func nazarByValue(n: Int) {
    print("Entered pass by value")
    print(n)
  }

  func produceN() -> Int {
    print("calculated N")
    return 42
  }

  nazarByValue(n: produceN())

  func nazarByName(n: @autoclosure () -> Void) {

    print("Entered pass by name")
   n()
  }
  nazarByName(n: print("lol") )
  nazarByName(n:print("asd"))
}
