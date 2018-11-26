//
//  HabitTableViewCell.swift
//  Habitual
//
//  Created by Jacob Haff on 11/24/18.
//  Copyright © 2018 Jacob Haff. All rights reserved.
//

import UIKit

class HabitTableViewCell: UITableViewCell {

    @IBOutlet weak var imageViewIcon: UIImageView!
    
    @IBOutlet weak var labelHabitTitle: UILabel!
    
    @IBOutlet weak var labelStreaks: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
