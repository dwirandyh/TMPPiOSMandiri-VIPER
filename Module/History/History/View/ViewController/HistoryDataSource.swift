//
//  HistoryDataSource.swift
//  History
//
//  Created by Dwi Randy Herdinanto on 01/05/21.
//

import Foundation
import UIKit

class HistoryDataSource: NSObject, UITableViewDataSource {

    var weekTransactions: [Int] = [0, 1]
    var monthTransaction: [Int] = [0, 1, 2, 3, 4]

    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else if section == 1 {
            return self.weekTransactions.count
        } else if section == 2 {
            return 1
        } else {
            return self.monthTransaction.count
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "HeaderCell", for: indexPath) as! HeaderCell
            cell.setTitle(title: "This Week")
            return cell
        } else if indexPath.section == 1 {
            return tableView.dequeueReusableCell(withIdentifier: "TransactionCell", for: indexPath)
        } else if indexPath.section == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "HeaderCell", for: indexPath) as! HeaderCell
            cell.setTitle(title: "This Month")
            return cell
        } else {
            return tableView.dequeueReusableCell(withIdentifier: "TransactionCell", for: indexPath)
        }
    }

    
}
