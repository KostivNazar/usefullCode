//
//  ViewController.swift
//  Animations
//
//  Created by Nazar Kostiv on 8/1/18.
//  Copyright © 2018 Nazar Kostiv. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
  }

  @IBAction func pulseButton(_ sender: UIButton) {
    sender.pulsate()
  }
  @IBAction func flashButton(_ sender: UIButton) {
    sender.flash()
  }

  @IBAction func shakeButton(_ sender: UIButton) {
    sender.shake()
  }
}

