import HTMLKitVapor
import Vapor

// [/blog]
final class BlogPageController {
    
    // [/]
    func getIndex(_ request: Request) async throws -> View {
        
        if let url = Bundle.module.url(forResource: "articles", withExtension: "json") {
            
            let decoder = JSONDecoder()
            decoder.dateDecodingStrategy = .iso8601
            
            let articles = try decoder.decode([BlogArticle].self, from: Data(contentsOf: url))
            
            return try await request.htmlkit.render(BlogPage.IndexView(articles: articles))
        }
        
        return try await request.htmlkit.render(BlogPage.IndexView(articles: []))
    }
    
    // [/:slug]
    func getShow(_ request: Request) async throws -> View {
        
        guard let slug = request.parameters.get("slug", as: String.self) else {
            throw Abort(.badRequest)
        }
        
        guard let url = Bundle.module.url(forResource: "articles", withExtension: "json") else {
            throw Abort(.internalServerError)
        }
        
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        
        let articles = try decoder.decode([BlogArticle].self, from: Data(contentsOf: url))
        
        guard let article = articles.filter({ $0.slug == slug }).first else {
            throw Abort(.notFound)
        }
        
        return try await request.htmlkit.render(BlogPage.ShowView(article: article))
    }
}

extension BlogPageController: RouteCollection {
    
    func boot(routes: RoutesBuilder) throws {
        
        routes.group("blog") { routes in
            
            routes.get("", use: self.getIndex)
            routes.get(":slug", use: self.getShow)
        }
    }
}
    

