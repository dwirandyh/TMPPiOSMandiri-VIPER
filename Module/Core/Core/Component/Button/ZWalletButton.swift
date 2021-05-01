//
//  ZWalletButton.swift
//  Core
//
//  Created by Dwi Randy Herdinanto on 01/05/21.
//

import Foundation
import UIKit

@IBDesignable
class ZWalletButton: UIButton {

    override func awakeFromNib() {
        self.setupView()
    }

    // live changes on XIB
    override func prepareForInterfaceBuilder() {
        self.setupView()
    }

    func setupView() {
        self.backgroundColor = #colorLiteral(red: 0.3868519962, green: 0.4753198624, blue: 0.9561576247, alpha: 1)
        self.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        self.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        self.layer.cornerRadius = 12
    }
}
