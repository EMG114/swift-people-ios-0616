//
//  Person.swift
//  swift-people
//
//  Created by Erica on 7/14/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


class Person {
    
    private(set) var name: String
    private(set) var ageInYears: Int?
    private(set) var skills: Set<String>
    
    var qualifiedTutor: Bool {
        return (skills.count >= 4)
    }
    
   
    
    init(name: String, ageInYears: Int?) {
        self.name = name
        skills = Set<String>()
        
        if (ageInYears != nil) {
            self.ageInYears = ageInYears
        }
    }
    
    convenience init(name: String) {
        self.init(name: name, ageInYears: nil)
    }
    
    convenience init() {
        self.init(name: "John Doe", ageInYears: nil)
    }
    
   
    
    func celebrateBirthday() -> String {
        let birthday: String
        
        if let age = ageInYears {
            ageInYears = age + 1
            birthday = "Happy \(age + 1)\(age.ordinal()) birthday, \(name)!!!"
        } else {
            birthday = "Happy birthday, \(name)!!!"
        }
        
        return birthday.uppercaseString
    }
    
    func learnSkillBash() {
        skills.insert("bash")
    }
    
    func learnSkillXcode() {
        skills.insert("Xcode")
    }
    
    func learnSkillObjectiveC() {
        skills.insert("Objective-C")
    }
    
    func learnSkillSwift() {
        skills.insert("Swift")
    }
    
    func learnSkillInterfaceBuilder() {
        skills.insert("Interface Builder")
    }
}