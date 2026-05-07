//
//  File.swift
//  VelvetCremaAPI
//
//  Created by Tensae on 07/05/2026.
//

import Vapor

struct BarStatusController: RouteCollection {
    let service: any BarStatusService
    
    func boot(routes: RoutesBuilder) throws {
        let v1 = routes.grouped("v1")
        v1.get("bar-status", use: getStatus)
    }
    
    func getStatus(req: Request) async throws -> BarStatusResponse {
        return try await service.fetchStatus()
    }
}
