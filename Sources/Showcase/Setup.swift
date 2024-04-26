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
            try await services(application)
            
        } catch {
            
            application.logger.report(error: error)
            
            throw error
        }
        
        try await application.execute()
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
