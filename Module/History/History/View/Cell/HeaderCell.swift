//
//  HeaderCell.swift
//  History
//
//  Created by Dwi Randy Herdinanto on 01/05/21.
//

import UIKit

class HeaderCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setTitle(title: String) {
        self.titleLabel.text = title
    }
}
