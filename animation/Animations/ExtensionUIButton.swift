//
//  ExtensionUIButton.swift
//  Animations
//
//  Created by Nazar Kostiv on 8/1/18.
//  Copyright © 2018 Nazar Kostiv. All rights reserved.
//


import Foundation
import UIKit


extension UIButton {

  func pulsate() {

    let pulse = CASpringAnimation(keyPath: "transform.scale")
    pulse.duration = 3.0
    pulse.fromValue = 0.95
    pulse.toValue = 1.0
    pulse.autoreverses = true
    pulse.repeatCount = 2
    pulse.initialVelocity = 0.5
    pulse.damping = 0.2
    layer.add(pulse, forKey: "pulse")
  }

  func flash() {

    let flash = CABasicAnimation(keyPath: "opacity")
    flash.duration = 2.5
    flash.fromValue = 1
    flash.toValue = 0.1
    flash.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
    flash.autoreverses = true
    flash.repeatCount = 3

    layer.add(flash, forKey: nil)
  }


  func shake() {

    let shake = CABasicAnimation(keyPath: "position")
    shake.duration = 0.3
    shake.repeatCount = 10
    shake.autoreverses = true

    let fromPoint = CGPoint(x: center.x - 200, y: center.y - 100)
    let fromValue = NSValue(cgPoint: fromPoint)

    let toPoint = CGPoint(x: center.x + 200, y: center.y + 100)
    let toValue = NSValue(cgPoint: toPoint)

    shake.fromValue = fromValue
    shake.toValue = toValue

    layer.add(shake, forKey: "position")
  }

}

