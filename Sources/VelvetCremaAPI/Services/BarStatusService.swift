//
//  File.swift
//  VelvetCremaAPI
//
//  Created by Tensae on 07/05/2026.
//

import Foundation

protocol BarStatusService {
    func fetchStatus() -> BarStatusResponse
}

final class MockBarStatusService: BarStatusService {
    func fetchStatus() -> BarStatusResponse {
        return BarStatusResponse(
            beanProfile: .init(
                origin: "Ethiopia Yirgacheffe",
                roastLevel: "Medium",
                flavorNotes: ["Citrus", "Jasmine", "Honey"]
            ),
            shopMetrics: .init(
                estimatedWaitTime: 6,
                baristasOnDuty: 4
            ),
            coldBrewAvailable: true
        )
    }
}
