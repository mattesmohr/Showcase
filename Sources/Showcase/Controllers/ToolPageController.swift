import HTMLKitVapor
import Vapor

// [/tool]
struct ToolPageController {
    
    // [/]
    @Sendable
    func getIndex(_ request: Request) async throws -> View {
        
        return try await request.htmlkit.render(ToolPage.IndexView())
    }
}

extension ToolPageController: RouteCollection {
    
    func boot(routes: RoutesBuilder) throws {
        
        routes.group("tool") { routes in
            
            routes.get("", use: self.getIndex)
        }
    }
}
