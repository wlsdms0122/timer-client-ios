//
//  TimerSetViewController.swift
//  timerset-ios
//
//  Created by Jeong Jin Eun on 09/04/2019.
//  Copyright © 2019 Jeong Jin Eun. All rights reserved.
//

import RxSwift
import RxCocoa
import ReactorKit

class TimerSetViewController: BaseViewController, View {
    // MARK: view properties
    private var timerSetView: TimerSetView { return self.view as! TimerSetView }
    
    // MARK: properties
    var coordinator: TimerSetViewCoordinator!
    
    // MARK: ### lifecycle ###
    override func loadView() {
        self.view = IntroView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: ### reactor bind ###
    func bind(reactor: TimerSetViewReactor) {
        // MARK: action
        reactor.action.onNext(.viewDidLoad)
        
        // MARK: state
    }
    
    deinit {
        Logger.verbose("")
    }
}
