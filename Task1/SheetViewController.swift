//
//  SheetViewController.swift
//  Task1
//
//  Created by Manvendu Pathak on 21/03/24.
//

import Foundation
import UIKit

class SheetViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.layer.cornerRadius = 16
        view.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        view.clipsToBounds = true
    }
    
    
    
}
