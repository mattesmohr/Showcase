import HTMLKitVapor
import Vapor
import Foundation

// [/documentation]
final class TutorialPageController {
    
    // [/]
    func getIndex(_ request: Request) async throws -> View {
        
        guard let url = Bundle.module.url(forResource: "tutorials", withExtension: "json") else {
            throw Abort(.badRequest)
        }
        
        let tutorials = try JSONDecoder().decode([Tutorial].self, from: Data(contentsOf: url))
        
        return try await request.htmlkit.render(TutorialPage.IndexView(tutorials: tutorials))
    }
    
    // [/:slug]
    func getShow(_ request: Request) async throws -> View {
        
        guard let slug = request.parameters.get("slug", as: String.self) else {
            throw Abort(.badRequest)
        }
        
        guard let url = Bundle.module.url(forResource: "tutorials", withExtension: "json") else {
            throw Abort(.internalServerError)
        }
        
        let tutorials = try JSONDecoder().decode([Tutorial].self, from: Data(contentsOf: url))
        
        guard let tutorial = tutorials.filter({ $0.slug == slug }).first else {
            throw Abort(.notFound)
        }
        
        return try await request.htmlkit.render(TutorialPage.ShowView(tutorial: tutorial))
    }
}

extension TutorialPageController: RouteCollection {
    
    func boot(routes: RoutesBuilder) throws {
        
        routes.group("tutorial") { routes in
            
            routes.get("", use: self.getIndex)
            routes.get(":slug", use: self.getShow)
        }
    }
}
    
