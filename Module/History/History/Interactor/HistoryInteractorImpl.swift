//
//  HistoryInteractorProtocol.swift
//  History
//
//  Created by Dwi Randy Herdinanto on 01/05/21.
//

import Foundation
import Core

class HistoryInteractorImpl: HistoryInteractor {

    var interactorOutput: HistoryInteractorOutput?

    let invoiceNetworkManager: InvoiceNetworkManager

    init(networkManager: InvoiceNetworkManager) {
        self.invoiceNetworkManager = networkManager
    }

    func getHistory() {
        self.invoiceNetworkManager.getAllInvoice { (data, error) in
            var transactions: [TransactionEntity] = []

            data?.forEach({ (invoiceData) in
                transactions.append(TransactionEntity(name: invoiceData.name, type: invoiceData.type, imageUrl: "\(AppConstant.baseUrl)\(invoiceData.image)", amount: invoiceData.amount, notes: invoiceData.notes))

                self.interactorOutput?.loadedHistory(transaction: transactions)
            })
        }
    }
}
