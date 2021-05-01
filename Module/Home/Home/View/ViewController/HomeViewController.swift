//
//  HomeViewController.swift
//  Home
//
//  Created by Dwi Randy Herdinanto on 01/05/21.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    var dataSource = HomeDataSource()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.setupTableView()
    }

    func setupTableView() {
        self.tableView.register(UINib(nibName: "DashboardCell", bundle: Bundle(identifier: "com.casestudy.Home")), forCellReuseIdentifier: "DashboardCell")
        self.tableView.register(UINib(nibName: "TransactionCell", bundle: Bundle(identifier: "com.casestudy.Core")), forCellReuseIdentifier: "TransactionCell")

        self.tableView.dataSource = self.dataSource
    }

}
