//
//  PersistenceLayer.swift
//  Habitual
//
//  Created by Jacob Haff on 11/26/18.
//  Copyright © 2018 Jacob Haff. All rights reserved.
//

import Foundation

struct PersistenceLayer {
    
    // MARK: - VARS
    
    // Line 1
    private(set) var habits: [Habit] = []
    
    // Line 2
    private static let userDefaultsHabitsKeyValue = "HABITS_ARRAY"
    
    private mutating func loadHabits() {
        
        // Line 2
        let userDefaults = UserDefaults.standard
        
        // Line 3
        guard
            let habitData = userDefaults.data(forKey: PersistenceLayer.userDefaultsHabitsKeyValue),
            let habits = try? JSONDecoder().decode([Habit].self, from: habitData) else {
                return
        }
        
        self.habits = habits
    }
    
    @discardableResult
    
    // Line 2
    mutating func createNewHabit(name: String, image: Habit.Images) -> Habit {
        
        //Line 3
        let newHabit = Habit(title: name, image: image)
        self.habits.insert(newHabit, at: 0) // Prepend the habits to the array
        self.saveHabits()
        
        return newHabit
    }
    
    //save
    private func saveHabits() {
        // Line 1
        guard let habitsData = try? JSONEncoder().encode(self.habits) else {
            fatalError("could not encode list of habits")
        }
        
        // Line 2
        let userDefaults = UserDefaults.standard
        userDefaults.set(habitsData, forKey: PersistenceLayer.userDefaultsHabitsKeyValue)
    }
    
    init() {
        // Line 3
        self.loadHabits()
    }
    
}
