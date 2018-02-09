//
//  enum.swift
//  mad3004_day10
//
//  Created by MacStudent on 2018-02-09.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

enum limitIncreaseError: Error{
    case insufficientBalance(balanceNeeded: Double)
    case noSavingsAccount
    case ineligible
}

struct requestFromaccount{
    var type: String
    var balance: Double
    var reqStatus: String
}

