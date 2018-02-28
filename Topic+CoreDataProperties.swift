//
//  Topic+CoreDataProperties.swift
//  Monica
//
//  Created by Иннокентий Константинов on 28.02.2018.
//  Copyright © 2018 Вячеслав. All rights reserved.
//
//

import Foundation
import CoreData


extension Topic {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Topic> {
        return NSFetchRequest<Topic>(entityName: "Topic")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var path: URL?
    @NSManaged public var is_bookmark: Bool
    @NSManaged public var documents: NSSet?

}

// MARK: Generated accessors for documents
extension Topic {

    @objc(addDocumentsObject:)
    @NSManaged public func addToDocuments(_ value: Document)

    @objc(removeDocumentsObject:)
    @NSManaged public func removeFromDocuments(_ value: Document)

    @objc(addDocuments:)
    @NSManaged public func addToDocuments(_ values: NSSet)

    @objc(removeDocuments:)
    @NSManaged public func removeFromDocuments(_ values: NSSet)

}
