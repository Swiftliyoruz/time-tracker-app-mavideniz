//
//  HomeViewController.swift
//  Timefy
//
//  Created by Doğancan Mavideniz on 10.09.2022.
//

import UIKit

class HomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let rect = CGRect(x: 100, y: 100, width: 120, height: 240)
        let newView = CurrentTaskComponent(frame: rect)
        newView.backgroundColor = .black
        self.view.addSubview(newView)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
