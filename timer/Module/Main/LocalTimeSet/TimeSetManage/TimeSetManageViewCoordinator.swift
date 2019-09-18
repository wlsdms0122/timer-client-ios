//
//  TimeSetManageViewCoordinator.swift
//  timer
//
//  Created by JSilver on 10/09/2019.
//  Copyright © 2019 Jeong Jin Eun. All rights reserved.
//

import UIKit

class TimeSetManageViewCoordinator: CoordinatorProtocol {
    // MARK: - route enumeration
    enum TimeSetManageRoute {
        case empty
    }
    
    // MARK: - properties
    weak var viewController: TimeSetManageViewController!
    let provider: ServiceProviderProtocol
    
    // MARK: - constructor
    required init(provider: ServiceProviderProtocol) {
        self.provider = provider
    }
    
    // MARK: - presentation
    func present(for route: TimeSetManageRoute) -> UIViewController? {
        return get(for: route)
    }
    
    func get(for route: TimeSetManageRoute) -> UIViewController? {
        return nil
    }
}