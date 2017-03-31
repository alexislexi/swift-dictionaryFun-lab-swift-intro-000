//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    
    
    var favoriteFlavorsOfIceCream : [String:String] = ["Joe" : "Peanut Butter and Chocolate",
                                                       "Tim" : "Natural Vanilla",
                                                       "Sophie" : "Mexican Chocolate",
                                                       "Deniz": "Natural Vanilla",
                                                       "Tom" : "Mexican Chocolate",
                                                       "Jim" : "Natural Vanilla" ,
                                                       "Susan" : "Cookies 'N' Cream"]
    
    
    // 2.
    
    
    func names(forFlavor flavor : String) -> [String] {
        var result : [String] = []
        
        for (index, person) in favoriteFlavorsOfIceCream {
            if flavor == person {
                result.append(index)
            }
        }
        return result
    }
    
    
    // 3.
    
    
    func count(forFlavor flavor: String) -> Int{
        var result : Int = 0
        
        for (index, person) in favoriteFlavorsOfIceCream{
            if flavor == person{
                result += 1
            }
        }
        return result
    }
    
    
    // 4.
   
    
    func flavor(forPerson person: String) -> String?{
        if person.isEmpty{
            return nil
        } else{
            return favoriteFlavorsOfIceCream[person]
        }
    }
    
    
    // 5.
   
    
    func replace(flavor: String, forPerson: String) -> Bool{
        if favoriteFlavorsOfIceCream[forPerson] != nil{
            favoriteFlavorsOfIceCream.updateValue(flavor, forKey: forPerson)
            return true
        } else {
            return false
        }
    }
    
    
    // 6.
    
    
    func remove(person:String) -> Bool {
        if favoriteFlavorsOfIceCream[person] != nil{
            favoriteFlavorsOfIceCream[person] = nil
            return true
        } else {
            return false
        }
    }
    
    
    // 7.
    
    
    func numberOfAttendees() -> Int {
        let people = favoriteFlavorsOfIceCream.count
        return people
    }
    
    
    // 8.
    
    
    func add(person:String, withFlavor flavor: String) -> Bool {
        if favoriteFlavorsOfIceCream[person] == nil {
            favoriteFlavorsOfIceCream[person] = flavor
            return true
        } else {
            return false
        }
    }
    
    
    // 9.
    
    
    func attendeeList() -> String {
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        var finalList: String = ""
        var count = 0
        
        for name in allNames {
            if let iceCream = favoriteFlavorsOfIceCream[name]{
                finalList += "\(name) likes \(iceCream)"
                count += 1
            }
            
            if count < allNames.count {
                finalList += "\n"
            }
        }
        return finalList
    }
    
    
    
    
    

}
