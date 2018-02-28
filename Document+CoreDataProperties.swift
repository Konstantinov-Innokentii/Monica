//
//  Document+CoreDataProperties.swift
//  Monica
//
//  Created by Иннокентий Константинов on 28.02.2018.
//  Copyright © 2018 Вячеслав. All rights reserved.
//
//

import Foundation
import CoreData


extension Document {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Document> {
        return NSFetchRequest<Document>(entityName: "Document")
    }

    @NSManaged public var path: URL?
    @NSManaged public var name: String?
    @NSManaged public var id: UUID?
    @NSManaged public var is_favorite: Bool

}
