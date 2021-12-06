//
//  Tip.swift
//  travel_wiki
//
//  Created by Umut Barış Çoşkun on 6.12.2021.
//

import Foundation


struct Tip: Decodable{
    let text: String
    let children : [Tip]?
    
}
