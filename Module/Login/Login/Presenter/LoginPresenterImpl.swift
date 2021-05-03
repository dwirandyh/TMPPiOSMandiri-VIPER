//
//  LoginPresenterImpl.swift
//  Login
//
//  Created by Dwi Randy Herdinanto on 02/05/21.
//

import Foundation

class LoginPresenterImpl: LoginPresenter {

    let view: LoginView
    let interactor: LoginInteractor
    let router: LoginRouter

    init(view: LoginView, interactor: LoginInteractor, router: LoginRouter) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }

    func login(email: String, password: String) {
        self.interactor.postLoginData(email: email, password: password)
    }

}

extension LoginPresenterImpl: LoginInteractorOutput {
    func authenticationResult(isSuccess: Bool) {
        if isSuccess {
            self.router.navigateToHome()
        } else {
            self.view.showError()
        }
    }
}
