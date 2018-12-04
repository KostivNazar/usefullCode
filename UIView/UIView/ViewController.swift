//
//  ViewController.swift
//  UIView
//
//  Created by Nazar Kostiv on 8/1/18.
//  Copyright © 2018 Nazar Kostiv. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBAction func pulseButtonPressed(_ sender: UIButton) {
    sender.pulsate()
  }

  @IBAction func flashButtonPressed(_ sender: UIButton) {
    sender.flash()
  }

  @IBAction func shakeButtonPressed(_ sender: UIButton) {
    sender.shake()
  }

  @IBOutlet weak var textField: UITextField!

  override func viewDidLoad() {
    super.viewDidLoad()
   // textField(textField, shouldChangeCharactersIn: NSRange(location: 0, length: 10), replacementString: "")
  }

//
//  func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
//    guard let text = textField.text else { return true }
//    let newLength = text.count + string.count - range.length
//    return newLength <= 10
//  }


}



private var __maxLengths = [UITextField: Int]()
extension UITextField {
  @IBInspectable var maxLength: Int {
    get {
      guard let l = __maxLengths[self] else {
        return 150 // (global default-limit. or just, Int.max)
      }
      return l
    }
    set {
      __maxLengths[self] = newValue
      addTarget(self, action: #selector(fix), for: .editingChanged)
    }
  }
  @objc func fix(textField: UITextField) {
    let t = textField.text
    textField.text = t?.safelyLimitedTo(length: maxLength)
  }
}

extension String {
  func safelyLimitedTo(length n: Int)->String {
    if (self.count <= n) {
      return self
    }
    return String( Array(self).prefix(upTo: n) )
  }
}

