import HTMLKitVapor
import Vapor

// [/privacy]
struct PrivacyPageController {
    
    // [/]
    @Sendable
    func getIndex(_ request: Request) async throws -> View {
        
        return try await request.htmlkit.render(PrivacyPage.IndexView())
    }
}

extension PrivacyPageController: RouteCollection {
    
    func boot(routes: RoutesBuilder) throws {
        
        routes.group("privacy") { routes in
            
            routes.get("", use: self.getIndex)
        }
    }
}
    
