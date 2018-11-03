//
//  Task+CoreDataProperties.swift
//  ToDoList
//
//  Created by Stevens, Colin (MU-Student) on 11/2/18.
//  Copyright © 2018 Colin Stevens. All rights reserved.
//
//

import Foundation
import CoreData


extension Task {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Task> {
        return NSFetchRequest<Task>(entityName: "Task")
    }

    @NSManaged public var details: String?
    @NSManaged public var priority: String?
    @NSManaged public var title: String?

}
