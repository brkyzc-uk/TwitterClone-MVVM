//
//  FeedController.swift
//  TwitterClone-MVVM
//
//  Created by Burak YAZICI on 14/06/2022.
//

import UIKit
import SDWebImage

class FeedController: UIViewController {
    
    // MARK: - Properties
    var user: User? {
        didSet {
           configureLeftBarButton()
        }
    }
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: - Helpers
    
    func configureUI() {
        view.backgroundColor = .white
        
        let imageView = UIImageView(image: UIImage(named: "twitter_logo_blue"))
        imageView.contentMode = .scaleAspectFit
        navigationItem.titleView = imageView
    
    }
    
    func configureLeftBarButton() {
        guard let user = user else { return }
        
        let profileImgeView = UIImageView()
        profileImgeView.setDimensions(width: 32, height: 32)
        profileImgeView.layer.cornerRadius = 32 / 2
        profileImgeView.layer.masksToBounds = true
        profileImgeView.sd_setImage(with: user.profileImageUrl, completed: nil)
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: profileImgeView)
    }
    
}
