//
//  IntroCoordinator.swift
//  timer
//
//  Created by Jeong Jin Eun on 09/04/2019.
//  Copyright © 2019 Jeong Jin Eun. All rights reserved.
//

/// Route from intro view
class IntroViewCoordinator: CoordinatorProtocol {
     // MARK: route enumeration
    enum IntroRoute {
        case main
    }
    
    // MARK: properties
    weak var rootViewController: IntroViewController!
    let provider: ServiceProviderProtocol
    
    required init(provider: ServiceProviderProtocol, rootViewController: IntroViewController) {
        self.provider = provider
        self.rootViewController = rootViewController
    }
    
    func present(for route: IntroRoute) {
        switch route {
        case .main:
            let viewController = MainViewController()
            let coordinator = MainViewCoordinator(provider: provider, rootViewController: viewController)
            
            // DI
            viewController.coordinator = coordinator
            
            // set tab bar view controller initial index
            viewController.selectedIndex = MainViewController.TabType.Productivity.rawValue
            
            // present view
            rootViewController.navigationController?.viewControllers = [viewController]
        }
    }
}
