//
//  MainViewController.swift
//  Habitual
//
//  Created by Jacob Haff on 11/12/18.
//  Copyright © 2018 Jacob Haff. All rights reserved.
//

import UIKit

class HabitsTableViewController: UITableViewController {
    var names: [String] = ["Alan", "Adriana", "Adam", "Anne", "Mitchell", "Dani"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: UITableViewCell
        if let dequeueCell = tableView.dequeueReusableCell(withIdentifier: "cell") {
            cell = dequeueCell
        } else {
            cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        }
        let name = names[indexPath.row]
        cell.textLabel?.text = name
        
        return cell
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
