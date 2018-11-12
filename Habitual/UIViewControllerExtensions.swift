//
//  UIViewControllerExtensions.swift
//  Habitual
//
//  Created by Jacob Haff on 11/12/18.
//  Copyright © 2018 Jacob Haff. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    static func instantiate() -> Self {
    return self.init(nibName: String(describing: self), bundle: nil)
    }
}
