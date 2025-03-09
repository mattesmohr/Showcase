import Foundation
import Vapor
import Logging
import NIOCore
import NIOPosix

@main
enum Setup {
    
    static func main() async throws {
        
        var environment = try Environment.detect()
        
        try LoggingSystem.bootstrap(from: &environment)
        
        let application = try await Application.make(environment)
        
        application.middleware.use(FileMiddleware(publicDirectory: application.directory.publicDirectory))
        
        do {
    
            try await routes(application)
            try await services(application)
            
        } catch {
            
            application.logger.report(error: error)
            
            try? await application.asyncShutdown()
            
            throw error
        }
        
        try await application.execute()
        try await application.asyncShutdown()
    }
    
    static func routes(_ application: Application) async throws {
        
        try application.routes.register(collection: HomeController())
        try application.routes.register(collection: DocumentationPageController())
        try application.routes.register(collection: LegalPageController())
        try application.routes.register(collection: PrivacyPageController())
        try application.routes.register(collection: BlogPageController())
        try application.routes.register(collection: ToolPageController())
        try application.routes.register(collection: TutorialPageController())
        try application.routes.register(collection: ExamplePageController())
    }
    
    static func services(_ application: Application) async throws {
    
        application.htmlkit.features = [.markdown]
    }
}
