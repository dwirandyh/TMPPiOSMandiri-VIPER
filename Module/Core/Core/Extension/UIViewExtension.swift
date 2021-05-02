//
//  UIViewExtension.swift
//  Core
//
//  Created by Dwi Randy Herdinanto on 01/05/21.
//

import Foundation
import UIKit

public extension UIView {

    @IBInspectable
    var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
}
