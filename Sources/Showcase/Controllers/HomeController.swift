import HTMLKitVapor
import Vapor

// [/home]
struct HomeController {
    
    // [/]
    @Sendable
    func getIndex(_ request: Request) async throws -> View {
        return try await request.htmlkit.render(HomePage.IndexView())
    }
}

extension HomeController: RouteCollection {
    
    func boot(routes: RoutesBuilder) throws {
        
        routes.group("home") { routes in
            
            routes.get("", use: self.getIndex)
        }
    }
}
