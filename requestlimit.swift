//
//  requestlimit.swift
//  mad3004_day10
//
//  Created by MacStudent on 2018-02-09.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class requestLimitIncrease{
var requestReceived = [
"S1100": requestFromaccount(type: "Saving", balance: 1234.42, reqStatus: "In Process"),
"S1200" : requestFromaccount(type: "Saving", balance: 47562.42, reqStatus: "In Process"),
"S1300": requestFromaccount(type: "Chequing", balance: 1234.42, reqStatus: "In Process"),
"S1400": requestFromaccount(type: "Saving", balance: 5400, reqStatus: "Approved")
    ]

func increaseLimit(account acno: String) throws {
    guard let reqAcc = requestReceived[acno] else{
        throw limitIncreaseError.ineligible
    }
    guard reqAcc.type == "Saving" else{
    throw limitIncreaseError.noSavingsAccount
}
    guard reqAcc.balance >= 5000 else{
        throw limitIncreaseError.insufficientBalance(balanceNeeded: 5000 - reqAcc.balance)
}
   //guard reqAcc.reqStatus = "in process" else{
     //   throw limitIncreaseError.insufficientBalance(balanceNeeded: )
    

var approvedRequest = reqAcc
approvedRequest.reqStatus = "Approved"
print("your request is approved")
}
}
