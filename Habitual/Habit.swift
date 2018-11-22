//
//  Habit.swift
//  Habitual
//
//  Created by Jacob Haff on 11/19/18.
//  Copyright © 2018 Jacob Haff. All rights reserved.
//

import Foundation
import UIKit

struct Habit {

    var title: String
    let dateCreated: Date
    var selectedImage: UIImage
    
    var currentStreak: Int
    var bestStreak: Int
    var lastCompletionDate: Date?
    var numberOfCompletions: Int
    
    var hasCompletedForToday: Bool {
        return lastCompletionDate?.isToday ?? false
    }
    
}
