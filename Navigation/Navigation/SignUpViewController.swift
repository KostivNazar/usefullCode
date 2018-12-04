//
//  SignUpViewController.swift
//  Navigation
//
//  Created by Nazar Kostiv on 9/10/18.
//  Copyright © 2018 Nazar Kostiv. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

  @IBAction func goToCreateOrJoinGroup(_ sender: Any) {
    let onbScreen = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "OnboardingViewController") as? OnboardingViewController
    self.navigationController?.pushViewController(onbScreen!, animated: true)
  }
  
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
