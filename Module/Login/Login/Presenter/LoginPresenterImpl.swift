//
//  LoginPresenterImpl.swift
//  Login
//
//  Created by Dwi Randy Herdinanto on 02/05/21.
//

import Foundation

class LoginPresenterImpl: LoginPresenter {

    var view: LoginView
    var interactor: LoginInteractor
    var router: LoginRouter

    init(view: LoginView, interactor: LoginInteractor, router: LoginRouter) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }

    func login(username: String, password: String) {
        self.interactor.postLoginData(username: username, password: password)
    }

}

extension LoginPresenterImpl: LoginInteractorOutput {
    func authenticationResult(isSuccess: Bool) {
        if isSuccess {
            self.router.navigateToHome(window: nil)
        } else {
            self.view.showError()
        }
    }
}