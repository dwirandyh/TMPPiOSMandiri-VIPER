//
//  HIstoryViewController.swift
//  History
//
//  Created by Dwi Randy Herdinanto on 01/05/21.
//

import UIKit

class HistoryViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    var dataSource = HistoryDataSource()

    var presenter: HistoryPresenter?

    override func viewDidLoad() {
        super.viewDidLoad()

        self.setupTableView()
    }

    func setupTableView() {
        self.tableView.register(UINib(nibName: "HeaderCell", bundle: Bundle(identifier: "com.casestudy.History")), forCellReuseIdentifier: "HeaderCell")
        self.tableView.register(UINib(nibName: "TransactionCell", bundle: Bundle(identifier: "com.casestudy.Core")), forCellReuseIdentifier: "TransactionCell")

        self.tableView.dataSource = self.dataSource
    }

    @IBAction func backButtonAction(_ sender: Any) {
        self.presenter?.dismiss(viewController: self)
    }
}
