//
//  HomeInteractorOuput.swift
//  Home
//
//  Created by Dwi Randy Herdinanto on 02/05/21.
//

import Foundation
import Core

protocol HomeInteractorOutput {
    func loadedUserProfileData(userProfile: UserProfileEntity)
    func loadedTransaction(transactions: [TransactionEntity])
}
