//
//  ViewController.swift
//  VisualFormattingLanguage
//
//  Created by Nazar Kostiv on 8/8/18.
//  Copyright © 2018 Nazar Kostiv. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  let passwordTextField: UITextField = {
    let textField = UITextField()
    textField.placeholder = "password"
    textField.backgroundColor = #colorLiteral(red: 0.8590886293, green: 0.9270624683, blue: 1, alpha: 1)
    return textField
  }()

  let usernameTextField: UITextField = {
    let textField = UITextField()
    textField.placeholder = "user name"
    textField.backgroundColor = #colorLiteral(red: 0.8590886293, green: 0.9270624683, blue: 1, alpha: 1)
    return textField
  }()

  let buttonLogIn: UIButton = {
    let button = UIButton()
    button.setTitle("Log In", for: .normal)
    button.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
    return button
  }()

  let buttonRegister: UIButton = {
    let button = UIButton()
    button.setTitle("Register", for: .normal)
    button.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
    return button
  }()

  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)

    let items = [passwordTextField, usernameTextField, buttonLogIn, buttonRegister]

    for item in items {
      item.translatesAutoresizingMaskIntoConstraints = false
      view.addSubview(item)
    }

    createConstraintsToPasswordTextField()
    createConstraintsToUsernameTextField()
    createConstraintsToButtonLogIn()
    createConstraintsToButtonRegister()

  }

  func createConstraintsToPasswordTextField() {

    NSLayoutConstraint(item: passwordTextField,
                       attribute: .centerY,
                       relatedBy: .equal,
                       toItem: view,
                       attribute: .centerY,
                       multiplier: 1,
                       constant: 0).isActive = true
    NSLayoutConstraint(item: passwordTextField,
                       attribute: .centerX,
                       relatedBy: .equal,
                       toItem: view,
                       attribute: .centerX,
                       multiplier: 1,
                       constant: 0).isActive = true
    NSLayoutConstraint(item: passwordTextField,
                       attribute: .width,
                       relatedBy: .equal,
                       toItem: nil,
                       attribute: .notAnAttribute,
                       multiplier: 1,
                       constant: 200).isActive = true
    NSLayoutConstraint(item: passwordTextField,
                       attribute: .height,
                       relatedBy: .equal,
                       toItem: nil,
                       attribute: .notAnAttribute,
                       multiplier: 1,
                       constant: 30).isActive = true
  }

  func createConstraintsToUsernameTextField() {

    NSLayoutConstraint(item: usernameTextField,
                       attribute: .centerY,
                       relatedBy: .equal,
                       toItem: passwordTextField,
                       attribute: .centerY,
                       multiplier: 1,
                       constant: -50).isActive = true
    NSLayoutConstraint(item: usernameTextField,
                       attribute: .centerX,
                       relatedBy: .equal,
                       toItem: view,
                       attribute: .centerX,
                       multiplier: 1,
                       constant: 0).isActive = true
    NSLayoutConstraint(item: usernameTextField,
                       attribute: .width,
                       relatedBy: .equal,
                       toItem: nil,
                       attribute: .notAnAttribute,
                       multiplier: 1,
                       constant: 200).isActive = true
    NSLayoutConstraint(item: usernameTextField,
                       attribute: .height,
                       relatedBy: .equal,
                       toItem: nil,
                       attribute: .notAnAttribute,
                       multiplier: 1,
                       constant: 30).isActive = true
  }

  func createConstraintsToButtonLogIn() {

    NSLayoutConstraint(item: buttonLogIn,
                       attribute: .centerY,
                       relatedBy: .equal,
                       toItem: view,
                       attribute: .centerY,
                       multiplier: 1,
                       constant: 50).isActive = true
    NSLayoutConstraint(item: buttonLogIn,
                       attribute: .rightMargin,
                       relatedBy: .equal,
                       toItem: passwordTextField,
                       attribute: .rightMargin,
                       multiplier: 1,
                       constant: -100).isActive = true
    NSLayoutConstraint(item: buttonLogIn,
                       attribute: .width,
                       relatedBy: .equal,
                       toItem: nil,
                       attribute: .notAnAttribute,
                       multiplier: 1,
                       constant: 100).isActive = true
    NSLayoutConstraint(item: buttonLogIn,
                       attribute: .height,
                       relatedBy: .equal,
                       toItem: nil,
                       attribute: .notAnAttribute,
                       multiplier: 1,
                       constant: 35).isActive = true
  }

  func createConstraintsToButtonRegister() {

    NSLayoutConstraint(item: buttonRegister,
                       attribute: .centerY,
                       relatedBy: .equal,
                       toItem: view,
                       attribute: .centerY,
                       multiplier: 1,
                       constant: 50).isActive = true
    NSLayoutConstraint(item: buttonRegister,
                       attribute: .leftMargin,
                       relatedBy: .equal,
                       toItem: passwordTextField,
                       attribute: .leftMargin,
                       multiplier: 1,
                       constant: 100).isActive = true
    NSLayoutConstraint(item: buttonRegister,
                       attribute: .width,
                       relatedBy: .equal,
                       toItem: nil,
                       attribute: .notAnAttribute,
                       multiplier: 1,
                       constant: 100).isActive = true
    NSLayoutConstraint(item: buttonRegister,
                       attribute: .height,
                       relatedBy: .equal,
                       toItem: nil,
                       attribute: .notAnAttribute,
                       multiplier: 1,
                       constant: 35).isActive = true
  }
}

