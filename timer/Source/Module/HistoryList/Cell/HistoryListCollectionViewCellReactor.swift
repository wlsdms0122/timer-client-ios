//
//  HistoryListCollectionViewCellReactor.swift
//  timer
//
//  Created by JSilver on 2019/10/13.
//  Copyright © 2019 Jeong Jin Eun. All rights reserved.
//

import RxSwift
import ReactorKit

class HistoryListCollectionViewCellReactor: Reactor {
    enum Action {
        
    }
    
    enum Mutation {
        
    }
    
    struct State {
        /// All time of the time set
        var time: TimeInterval
        
        /// The title of the time set
        var title: String
        
        /// Started date of the time set
        var startedDate: Date
    }
    
    // MARK: - properties
    var initialState: State
    var history: History
    
    // MARK: - constructor
    init?(history: History) {
        guard let info = history.info, let startDate = history.startDate else { return nil }
        self.history = history
        initialState = State(time: info.runningTime,
                             title: info.title,
                             startedDate: startDate)
    }
    
    deinit {
        Logger.verbose()
    }
}
