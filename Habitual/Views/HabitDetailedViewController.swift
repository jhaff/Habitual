//
//  HabitDetailedViewController.swift
//  Habitual
//
//  Created by Jacob Haff on 12/2/18.
//  Copyright © 2018 Jacob Haff. All rights reserved.
//

import UIKit

class HabitDetailedViewController: UIViewController {

    // MARK: - VARS
    
    var habit: Habit!
    var habitIndex: Int!
    
    //We need this one here too!
    private var persistance = PersistenceLayer()
    
    // MARK: - Outlets
    
    @IBOutlet weak var imageViewIcon: UIImageView!
    
    @IBOutlet weak var labelCurrentStreak: UILabel!
    
    @IBOutlet weak var labelTotalCompletions: UILabel!
    
    @IBOutlet weak var labelBestStreak: UILabel!
    
    @IBOutlet weak var labelStartingDate: UILabel!
    
    @IBOutlet weak var buttonAction: UIButton!
    // MARK: - LIFECYCLE
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateUI()
    }

    @IBAction func actionButtonPressed(_ sender: UIButton) {
        
        // Line 1
        habit = persistance.markHabitAsCompleted(habitIndex)
        
        // Line 2
        updateUI()
    }
    
    private func updateUI() {
        // Group 1
        title = habit.title
        imageViewIcon.image = habit.selectedImage.image
        labelCurrentStreak.text = "\(habit.currentStreak) days"
        labelTotalCompletions.text = String(habit.numberOfCompletions)
        labelBestStreak.text = String(habit.bestStreak)
        labelStartingDate.text = habit.dateCreated.stringValue
        
        // Group 2
        if habit.hasCompletedForToday {
            buttonAction.setTitle("Completed for Today!", for: .normal)
        } else {
            buttonAction.setTitle("Mark as Completed", for: .normal)
        }
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
