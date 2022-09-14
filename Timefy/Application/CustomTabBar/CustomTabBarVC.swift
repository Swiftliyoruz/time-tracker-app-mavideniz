//
//  CustomTabBarVC.swift
//  Timefy
//
//  Created by Doğancan Mavideniz on 6.09.2022.
//

import Foundation
import UIKit

class CustomTabBarVC: UIViewController {

    @IBOutlet weak var tabBarView: UIView!
    @IBOutlet weak var contentView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tabBar()
    }

    func tabBar() {
        tabBarView.layer.cornerRadius = tabBarView.frame.size.height / 2
        tabBarView.clipsToBounds = true
    }

    @IBAction func allButtonAction(_ sender: Any) {
        let tag = (sender as AnyObject).tag

        if tag == 0 {
            guard let home = self.storyboard?.instantiateViewController(identifier: "HomeVC") as? HomeVC else { return }
            contentView.addSubview(home.view)
            home.didMove(toParent: self)

        } else if tag == 1 {
            guard let search = self.storyboard?.instantiateViewController(identifier: "AddTaskVC") as? AddTaskVC else { return }
            contentView.addSubview(search.view)
            search.didMove(toParent: self)

        } else if tag == 2 {
            guard let camera = self.storyboard?.instantiateViewController(identifier: "AnalyzeVC") as? AnalyzeVC else { return }
            contentView.addSubview(camera.view)
            camera.didMove(toParent: self)

        }
    }
}
