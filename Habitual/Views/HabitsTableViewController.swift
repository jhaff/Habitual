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
    
    var habits: [Habit] = [
        Habit(title: "Go to bed before 10p", image: Habit.Images.book),
        Habit(title: "Drink 8 Glasses of Water", image: Habit.Images.book),
        Habit(title: "Commit Today", image: Habit.Images.book),
        Habit(title: "Stand up every Hour", image: Habit.Images.book)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        setupNavBar()
        
        tableView.register(
            HabitTableViewCell.nib,
            forCellReuseIdentifier: HabitTableViewCell.identifier
        )

        // Do any additional setup after loading the view.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return habits.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: HabitTableViewCell.identifier,
            for: indexPath
            ) as! HabitTableViewCell
        
        let habit = persistance.habits[indexPath.row]
        cell.configure(habit)
        
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


extension HabitsTableViewController {
    
    func setupNavBar() {
        title = "Habitual"
        let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(pressAddHabit(_:)))
        navigationItem.rightBarButtonItem = addButton
    }
    
    @objc func pressAddHabit(_ sender: UIBarButtonItem) {
//        names.insert("Hello, World!", at: 0)
//        let topIndexPath = IndexPath(row: 0, section: 0)
//        tableView.insertRows(at: [topIndexPath], with: .automatic)
    }
}
