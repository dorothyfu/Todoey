//
//  Item.swift
//  Todoey
//
//  Created by Dorothy Fu on 2020-02-16.
//  Copyright © 2020 Dorothy Fu. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var done: Bool = false
    @objc dynamic var dateCreated: Date?
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
