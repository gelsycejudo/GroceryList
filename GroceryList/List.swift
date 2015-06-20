//
//  List.swift
//  
//
//  Created by Gelsy Cejudo Valencia on 18/06/15.
//
//

import Foundation
import CoreData
@objc(list)



class List: NSManagedObject {

    @NSManaged var item: String
    @NSManaged var note: String
    @NSManaged var qty: String

}
