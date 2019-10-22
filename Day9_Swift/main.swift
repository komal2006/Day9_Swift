//
//  main.swift
//  Day9_Swift
//
//  Created by MacStudent on 2019-10-21.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")



do
{
    let f1=try Faculty(facultyId: 2, facultyName: "Komaldeep Kaur", Salary: 2000)
    print(f1.facultyName)
    try f1.setSalary(Salary: 300.00)
}
catch FacultyError.invalidEmployeeId(let facultyId)
{
    print("Invalid id:   \(facultyId)")
}
catch FacultyError.invalidEmployeeName(let facultyName)
{
    print("Invalid Name:   \(facultyName)")
}

    
catch FacultyError.invalidSalary
{
    print("Invalid Faculty Salary")
}
/*catch FacultyError.invalidSalaryWithMessage(message: String)
{
    print(" Invalid Salary:  \(Salary)")
}*/


