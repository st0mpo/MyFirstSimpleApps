//
//  Model.swift
//  ToDOList
//
//  Created by Александр on 27/03/2019.
//  Copyright © 2019 Aleksandr Istomin. All rights reserved.
//

import Foundation

var toDoItems: [[String: Any]] {
    set {
        UserDefaults.standard.set(newValue, forKey: "ToDODataKey")
        UserDefaults.standard.synchronize()
    }
    
    get {
        if let array = UserDefaults.standard.array(forKey: "ToDODataKey") as? [[String: Any]]  {
            return array
        } else {
            return []
        }
    }
}

func addItem(nameItem: String, isCompleted: Bool = false) {
    toDoItems.append(["Name": nameItem, "isCompleted": false])
}

func removeItem(at index: Int) {
    toDoItems.remove(at: index)
}

func moveItem(fromIndex: Int, toIndex: Int) {
    let from = toDoItems[fromIndex]
    toDoItems.remove(at: fromIndex)
    toDoItems.insert(from, at: toIndex)
}

func changeState(at item: Int) -> Bool {
    toDoItems[item]["isCompleted"] = !(toDoItems[item]["isCompleted"] as! Bool)
    return toDoItems[item]["isCompleted"] as! Bool
}
