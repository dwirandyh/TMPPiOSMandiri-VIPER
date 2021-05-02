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

    func getUserProfile() {
        let userProfile = UserProfileEntity(name: "John Doe", balance: 1500000, phoneNumber: "+628999083243")
        self.interactorOutput?.loadedUserProfileData(userProfile: userProfile)
    }

    func getTransaction() {
        let transactions: [TransactionEntity] = [
            TransactionEntity(name: "Samuel", type: "Transafer", imageUrl: "", amount: 55000),
            TransactionEntity(name: "Netflix", type: "Subscription", imageUrl: "", amount: 49000)
        ]
        self.interactorOutput?.loadedTransaction(transactions: transactions)
    }


}
