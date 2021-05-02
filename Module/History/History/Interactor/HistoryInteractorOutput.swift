//
//  HistoryInteractorOutput.swift
//  History
//
//  Created by Dwi Randy Herdinanto on 02/05/21.
//

import Foundation
import Core

protocol HistoryInteractorOutput {
    func loadedHistory(transaction: [TransactionEntity])
}
