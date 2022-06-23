//
//  RegistrationController.swift
//  TwitterClone-MVVM
//
//  Created by Burak YAZICI on 16/06/2022.
//

import Foundation
import UIKit


class RegistrationController: UIViewController {
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: - Selectors
    
    // MARK: - Helpers
    
    func configureUI() {
        view.backgroundColor = .twitterBlue
    }
}
