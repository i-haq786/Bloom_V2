//
//  Event.swift
//  BLOOMFINAL
//
//  Created by Inzamam on 16/06/23.
//

import SwiftUI
import FirebaseFirestoreSwift

struct Event: Identifiable,Codable{
    @DocumentID var id: String?

    var name: String
    var imgID: String?
    var imgURL: URL?
    var venue: String
    var description: String
    var date: Date
    var cost: Double
    var category: String
   // var interests: [String]
    
    // MARK: Basic User Info
    var userName: String
    var userUID: String
    
    enum CodingKeys: CodingKey {
        case id
        case imgID
        case imgURL
        case venue
        case name
        case description
        case date
        case cost
        case category
  //      case interests
        case userName
        case userUID
    }
}
