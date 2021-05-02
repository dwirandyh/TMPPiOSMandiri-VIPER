//
//  Presenter.swift
//  History
//
//  Created by Dwi Randy Herdinanto on 01/05/21.
//

import Foundation
import UIKit

protocol HistoryPresenter {
    func loadHistory()
    func dismiss(viewController: UIViewController)
}
