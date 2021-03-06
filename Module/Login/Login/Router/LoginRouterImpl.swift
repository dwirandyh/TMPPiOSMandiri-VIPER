//
//  LoginRouter.swift
//  Login
//
//  Created by Dwi Randy Herdinanto on 01/05/21.
//

import Foundation
import UIKit
import Core

public class LoginRouterImpl {

    public static func navigateToModule() {
        let bundle = Bundle(identifier: "com.casestudy.Login")
        let vc = LoginViewController(nibName: "LoginViewController", bundle: bundle)

        let networkManager = AuthNetworkManagerImpl()

        let router = LoginRouterImpl()
        let interactor = LoginInteractorImpl(networkManager: networkManager)
        let presenter = LoginPresenterImpl(view: vc, interactor: interactor, router: router)

        interactor.interactorOuput = presenter

        vc.presenter = presenter

        UIApplication.shared.windows.first?.rootViewController = vc
        UIApplication.shared.windows.first?.makeKeyAndVisible()
    }

}

extension LoginRouterImpl: LoginRouter {

    func navigateToHome() {
        NotificationCenter.default.post(name: Notification.Name("reloadRootView"), object: nil)
    }

}
