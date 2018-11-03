//
//  Task+CoreDataClass.swift
//  ToDoList
//
//  Created by Stevens, Colin (MU-Student) on 11/2/18.
//  Copyright © 2018 Colin Stevens. All rights reserved.
//
//

import UIKit
import CoreData

@objc(Task)
public class Task: NSManagedObject {
    convenience init?(title: String?, priority: String?, details: String?) {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        guard let managedContext = appDelegate?.persistentContainer.viewContext else {
            print("Error: Could not get app delegate context.")
            return nil
        }
        
        self.init(entity: Task.entity(), insertInto: managedContext)
        self.title = title
        self.priority = priority
        self.details = details
        
    }
}
