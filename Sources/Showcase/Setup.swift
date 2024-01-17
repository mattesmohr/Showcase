import Foundation
import Vapor
import Logging

@main
struct Setup {
    
    static func main() async throws {
        
        var environment = try Environment.detect()
        
        try LoggingSystem.bootstrap(from: &environment)
        
        let application = Application(environment)
        
        defer { application.shutdown() }
        
        application.middleware.use(FileMiddleware(publicDirectory: application.directory.publicDirectory))
        
        do {
    
            try await routes(application)
            
        } catch {
            
            application.logger.report(error: error)
            
            throw error
        }
        
        try await application.execute()
    }
    
    static func routes(_ application: Application) async throws {
        
        try application.routes.register(collection: HomeController())
        try application.routes.register(collection: ComponentsController())
    }
}
