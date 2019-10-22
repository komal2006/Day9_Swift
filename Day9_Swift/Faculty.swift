//
//  Faculty.swift
//  Day9_Swift
//
//  Created by MacStudent on 2019-10-21.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
enum FacultyError: Error
{
   
    case invalidSalaryWithMessage(message: String)
    case invalidSalary(Salary:Double)
    case invalidEmployeeId(facultyId:Int)
    case invalidEmployeeName(facultyName:String)
}


class Faculty
{
    var facultyId: Int
    var facultyName: String
    var Salary: Double
    init(facultyId:Int, facultyName: String, Salary:Double)throws
    {
        if facultyId <= 0
        {
            throw FacultyError.invalidEmployeeId(facultyId: facultyId)
        }
        self.facultyId=facultyId
        if facultyName.count<10
        {
            throw FacultyError.invalidEmployeeName(facultyName: facultyName)
        }
        self.facultyName = facultyName
        if Salary<1000
        {
            throw FacultyError.invalidSalary(Salary: Salary)
        }
        self.Salary=Salary
}
    
    func setSalary(Salary: Double) throws
    {
        if Salary<1000
        {
            throw FacultyError.invalidSalaryWithMessage(message: "Invalid Salary :  \(Salary) < 1000")
        }
        self.Salary=Salary
    }
    
    func setFacultyName(name: String)
    {
        defer{
            print("Defer - 1")
        }
         print("******* Start *********")
        do
        {
            if name.count < 10
            {
                 throw FacultyError.invalidEmployeeName(facultyName: name)
            }
            self.facultyName = name
        }catch FacultyError.invalidEmployeeName(let facultyName)
        {
            print("Invalid Faculty Name : \(facultyName)")
        }catch
        {
            print(error.localizedDescription)
        }
        print("******* End *********")
        defer{
            print("Defer - 3")
        }
    }
        
    
}
