//
//  PresenterImpl.swift
//  History
//
//  Created by Dwi Randy Herdinanto on 01/05/21.
//

import Foundation
import UIKit
import Core

class HistoryPresenterImpl: HistoryPresenter {

    let view: HistoryView
    let interactor: HistoryInteractor
    let router: HistoryRouter

    init(view: HistoryView, interactor: HistoryInteractor, router: HistoryRouter) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }

    func loadHistory() {
        self.interactor.getHistory()
    }

    func dismiss(viewController: UIViewController) {
        self.router.dismissPage(viewController: viewController)
    }
}

extension HistoryPresenterImpl: HistoryInteractorOutput {
    func loadedHistory(transaction: [TransactionEntity]) {
        self.view.showTransaction(transaction: transaction)
    }
}
