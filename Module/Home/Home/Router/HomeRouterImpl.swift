//
//  HomeRouter.swift
//  Home
//
//  Created by Dwi Randy Herdinanto on 01/05/21.
//

import Foundation
import UIKit
import History
import Core

public class HomeRouterImpl {

    public static func navigateToModule() {
        let bundle = Bundle(identifier: "com.casestudy.Home")
        let vc = HomeViewController(nibName: "HomeViewController", bundle: bundle)

        let networkManager = NetworkManagerImpl()

        let router = HomeRouterImpl()
        let interactor = HomeInteractorImpl(networkManager: networkManager)
        let presenter = HomePresenterImpl(view: vc, interactor: interactor, router: router)

        interactor.interactorOutput = presenter

        vc.presenter = presenter

        UIApplication.shared.windows.first?.rootViewController = vc
        UIApplication.shared.windows.first?.makeKeyAndVisible()
    }

}

extension HomeRouterImpl: HomeRouter {

    func navigateToHistory(viewController: UIViewController) {
        HistoryRouterImpl.navigateToModule(viewController: viewController)
    }

    func navigateToLogin() {
        NotificationCenter.default.post(name: Notification.Name("logout"), object: nil)
    }
}
