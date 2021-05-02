//
//  HomeInteractorImpl.swift
//  Home
//
//  Created by Dwi Randy Herdinanto on 02/05/21.
//

import Foundation
import Core

class HomeInteractorImpl: HomeInteractor {

    var interactorOutput: HomeInteractorOutput?

    let networkManager: NetworkManager

    init(networkManager: NetworkManager) {
        self.networkManager = networkManager
    }

    func getUserProfile() {
        self.networkManager.getBalance { (data, error) in
            if let balance = data {
                let userProfile = UserProfileEntity(name: balance.name, balance: balance.balance, phoneNumber: balance.phone, imageUrl: "http://3.84.177.160:8000\(balance.image)")
                self.interactorOutput?.loadedUserProfileData(userProfile: userProfile)
            }
        }
    }

    func getTransaction() {
        self.networkManager.getTodayInvoice { (data, error) in
            var transactions: [TransactionEntity] = []

            data?.forEach({ (invoiceData) in
                transactions.append(TransactionEntity(name: invoiceData.name, type: invoiceData.type, imageUrl: "http://3.84.177.160:8000\(invoiceData.image)", amount: invoiceData.amount, notes: invoiceData.notes))

                self.interactorOutput?.loadedTransaction(transactions: transactions)
            })
        }
    }

}
