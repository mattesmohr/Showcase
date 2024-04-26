import HTMLKitVapor
import Vapor

// [/legal]
final class LegalPageController {
    
    // [/]
    func getIndex(_ request: Request) async throws -> View {
        
        return try await request.htmlkit.render(LegalPage.IndexView())
    }
}

extension LegalPageController: RouteCollection {
    
    func boot(routes: RoutesBuilder) throws {
        
        routes.group("legal") { routes in
            
            routes.get("", use: self.getIndex)
        }
    }
}
    
