//
//  AppRouter.swift
//  Core
//
//  Created by Dwi Randy Herdinanto on 19/05/21.
//

import Foundation
import UIKit

public class AppRouter {

    public static let shared: AppRouter = AppRouter()

    public var loginScene: (() -> ())? = nil

    public func navigateToLogin() {
        self.loginScene?()
    }

    public var homeScene: (() -> ())? = nil

    public func navigateToHome() {
        self.homeScene?()
    }

    public var historyScene: ((_ viewController: UIViewController) -> ())? = nil

    public func navigateToHistory(_ viewController: UIViewController) {
        self.historyScene?(viewController)
    }
}
