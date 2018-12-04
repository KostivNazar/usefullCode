//
//  MyViewController.swift
//  picker
//
//  Created by Nazar Kostiv on 11/5/18.
//  Copyright © 2018 Nazar Kostiv. All rights reserved.
//

import UIKit

class MyViewController: UIPageViewController {

  var cars = [CarsHelper]()
  let bmw = UIImage(named: "car1")
  let audi = UIImage(named: "car2")
    override func viewDidLoad() {
        super.viewDidLoad()
      navigationItem.title = "Cars"
      let firstCar = CarsHelper(name: "car  BMW", image: bmw!)
      let lastCar = CarsHelper(name: "car audi", image: audi!)
      cars.append(firstCar)
      cars.append(lastCar)

    }

  //MARK: - create vc

  lazy var arrayCarViewController: [CarViewController] = {
    var carVC = [CarViewController]()
    for car in cars {
      carVC.append(CarViewController(carWith: car))
    }
    return carVC
  }()

  //MARK: - init UIPageViewController

  override init(transitionStyle style: UIPageViewController.TransitionStyle, navigationOrientation: UIPageViewController.NavigationOrientation, options: [UIPageViewController.OptionsKey : Any]? = nil) {
    super.init(transitionStyle: .pageCurl, navigationOrientation: .horizontal, options: nil)
    self.view.backgroundColor = UIColor.green
    self.dataSource = self
    self.delegate = self
    setViewControllers([arrayCarViewController[0]], direction: .forward, animated: true, completion: nil)
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}


extension MyViewController: UIPageViewControllerDataSource, UIPageViewControllerDelegate {
  func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {

    guard let viewController = viewController as? CarViewController else { return nil }
    if let index = arrayCarViewController.index(of: viewController) {
    if index > 0 {
      return arrayCarViewController[index - 1]
      }
    }
    return nil
  }

  func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
    guard let viewController = viewController as? CarViewController else { return nil }
    if let index = arrayCarViewController.index(of: viewController) {
      if index < cars.count - 1 {
        return arrayCarViewController[index + 1]
      }
    }
    return nil
  }

  func presentationCount(for pageViewController: UIPageViewController) -> Int {
    return cars.count
  }
  func presentationIndex(for pageViewController: UIPageViewController) -> Int {
    return 0
  }
}
