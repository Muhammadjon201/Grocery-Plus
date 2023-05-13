//
//  TabbarViewController.swift
//  Grocery Plus
//
//  Created by ericzero on 5/14/23.
//

import UIKit

class TabbarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupTabBarPreferences()
    }
    
    func setupTabBarPreferences(){
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let img1 = UIImage(named: "home.selected")?.withRenderingMode(.alwaysOriginal)
        vc1.tabBarItem.image = UIImage(named: "home")
        vc1.tabBarItem.selectedImage = img1
        
        let vc2 = UINavigationController(rootViewController: CategoryViewController())
        let img2 = UIImage(named: "category.selected")?.withRenderingMode(.alwaysOriginal)
        vc2.tabBarItem.image = UIImage(named: "category")
        vc2.tabBarItem.selectedImage = img2
        
        let vc3 = UINavigationController(rootViewController: ShopViewController())
        let img3 = UIImage(named: "bag.selected")?.withRenderingMode(.alwaysOriginal)
        vc3.tabBarItem.image = UIImage(named: "bag")
        vc3.tabBarItem.selectedImage = img3
        
        let vc4 = UINavigationController(rootViewController: MoreViewController())
        let img4 = UIImage(named: "more.selected")?.withRenderingMode(.alwaysOriginal)
        vc4.tabBarItem.image = UIImage(named: "more")
        vc4.tabBarItem.selectedImage = img4
        
        setViewControllers([vc1, vc2, vc3, vc4], animated: true)
    }
   
    
}
