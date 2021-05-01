//
//  HomeDataSource.swift
//  Home
//
//  Created by Dwi Randy Herdinanto on 01/05/21.
//

import Foundation
import UIKit

class HomeDataSource: NSObject, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else {
            return 5
        }
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            return tableView.dequeueReusableCell(withIdentifier: "DashboardCell", for: indexPath)
        } else {
            return tableView.dequeueReusableCell(withIdentifier: "TransactionCell", for: indexPath)
        }
    }

}
