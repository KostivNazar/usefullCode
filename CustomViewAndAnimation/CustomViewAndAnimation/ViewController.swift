//
//  ViewController.swift
//  CustomViewAndAnimation
//
//  Created by Nazar Kostiv on 8/2/18.
//  Copyright © 2018 Nazar Kostiv. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBAction func goNext(_ sender: UIButton) {
    performSegue(withIdentifier: "goToSecond", sender: self)
  }
  var location = CGPoint(x: 0, y: 0)
  //let myView = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
 // let mySecondView = UIView(frame: CGRect(x: 0, y: 70, width: 50, height: 50))
  var myView = UIView(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
  override func viewDidLoad() {
    super.viewDidLoad()
//    myView.backgroundColor = .black
//    mySecondView.backgroundColor = .red
//    view.insertSubview(mySecondView, at: 1)
//    view.insertSubview(myView, at: 1)
    myView.backgroundColor = .black
    view.addSubview(myView)
  }

  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {

    let touch : UITouch! =  touches.first! as UITouch
    location = touch.location(in: self.view)
    myView.center = location
    print(location)
  }

  override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {

    let touch : UITouch! =  touches.first! as UITouch
    location = touch.location(in: self.view)
    myView.center = location
  }
}

