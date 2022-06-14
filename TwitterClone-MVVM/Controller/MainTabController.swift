//
//  MainTabController.swift
//  TwitterClone-MVVM
//
//  Created by Burak YAZICI on 14/06/2022.
//

import UIKit

class MainTabController: UITabBarController {
    
    // MARK: - Properties
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        configureViewControllers()
    }
    
    // MARK: - Helpers
    
    func configureViewControllers() {
        
        let feed = FeedController()
        feed.tabBarItem.image = UIImage(named: "home_unselected")
        
        let explore = ExploreController()
        explore.tabBarItem.image = UIImage(named: "search_unselected")
        
        let notifications = NotificationsController()
        notifications.tabBarItem.image = UIImage(named: "like_unselected")
        
        let conversations = ConversationsController()
        notifications.tabBarItem.image = UIImage(named: "mail")
        
        viewControllers = [feed, explore, notifications, conversations]
    }

}
