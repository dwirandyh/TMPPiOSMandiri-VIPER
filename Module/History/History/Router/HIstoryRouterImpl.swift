//
//  HIstoryRouter.swift
//  History
//
//  Created by Dwi Randy Herdinanto on 01/05/21.
//

import Foundation
import UIKit

public class HistoryRouterImpl {
    
    public static func navigateToModule(viewController: UIViewController) {
        let bundle = Bundle(identifier: "com.casestudy.History")
        let vc = HistoryViewController(nibName: "HistoryViewController", bundle: bundle)
        vc.modalPresentationStyle = .fullScreen
        vc.presenter = HistoryPresenterImpl(interactor: HistoryInteractorImpl(), router: HistoryRouterImpl())

        viewController.present(vc, animated: true, completion: nil)
    }

}

extension HistoryRouterImpl: HistoryRouter {
    func dismissPage(viewController: UIViewController) {
        viewController.dismiss(animated: true, completion: nil)
    }
}
