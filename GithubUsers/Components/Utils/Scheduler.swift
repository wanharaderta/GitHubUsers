//
//  Scheduler.swift
//  GithubUsers
//
//  Created by Wanhar on 13/01/23.
//

import Foundation
import Combine

final class Scheduler {

    static var backgroundWorkScheduler: OperationQueue = {
        let operationQueue = OperationQueue()
        operationQueue.maxConcurrentOperationCount = 5
        operationQueue.qualityOfService = QualityOfService.userInitiated
        return operationQueue
    }()

    static let dispatchQueue = DispatchQueue.main
    static let mainScheduler = RunLoop.main
}
