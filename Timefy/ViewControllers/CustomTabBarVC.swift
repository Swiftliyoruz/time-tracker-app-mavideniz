//
//  CustomTabBarVC.swift
//  Timefy
//
//  Created by Doğancan Mavideniz on 6.09.2022.
//

import Foundation
import UIKit

class CustomTabBarVC: UITabBarController, UITabBarControllerDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        // Setting the UITabBarItem
        let tab1 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "OverviewVC")
        let tab1BarItem = UITabBarItem(title: "", image: UIImage(named: "iconTime"), selectedImage: UIImage(named: "iconTime"))
        tab1.tabBarItem = tab1BarItem
        tab1.tabBarItem.tag = 0
        let tab2 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "AddSceneVC")
        let tab2BarItem = UITabBarItem(title: "", image: UIImage(named: "plus"), selectedImage: UIImage(named: "plus"))
        tab2.tabBarItem = tab2BarItem
        tab2.tabBarItem.tag = 1
        let tab3 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "AnalysisVC")
        let tab3BarItem = UITabBarItem(title: "", image: UIImage(named: "pie-chart"), selectedImage: UIImage(named: "pie-chart-filled"))
        tab3.tabBarItem = tab3BarItem
        tab3.tabBarItem.tag = 2

        self.viewControllers = [tab1, tab2, tab3]
    }
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        if item.tag == 0 { // tab1(home)
            
            tabBar.items?[1].title = ""
        }
        if item.tag == 1 { // tab2(search)
            item.title = "search"
            tabBar.items?[0].title = ""
        }
        
    }
}


    

