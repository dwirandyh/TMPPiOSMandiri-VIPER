//
//  HIstoryRouter.swift
//  History
//
//  Created by Dwi Randy Herdinanto on 01/05/21.
//

import Foundation
import UIKit
import Core

public class HistoryRouterImpl {
    
    public static func navigateToModule(viewController: UIViewController) {
        let bundle = Bundle(identifier: "com.casestudy.History")
        let vc = HistoryViewController(nibName: "HistoryViewController", bundle: bundle)
        vc.modalPresentationStyle = .fullScreen

        let networkManager = NetworkManagerImpl()
        let router = HistoryRouterImpl()
        let interactor = HistoryInteractorImpl(networkManager: networkManager)
        let presenter = HistoryPresenterImpl(view: vc, interactor: interactor, router: router)

        interactor.interactorOutput = presenter
        vc.presenter = presenter

        viewController.present(vc, animated: true, completion: nil)
    }

}

extension HistoryRouterImpl: HistoryRouter {
    func dismissPage(viewController: UIViewController) {
        viewController.dismiss(animated: true, completion: nil)
    }
}
