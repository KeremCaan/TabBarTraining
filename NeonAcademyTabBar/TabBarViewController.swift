//
//  TabBarViewController.swift
//  NeonAcademyTabBar
//
//  Created by Kerem Caan on 2.08.2023.
//

import UIKit

class TabBarViewController: UITabBarController {

    let tb1 = UINavigationController(rootViewController: ViewController())
    let tb2 = UINavigationController(rootViewController: SecondViewController())
    let tb3 = UINavigationController(rootViewController: ThirdViewController())
    let tb4 = UINavigationController(rootViewController: FourthViewController())

    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    


    func configureUI() {
        
        
        tb1.tabBarItem.image = UIImage(systemName: "heart.fill")
        tb1.title = "Favorites"
        tb2.tabBarItem.image = UIImage(systemName: "folder.fill")
        tb2.title = "Documents"
        tb3.tabBarItem.image = UIImage(systemName: "star")
        tb3.title = "Trending"
        tb4.tabBarItem.image = UIImage(systemName: "trash")
        tb4.title = "Trash"
        
        tabBar.backgroundColor = .white
        tabBar.tintColor = .purple
        setViewControllers([tb1, tb2, tb3, tb4], animated: true)
    }

}
