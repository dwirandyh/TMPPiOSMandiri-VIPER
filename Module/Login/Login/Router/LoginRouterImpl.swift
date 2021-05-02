//
//  LoginRouter.swift
//  Login
//
//  Created by Dwi Randy Herdinanto on 01/05/21.
//

import Foundation
import UIKit
import Home

public class LoginRouterImpl {

    public static func navigateToModule() {
        let bundle = Bundle(identifier: "com.casestudy.Login")
        let vc = LoginViewController(nibName: "LoginViewController", bundle: bundle)

        let router = LoginRouterImpl()
        let interactor = LoginInteractorImpl()
        let presenter = LoginPresenterImpl(view: vc, interactor: interactor, router: router)

        interactor.interactorOuput = presenter

        vc.presenter = presenter

        UIApplication.shared.windows.first?.rootViewController = vc
        UIApplication.shared.windows.first?.makeKeyAndVisible()
    }

}

extension LoginRouterImpl: LoginRouter {

    func navigateToHome(window: UIWindow?) {
        HomeRouterImpl.navigateToModule()
    }

}
