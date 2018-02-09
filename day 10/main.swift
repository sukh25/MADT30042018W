//
//  main.swift
//  mad3004_day10
//
//  Created by MacStudent on 2018-02-09.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")
//throw keyword

//throw limitIncreaseError.ineligible

//var obj1 = requestLimitIncrease()
//try obj1.increaseLimit(account: "S11000")

//handling errors

var processRequest = requestLimitIncrease()


do{
    try processRequest.increaseLimit(account: "S1100")
}catch is limitIncreaseError{
    print("something wrong with your account")
}
/*
    print("you don't have sufficient balance")
}catch limitIncreaseError.ineligible{
    print("you don't have acc with us")
}catch limitIncreaseError.noSavingsAccount{
    print("limit increases is only available to savings acc")
}catch {
    print("unexpected error.")
}
*/

