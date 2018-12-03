//
//  ConfirmHabitViewController.swift
//  Habitual
//
//  Created by Jacob Haff on 12/2/18.
//  Copyright © 2018 Jacob Haff. All rights reserved.
//

import UIKit

class ConfirmHabitViewController: UIViewController {

    var habitImage: Habit.Images!
    
    @IBOutlet weak var habitNameInputField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        updateUI()
    }
    @IBAction func createHabitButtonPressed(_ sender: UIButton) {
        var persistenceLayer = PersistenceLayer()
        guard let habitText = habitNameInputField.text else { return }
        persistenceLayer.createNewHabit(name: habitText, image: habitImage)
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    private func updateUI() {
        title = "New Habit"
        imageView.image = habitImage.image
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
