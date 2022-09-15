//
//  HomeViewController.swift
//  Timefy
//
//  Created by Doğancan Mavideniz on 10.09.2022.
//

import UIKit

class HomeVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet private weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .appWhite
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.registerTableViewCells()
    }

    private func registerTableViewCells() {
        let textFieldCell = UINib(nibName: "CustomTableViewCell",
            bundle: nil)
        self.tableView.register(textFieldCell,
            forCellReuseIdentifier: "CustomTableViewCell")
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell") as? CustomTableViewCell {
            return cell
        }

        return UITableViewCell()
    }
}
