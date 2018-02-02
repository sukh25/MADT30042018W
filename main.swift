//
//  main.swift
//  madt
//
//  Created by MacStudent on 2018-02-02.
//

import Foundation

print("Hello, World!")
class Employee{
    var empID: Int?
    var empName: String?
    var basicPay: Double?
    
    //initializers
    init(){
        self.empID=0
        self.empName=""
        self.basicPay=0.0
    }
    //parameterized initializer
    init(ID: Int, nm: String, pay: Double){
        self.empID = ID
        self.empName = nm
        self.basicPay = pay
    }
    
    func display(){
        print("Employee ID : ",self.empID!)
        print("Employee Name : ",self.empName!)
        print("basic Pay : ",self.basicPay!)
    }
    
    //deinitializer
    deinit{
        print("Employee object deinitialized")
    }
}

var emp1 = Employee()
emp1.empID = 101
emp1.empName = "Sukhman "
emp1.basicPay = 5000
//emp1.display()

var emp3 = Employee()
//emp3.display()

var emp4 = Employee(ID: 104, nm: "Navneet", pay: 3409.89)
//emp4.display()

//inheriting from Employee class
class PermanentEmployee : Employee{
    var vacationWeeks : Int?
    
    //default initializer
    override init(){
        super.init()
        self.vacationWeeks = 0
    }
    
    //parametrized initializer of subclass
    init(eID: Int, eNM: String, ePay: Double, weeks: Int){
        super.init(ID: eID, nm: eNM, pay: ePay)
        self.vacationWeeks = weeks
    }
    
    override func display() {
        super.display()
        print("Vacation Weeks : ",vacationWeeks!)
    }
}

var obj2 = PermanentEmployee()
obj2.empID = 102
obj2.empName = "Tuan"
obj2.basicPay = 3000
obj2.vacationWeeks = 10
//obj2.display()

var obj5 = PermanentEmployee()
//obj5.display()

var obj6 = PermanentEmployee(eID: 106, eNM: "Navjot", ePay: 1320.77, weeks: 1)
//obj6.display()

class Payroll : PermanentEmployee{
    var netPay: Double{
        get{
            let vw = self.vacationWeeks!
            if vw > 5{
                return self.basicPay! - 100
            }
            else{
                return self.basicPay!
            }
        }
    }
    
    override init(){
        super.init()
        //self.netPay = 0
    }
    
    override init(eID: Int, eNM: String, ePay: Double, weeks: Int){
        super.init(eID: eID, eNM: eNM, ePay: ePay, weeks: weeks)
        //self.netPay=0
    }
    
    override func display() {
        super.display()
        //self.calculate()
        print("netPay : ",self.netPay)
    }
    
    /*
     func calculate() {
     var vw = self.vacationWeeks!
     if vw > 5{
     self.netPay! = self.basicPay! - 100
     }
     else{
     self.netPay! = self.basicPay!
     }
     }
     */
    
}

var obj7 = Payroll(eID: 107, eNM: "Prabh", ePay: 2456.23, weeks: 6)
//obj7.display()


//manipulate object array[]
var janPayroll = [Payroll]()
let noOfEmployees = 2

for i in 0..<2{
    janPayroll.append(Payroll(eID: 107, eNM: "JK", ePay: 5555.56, weeks: 7))
    janPayroll[i].display()
}

