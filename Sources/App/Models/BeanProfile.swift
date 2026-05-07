//
//  File.swift
//  VelvetCremaAPI
//
//  Created by Tensae on 07/05/2026.
//

import Vapor

struct BeanProfile: Content {
    let origin: String
    let roastLevel: String
    let flavorNotes: [String]
}
