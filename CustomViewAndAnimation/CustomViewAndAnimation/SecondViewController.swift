//
//  SecondViewController.swift
//  CustomViewAndAnimation
//
//  Created by Nazar Kostiv on 8/3/18.
//  Copyright © 2018 Nazar Kostiv. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

  let myView = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
  var gradient = CAGradientLayer()

    override func viewDidLoad() {
        super.viewDidLoad()
      myView.backgroundColor = .red
      myView.layer.cornerRadius = myView.frame.size.width / 2
      let borderColor = UIColor.green
      myView.layer.borderColor = borderColor.cgColor
      myView.layer.borderWidth = 10
      let shadowColor = UIColor.black
      myView.layer.shadowColor = shadowColor.cgColor
      myView.layer.shadowRadius = 45
      myView.layer.shadowOpacity = 1
      myView.layer.shadowOffset = CGSize(width: 0, height: 5)

      gradient.startPoint = CGPoint(x: 0, y: 0)
      gradient.endPoint = CGPoint(x: 0, y: 1)
      let startColor = #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1).cgColor
      let endColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1).cgColor
      let middleColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1).cgColor
      gradient.colors = [endColor, middleColor]

      view.insertSubview(myView, at: 1)
      gradient.frame = view.frame
      view.layer.insertSublayer(gradient, at: 0)
    }

  func animateView() {
    let gradientAnimation = CABasicAnimation(keyPath: "move")
    gradientAnimation.fromValue = [0.0, 0.0, 0.25]
    gradientAnimation.toValue = [0.75, 1.0, 1.0]
    gradientAnimation.duration = 3.0
    gradientAnimation.autoreverses = true
    gradientAnimation.repeatCount = Float.infinity
    self.gradient.add(gradientAnimation, forKey: nil)
  }
}
