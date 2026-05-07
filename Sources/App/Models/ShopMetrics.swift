//
//  File.swift
//  VelvetCremaAPI
//
//  Created by Tensae on 07/05/2026.
//

import Vapor

struct ShopMetrics: Content {
    let estimatedWaitTime: Int
    let baristasOnDuty: Int
}
