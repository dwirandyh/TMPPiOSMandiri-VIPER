//
//  TransactionCell.swift
//  Core
//
//  Created by Dwi Randy Herdinanto on 01/05/21.
//

import UIKit

public class TransactionCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!

    public override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    public func showData(transaction: TransactionEntity) {
        self.nameLabel.text = transaction.name
        self.typeLabel.text = transaction.type
        self.amountLabel.text = "Rp\(transaction.amount)"
    }
    
}
