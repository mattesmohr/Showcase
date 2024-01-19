import HTMLKitVapor
import Vapor

// [/components]
final class ComponentsController {
    
    // [/index]
    func getInroduction(_ request: Request) async throws -> View {
        return try await request.htmlkit.render(IndexView())
    }
    
    // [/symbol]
    func getSymbolExample(_ request: Request) async throws -> View {
        return try await request.htmlkit.render(SymbolExample())
    }
    
    // [/text]
    func getTextExample(_ request: Request) async throws -> View {
        return try await request.htmlkit.render(TextExample())
    }
    
    // [/stack]
    func getStackExample(_ request: Request) async throws -> View {
        return try await request.htmlkit.render(StackExample())
    }
    
    // [/list]
    func getListExample(_ request: Request) async throws -> View {
        return try await request.htmlkit.render(ListExample())
    }
    
    // [/grid]
    func getGridExample(_ request: Request) async throws -> View {
        return try await request.htmlkit.render(GridExample())
    }
    
    // [/snippet]
    func getSnippetExample(_ request: Request) async throws -> View {
        return try await request.htmlkit.render(SnippetExample())
    }
    
    // [/modal]
    func getModalExample(_ request: Request) async throws -> View {
        return try await request.htmlkit.render(ModalExample())
    }
    
    // [/image]
    func getImageExample(_ request: Request) async throws -> View {
        return try await request.htmlkit.render(ImageExample())
    }
    
    // [/field]
    func getFieldExample(_ request: Request) async throws -> View {
        return try await request.htmlkit.render(FieldExample())
    }
    
    // [/button]
    func getButtonExample(_ request: Request) async throws -> View {
        return try await request.htmlkit.render(ButtonExample())
    }
    
    // [/dropdown]
    func getDropdownExample(_ request: Request) async throws -> View {
        return try await request.htmlkit.render(DropdownExample())
    }
    
    // [/scroll]
    func getScrollExample(_ request: Request) async throws -> View {
        return try await request.htmlkit.render(ScrollExample())
    }
    
    // [/card]
    func getCardExample(_ request: Request) async throws -> View {
        return try await request.htmlkit.render(CardExample())
    }
    
    // [/form]
    func getFormExample(_ request: Request) async throws -> View {
        return try await request.htmlkit.render(FormExample())
    }
    
    // [/action]
    func getActionExample(_ request: Request) async throws -> View {
        return try await request.htmlkit.render(ActionExample())
    }
}

extension ComponentsController: RouteCollection {
    
    func boot(routes: RoutesBuilder) throws {
        
        routes.group("components") { routes in
            
            routes.get("index", use: getInroduction)
            routes.get("symbol", use: getSymbolExample)
            routes.get("text", use: getTextExample)
            routes.get("stack", use: getStackExample)
            routes.get("list", use: getListExample)
            routes.get("grid", use: getGridExample)
            routes.get("snippet", use: getSnippetExample)
            routes.get("modal", use: getModalExample)
            routes.get("image", use: getImageExample)
            routes.get("field", use: getFieldExample)
            routes.get("button", use: getButtonExample)
            routes.get("dropdown", use: getDropdownExample)
            routes.get("scroll", use: getScrollExample)
            routes.get("card", use: getCardExample)
            routes.get("form", use: getFormExample)
            routes.get("action", use: getActionExample)
        }
    }
}
