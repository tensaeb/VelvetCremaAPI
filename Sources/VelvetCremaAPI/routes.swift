import Fluent
import Vapor

func routes(_ app: Application) throws {
    let service = MockBarStatusService()
    let controller = BarStatusController(service: service)
    
    try app.register(collection: controller)
}
