//
//  LoginViewController.swift
//  Login
//
//  Created by Dwi Randy Herdinanto on 01/05/21.
//

import UIKit
import Home
import Core

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!

    var presenter: LoginPresenter?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func loginAction(_ sender: Any) {
        let username: String = usernameText.text ?? ""
        let password: String = passwordText.text ?? ""

        self.presenter?.login(username: username, password: password)
    }
}

extension LoginViewController: LoginView {
    func showError() {
        let alert = UIAlertController(title: "Peringatan", message: "Username atau password anda salah, silahkan coba lagi", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
