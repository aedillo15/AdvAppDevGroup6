//
//  CoreDBHelper.swift
//  WalkIt
//
//  Created by Bilal Amir on 2021-11-08.
//

import Foundation
import CoreData
//MVC - Controller

class CoreDBHelper : ObservableObject{
    
    @Published var userList = [PlayerMO]()
    
    private let ENTITY_NAME = "Player"
    private let MOC : NSManagedObjectContext
    
    //singleton instance
    private static var shared: CoreDBHelper?
    
    static func getInstance() -> CoreDBHelper{
        if shared == nil{
            shared = CoreDBHelper(context: PersistenceController.preview.container.viewContext)
        }
        return shared!
    }
    
    init(context: NSManagedObjectContext) {
        self.MOC = context
    }
}
