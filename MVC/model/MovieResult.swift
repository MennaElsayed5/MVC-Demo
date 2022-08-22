//
//  MovieResult.swift
//  MVC
//
//  Created by Menna on 26/04/2022.
//

import Foundation

class MyResult: Decodable {
    var items : [Item]
    var errorMessage : String?
}
