import HTMLKitVapor
import Vapor

// [/documentation]
final class ExamplePageController {
    
    // [/]
    func getIndex(_ request: Request) async throws -> View {
        
        return try await request.htmlkit.render(ExamplePage.IndexView())
    }
    
    // [/:slug]
    func getShow(_ request: Request) async throws -> View {
        
        return try await request.htmlkit.render(ExamplePage.ShowView())
    }
}

extension ExamplePageController: RouteCollection {
    
    func boot(routes: RoutesBuilder) throws {
        
        routes.group("example") { routes in
            
            routes.get("", use: self.getIndex)
            routes.get(":slug", use: self.getShow)
        }
    }
}
    
