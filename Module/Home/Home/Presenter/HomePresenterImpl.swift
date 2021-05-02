//
//  HomePresenterImpl.swift
//  Home
//
//  Created by Dwi Randy Herdinanto on 02/05/21.
//

import Foundation
import UIKit
import Core

class HomePresenterImpl: HomePresenter {

    let view: HomeView
    let interactor: HomeInteractor
    let router: HomeRouter

    init(view: HomeView, interactor: HomeInteractor, router: HomeRouter) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
    
    func showHistory(viewController: UIViewController) {
        self.router.navigateToHistory(viewController: viewController)
    }

    func loadProfile() {
        self.interactor.getUserProfile()
    }

    func loadTransaction() {
        self.interactor.getTransaction()
    }

}

extension HomePresenterImpl: HomeInteractorOutput {
    func loadedUserProfileData(userProfile: UserProfileEntity) {
        self.view.showUserProfileData(userProfile: userProfile)
    }

    func loadedTransaction(transactions: [TransactionEntity]) {
        self.view.showTransactionData(transactions: transactions)
    }


}
