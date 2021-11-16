//
//  CoreDataManager.swift
//  HelloCoreData
//
//  Created by Julio Ismael Robles on 16/11/2021.
//

import Foundation
import CoreData

class CoreDataManager {
    
    let persistentContainer: NSPersistentContainer
    init() {
        persistentContainer = NSPersistentContainer(name: "HelloCoreDataModel")
        persistentContainer.loadPersistentStores { (description, error) in
            if let error = error {
                fatalError("Core Data Store failed to initialize \(error.localizedDescription)")
            }
        }
    }
    func updateMovie() {
        
        do {
            try persistentContainer.viewContext.save()
        } catch {
            persistentContainer.viewContext.rollback()
        }
    }
    
    func deleteMovie(movie: Movie) {
        
        persistentContainer.viewContext.delete(movie)
        
        do {
            try persistentContainer.viewContext.save()
        } catch {
            persistentContainer.viewContext.rollback()
            print("failed to save context \(error.localizedDescription)")
        }
    }
    
    func saveMovie(title: String) {
        
        let movie = Movie(context: persistentContainer.viewContext)
        movie.title = title
        
        do {
            try persistentContainer.viewContext.save()
            print("Movie saved")
        } catch {
            print("failed to save movie \(error)")
        }
    }
    
    func getAllMovies() -> [Movie] {
        let fetchRequest: NSFetchRequest<Movie> = Movie.fetchRequest()
        
        do {
            return try persistentContainer.viewContext.fetch(fetchRequest)
        } catch {
            return []
        }
    }
}
