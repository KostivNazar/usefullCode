//
//  ViewController.swift
//  Navigation
//
//  Created by Nazar Kostiv on 9/10/18.
//  Copyright © 2018 Nazar Kostiv. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBAction func SignInButtonAction(_ sender: Any) {
    let signIn = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SignInViewController") as? SignInViewController
    self.navigationController?.pushViewController(signIn!, animated: true)
  }
  
  @IBAction func SignUpButtonAction(_ sender: Any) {
    let signUp = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SignUpViewController") as? SignUpViewController
    self.navigationController?.pushViewController(signUp!, animated: true)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()

  }
}

