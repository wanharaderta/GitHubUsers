//
//  CoreDataManager.swift
//  GithubUsers
//
//  Created by Wanhar on 18/01/23.
//

import CoreData

struct CoreDataManager {
    
    static let shared = CoreDataManager()
    let container: NSPersistentContainer
    
    var context: NSManagedObjectContext {
        return container.viewContext
    }
    
    init(inMemory: Bool = false) {
        container = NSPersistentContainer(name: "GithubUsers")
        if inMemory {
            container.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "/dev/null")
        }
        container.loadPersistentStores(completionHandler: { (_, error) in
            guard let error = error as NSError? else { return }
            fatalError("Unresolved error: \(error), \(error.userInfo)")
        })
        container.viewContext.automaticallyMergesChangesFromParent = true
    }
    
    // MARK: - Core Data Saving
    func save() {
        let context = container.viewContext
        if context.hasChanges {
            do {
                try context.save()
                
                //We get notified when it saves data successful
                //NotificationCenter.default.post(name: NSNotification.Name("PersistedDataUpdated"), object: nil)
                print("Saved Succssfully")
            } catch {
                
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
    
    // MARK: - Core Data Fetch
    func fetch<T: NSManagedObject>(_ type: T.Type, completion: @escaping ([T]) -> Void) {
        let request = NSFetchRequest<T>(entityName: String(describing: type))
        do {
            let objects = try context.fetch(request)
            completion(objects)
        } catch {
            print(error)
            completion([])
        }
    }
    
    // MARK: - Core Data Delete
    func delete(_ object: NSManagedObject) {
        context.delete(object)
        save()
    }
    
}
