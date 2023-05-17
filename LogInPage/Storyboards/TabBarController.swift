//
//  TabBarViewController.swift
//  LogInPage
//
//  Created by Марина Иванова on 14.05.2023.
//

import UIKit

final class TabBarController: UITabBarController {
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        
        tabBar.standardAppearance = tabBarAppearance
        tabBar.scrollEdgeAppearance = tabBarAppearance
        
        transferData()
    }
    
    
    private func transferData() {
        guard let viewControllers else { return }
        
        viewControllers.forEach {
            if let welcomeVC = $0 as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = $0 as? UINavigationController {
                let userInfoVC = navigationVC.topViewController
                guard let userInfoVC = userInfoVC as? UserInfoViewController else {
                    return
                }
                userInfoVC.user = user
            }
        }
    }
}

