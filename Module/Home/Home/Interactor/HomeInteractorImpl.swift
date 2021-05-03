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
                let userProfile = UserProfileEntity(name: balance.name, balance: balance.balance, phoneNumber: balance.phone, imageUrl: "\(AppConstant.baseUrl)\(balance.image)")
                self.interactorOutput?.loadedUserProfileData(userProfile: userProfile)
            }
        }
    }

    func getTransaction() {
        self.networkManager.getThisWeekInvoice { (data, error) in
            var transactions: [TransactionEntity] = []

            data?.forEach({ (invoiceData) in
                transactions.append(TransactionEntity(name: invoiceData.name, type: invoiceData.type, imageUrl: "\(AppConstant.baseUrl)\(invoiceData.image)", amount: invoiceData.amount, notes: invoiceData.notes))

                self.interactorOutput?.loadedTransaction(transactions: transactions)
            })
        }
    }

}
