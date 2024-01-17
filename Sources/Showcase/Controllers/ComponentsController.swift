import HTMLKitVapor
import Vapor

// [/components]
final class ComponentsController {
    
    // [/index]
    func getIndex(_ request: Request) async throws -> View {
        return try await request.htmlkit.render(ComponentsPage.IndexView())
    }
    
    // [/text]
    func getText(_ request: Request) async throws -> View {
        return try await request.htmlkit.render(ComponentsPage.TextView())
    }
}

extension ComponentsController: RouteCollection {
    
    func boot(routes: RoutesBuilder) throws {
        
        routes.group("components") { routes in
            
            routes.get("index", use: getIndex)
            routes.get("text", use: getText)
        }
    }
}
