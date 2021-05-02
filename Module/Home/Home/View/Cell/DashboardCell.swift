//
//  ProfileCell.swift
//  Home
//
//  Created by Dwi Randy Herdinanto on 01/05/21.
//

import UIKit

class DashboardCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var balanceLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!

    var delegate: DashboardCellDelegate?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func showData(userProfile: UserProfileEntity) {
        self.nameLabel.text = userProfile.name
        self.balanceLabel.text = "Rp\(userProfile.balance)"
        self.phoneNumberLabel.text = userProfile.phoneNumber
    }

    @IBAction func showTransactionAction(_ sender: Any) {
        self.delegate?.showAllTransaction()
    }
}
