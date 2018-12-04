//
//  ViewController.swift
//  Storin Dat Fire
//
//  Created by Kyle Lee on 12/4/17.
//  Copyright © 2017 Kilo Loco. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var users = [User]()
    override func viewDidLoad() {
        super.viewDidLoad()
        FIRFirestoreService.shared.read(from: .users, returning: User.self) { (users) in
            self.users = users
            self.tableView.reloadData()
        }
    }

    @IBAction func onAddTapped() {
        AlertService.addUser(in: self) { user in
            FIRFirestoreService.shared.create(for: user, in: .users)
        }
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        let user = users[indexPath.row]
        cell.textLabel?.text = user.name
        cell.detailTextLabel?.text = String(user.age)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let user = users[indexPath.row]
        
        AlertService.update(user, in: self) { updatedUser in
            FIRFirestoreService.shared.update(for: updatedUser, in: .users)
        }
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        guard editingStyle == .delete else { return }
        let user = users[indexPath.row]
        FIRFirestoreService.shared.delete(user, in: .users)
    }
}

