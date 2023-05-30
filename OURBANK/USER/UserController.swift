//
//  UserController.swift
//  OURBANK
//
//  Created by UPQROO on 29/05/23.
//

import Foundation
import CoreData

class UserController {
    static let shared = UserController()
    
    let container: NSPersistentContainer
    
    init() {
        container = NSPersistentContainer(name: "UserModel")
        container.loadPersistentStores {
        storeDescription, error in
            if let error {
                print("Ocurrio un error", error.localizedDescription)
            }
        }
    }
    
    func saveChangues() {
        let context = container.viewContext
        
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                print("No se pudo actualizar",
                      error.localizedDescription)
            }
        }
    }
    
    // leer datos (read)
    
    func read() -> [UserEntity] {
        var results: [UserEntity] = []
        
        let request = NSFetchRequest<UserEntity>(entityName: "UserEntity")
        
        do {
            results = try container.viewContext.fetch(request)
        } catch {
            print("No se obtuvo informacion",
                  error.localizedDescription)
        }
        return results
    }
    
    func create(username: String, password: String) {
        let entity = UserEntity(context: container.viewContext)
        
        entity.id = UUID()
        entity.username = username
        entity.password = password
        
        saveChangues()
    }
    
    // actualizar
    
    func update(entity: UserEntity, username: String? = nil, password: String? = nil) {
        var hasChangues: Bool =  false
        
        if (username != nil) {
            entity.username = username
            hasChangues = true
        }
        
        if (password != nil) {
            entity.password = password
            hasChangues = true
        }
        if hasChangues {
            saveChangues()
        }
    }
    
    // Eliminar (Delete)
    
    func delete(entity: UserEntity) {
        container.viewContext.delete(entity)
        saveChangues()
    }
}
