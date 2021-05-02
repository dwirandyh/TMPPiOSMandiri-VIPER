//
//  PresenterImpl.swift
//  History
//
//  Created by Dwi Randy Herdinanto on 01/05/21.
//

import Foundation
import UIKit

class HistoryPresenterImpl: HistoryPresenter {

    var interactor: HistoryInteractor
    var router: HistoryRouter

    init(interactor: HistoryInteractor, router: HistoryRouter) {
        self.interactor = interactor
        self.router = router
    }

    func dismiss(viewController: UIViewController) {
        self.router.dismissPage(viewController: viewController)
    }
}
