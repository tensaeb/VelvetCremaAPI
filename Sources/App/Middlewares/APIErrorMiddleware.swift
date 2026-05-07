//
//  File.swift
//  VelvetCremaAPI
//
//  Created by Tensae on 07/05/2026.
//

import Vapor

struct APIErrorMiddleware: Middleware {
    func respond(to request: Vapor.Request, chainingTo next: any Vapor.Responder) -> NIOCore.EventLoopFuture<Vapor.Response> {
        next.respond(to: request).flatMapErrorThrowing { error in
            throw Abort(.internalServerError, reason: error.localizedDescription)
        }
    }
}
