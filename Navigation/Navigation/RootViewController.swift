//
//  RootViewController.swift
//  Navigation
//
//  Created by Nazar Kostiv on 9/10/18.
//  Copyright © 2018 Nazar Kostiv. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {
  
  let storyBoard = UIStoryboard(name: "Main", bundle: nil)
  let viewController = ViewController.self
  let onbController = OnboardingViewController.self
  let toDoController = ToDoViewController.self
    override func viewDidLoad() {
        super.viewDidLoad()

   let controller = showRoot(viewController: onbController)
      displayContentController(content: controller)
//      let controller = showRoot(withIdentifier: "OnboardingViewController")
//      displayContentController(content: controller)

    if let controller = controller.childViewControllers.first as? OnboardingViewController {
        controller.completion = { [weak self] controller in
          self?.hideContentController(content: controller)
         let main = self?.showRoot(withIdentifier: "ViewController")
          self?.displayContentController(content: main!)
         // self?.displayContentController(content: showRoot(viewController: viewController))
        }
      }
    }

  func showRoot<T: UIViewController>(viewController: T.Type) -> UIViewController {
    let identifier = String(describing: viewController)
    let controller = UINavigationController(rootViewController: storyBoard.instantiateViewController(withIdentifier: identifier))
    return controller
  }

  func showRoot(withIdentifier: String) -> UIViewController {
    let controller = UINavigationController(rootViewController: storyBoard.instantiateViewController(withIdentifier: withIdentifier))
    return controller
  }

  func displayContentController(content: UIViewController) {
    addChildViewController(content)
    self.view.addSubview(content.view)
    content.didMove(toParentViewController: self)
  }

  func hideContentController(content: UIViewController) {
    content.willMove(toParentViewController: nil)
    content.view.removeFromSuperview()
    content.removeFromParentViewController()
  }
}
