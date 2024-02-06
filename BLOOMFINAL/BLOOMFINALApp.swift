//
//  BLOOMFINALApp.swift
//  BLOOMFINAL
//
//  Created by Inzamam on 16/06/23.
//

import SwiftUI
import Firebase

@main
struct BLOOMFINALApp: App {
   
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
              
        }
    }
}

