//
//  File.swift
//  VelvetCremaAPI
//
//  Created by Tensae on 07/05/2026.
//

import Vapor

struct BarStatusResponse: Content {
    let beanProfile: BeanProfile
    let shopMetrics: ShopMetrics
    let coldBrewAvailable: Bool
}
