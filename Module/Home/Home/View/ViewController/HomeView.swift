//
//  HomeView.swift
//  Home
//
//  Created by Dwi Randy Herdinanto on 02/05/21.
//

import Foundation
import Core

protocol HomeView {
    func showUserProfileData(userProfile: UserProfileEntity)
    func showTransactionData(transactions: [TransactionEntity])
}
