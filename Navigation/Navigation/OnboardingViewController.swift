//
//  OnboardingViewController.swift
//  Navigation
//
//  Created by Nazar Kostiv on 9/10/18.
//  Copyright © 2018 Nazar Kostiv. All rights reserved.
//

import UIKit

class OnboardingViewController: UIViewController {

  var completion: ((UIViewController) -> ())?
  @IBAction func goToToDoAction(_ sender: Any) {
    let toDoScreen = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ToDoViewController") as? ToDoViewController
    self.navigationController?.pushViewController(toDoScreen!, animated: true)
  }

  @IBAction func logOut(_ sender: Any) {
    isAuth = true
    completion?(self)
  }
  
  override func viewDidLoad() {
        super.viewDidLoad()
    }
}
