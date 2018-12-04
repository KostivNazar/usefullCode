//
//  SecondViewController.swift
//  ViewCnorollerLifeCycle
//
//  Created by Nazar Kostiv on 8/7/18.
//  Copyright © 2018 Nazar Kostiv. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

  var someProperties: String? {
    didSet {
      print("someProperties")
    }
  }
  
  override func awakeFromNib() {
    print("Second awakeFromNib")
    // викликається після ініціалізації перед підготовкою переходу у  контролера який заданий за допомогою сторіборда
  }

//  override func loadView() {
//    // ручна ініціалізація view
//    // колір бекграунда і інші параметри
//  }



  override func viewDidLoad() {
    super.viewDidLoad()
    // спрацьовує після загрузки view
    // ініціалізація змінних
    // тут можна ініціалізувати всі змінні і обєкти які будуть жити на протязі всього життєвого циклу
    // границі ще не встановлені тому ми не можемо звертатись до геометрії ( висоти, широти і інших параментів )
    print("Second viewDidLoad")

  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // спрацьовує коли закінчується память
    // тут можна повідомляти користувача пуш повідомленнями що закінчується память
    // обнулення обєктів які не використовуються

    print("Second didReceiveMemoryWarning")
  }


  override func updateViewConstraints() {
    // змінення значення кострейнтів
    // супер потрібно вписувати саме в кінці
    // викликається перед viewWillLayoutSubviews
    print("Second updateViewConstraints")
    super.updateViewConstraints()
  }


  override func viewDidLayoutSubviews() {
    //Called to notify the view controller that its view has just laid out its subviews.
    // тут можна зберігати останній стан обєкту наприклад стан скрол view або виділену ячейку в table view.

    print("Second viewDidLayoutSubviews")
  }

  override func viewWillLayoutSubviews() {
    // тут можна змінити розміри subViews і їх розміщення

    print("Second viewWillLayoutSubviews")
  }

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    // викликається коли view вже загружена з границями і ви хочете щось показати
    // він може викликатись багато разів якщо робити переходи між контролерами в такому випадку він не буде вигружений з памяті але view закриється і при переході назад знов відкриється
    // тут можна використовувати ресурсообємні операції як наприклад отримання даних або наприклад becomeFirstResponder щоб відразу вводити в потрібне поле ввод даних
    print("Second viewDidAppear")

  }

  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    // перед зявленням view на екрані
    // для точнішої настройки subview які потрібно зробити без анамації
    // можна міняти стиль status bar or view

    print("Second viewWillAppear")

  }

  override func viewDidDisappear(_ animated: Bool) {
    super.viewDidDisappear(animated)
    // удаляються непотрібні дані
    // ставиться на паузу плеєр
    // скидуюються значення і параметри

    print("Second viewDidDisappear ")
  }

  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    //коли view іде з екрану
    // скидує значення і параметри
    // відключає анімацію
    // тут забирають first responder
    // ставлять на паузу дії які виконуються
    // відміняють орієнтацію і стиль status bara
    // можна почистити дані
    // обнулити кеш

    print("Second viewWillDisappear")
  }

  deinit {
    print("Second deinit")
  }

  @IBAction func backAction(_ sender: UIButton) {
    dismiss(animated: true, completion: nil)
  }
}
