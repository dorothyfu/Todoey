//
//  Category.swift
//  Todoey
//
//  Created by Dorothy Fu on 2020-02-16.
//  Copyright © 2020 Dorothy Fu. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""
    let items = List<Item>()
}
