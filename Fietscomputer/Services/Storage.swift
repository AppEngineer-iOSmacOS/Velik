//
//  Storage.swift
//  Fietscomputer
//
//  Created by Grigory Avdyushin on 22/05/2020.
//  Copyright © 2020 Grigory Avdyushin. All rights reserved.
//

import CoreData
import Foundation
import CoreDataStorage

class StorageService: Service {

    let shouldAutostart = true

    let storage = CoreDataStorage(container: NSPersistentContainer(name: "Fietscomputer"))

    func start() {
        debugPrint(storage)
    }
    func stop() { }

    func createNewRide(name: String) {
        _ = storage.performInBackgroundAndSave { context -> Void in
            Ride.create(name: name, context: context)
        }
    }
}
