//
//  MainTabBarViewController.swift
//  TabBarSampleVC
//
//  Created by subta90 on 2019/01/06.
//  Copyright © 2019 subta90. All rights reserved.
//

import UIKit

internal enum TabBarCountType {
    case Three
    case Five
}

private enum TabBarItemTag: Int {
    case First = 0
    case Second = 1
    case Third = 2
    case Fourth = 3
    case Fifth = 4
}

class MainTabBarViewController: UITabBarController {
    
    var segueType: TabBarCountType = .Three
    
    @IBOutlet weak var variableTabBar: UITabBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var viewControllers: [UIViewController] = []
        
        let firstViewController = FirstViewController()
        firstViewController.tabBarItem = UITabBarItem(title: "first", image: nil, tag: TabBarItemTag.First.rawValue)
        viewControllers.append(firstViewController)
        
        let secondViewController = SecondViewController()
        secondViewController.tabBarItem = UITabBarItem(title: "second", image: nil, tag: TabBarItemTag.Second.rawValue)
        viewControllers.append(secondViewController)
        
        let thirdViewController = ThirdViewController()
        thirdViewController.tabBarItem = UITabBarItem(title: "third", image: nil, tag: TabBarItemTag.Third.rawValue)
        viewControllers.append(thirdViewController)
        
        if segueType == .Five {
            let fourthViewController = FourthViewController()
            fourthViewController.tabBarItem = UITabBarItem(title: "fourth", image: nil, tag: TabBarItemTag.Fourth.rawValue)
            viewControllers.append(fourthViewController)
            
            let fifthViewController = FifthViewController()
            fifthViewController.tabBarItem = UITabBarItem(title: "fifth", image: nil, tag: TabBarItemTag.Fifth.rawValue)
            viewControllers.append(fifthViewController)
        }
        
        setViewControllers(viewControllers, animated: false)
    }
}
