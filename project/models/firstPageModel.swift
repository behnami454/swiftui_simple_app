//
//  models.swift
//  project
//
//  Created by Admin on 10/12/22.
//

import Foundation


struct firstPageModel : Codable , Identifiable {
    let id: Int
    let name : String
    let email : String
    let company : Company
}

struct Company : Codable {
    let name: String
}
