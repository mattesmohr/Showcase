import HTMLKitVapor
import Vapor

// [/components]
final class ComponentsController {
    
    // [/index]
    func getIndex(_ request: Request) async throws -> View {
        return try await request.htmlkit.render(IndexView())
    }
    
    // [/symbol]
    func getSymbol(_ request: Request) async throws -> View {
        return try await request.htmlkit.render(SymbolExample())
    }
    
    // [/text]
    func getText(_ request: Request) async throws -> View {
        return try await request.htmlkit.render(TextExample())
    }
    
    // [/stack]
    func getStack(_ request: Request) async throws -> View {
        return try await request.htmlkit.render(StackExample())
    }
    
    // [/list]
    func getList(_ request: Request) async throws -> View {
        return try await request.htmlkit.render(ListExample())
    }
    
    // [/grid]
    func getGrid(_ request: Request) async throws -> View {
        return try await request.htmlkit.render(GridExample())
    }
    
    // [/snippet]
    func getSnippet(_ request: Request) async throws -> View {
        return try await request.htmlkit.render(SnippetExample())
    }
    
    // [/modal]
    func getModal(_ request: Request) async throws -> View {
        return try await request.htmlkit.render(ModalExample())
    }
    
    // [/image]
    func getImage(_ request: Request) async throws -> View {
        return try await request.htmlkit.render(ImageExample())
    }
    
    // [/field]
    func getField(_ request: Request) async throws -> View {
        return try await request.htmlkit.render(FieldExample())
    }
    
    // [/button]
    func getButton(_ request: Request) async throws -> View {
        return try await request.htmlkit.render(ButtonExample())
    }
    
    // [/dropdown]
    func getDropdown(_ request: Request) async throws -> View {
        return try await request.htmlkit.render(DropdownExample())
    }
    
    // [/scroll]
    func getScrollView(_ request: Request) async throws -> View {
        return try await request.htmlkit.render(ScrollExample())
    }
    
    // [/card]
    func getCardView(_ request: Request) async throws -> View {
        return try await request.htmlkit.render(CardExample())
    }
    
    // [/form]
    func getFormView(_ request: Request) async throws -> View {
        return try await request.htmlkit.render(FormExample())
    }
}

extension ComponentsController: RouteCollection {
    
    func boot(routes: RoutesBuilder) throws {
        
        routes.group("components") { routes in
            
            routes.get("index", use: getIndex)
            routes.get("symbol", use: getSymbol)
            routes.get("text", use: getText)
            routes.get("stack", use: getStack)
            routes.get("list", use: getList)
            routes.get("grid", use: getGrid)
            routes.get("snippet", use: getSnippet)
            routes.get("modal", use: getModal)
            routes.get("image", use: getImage)
            routes.get("field", use: getField)
            routes.get("button", use: getButton)
            routes.get("dropdown", use: getDropdown)
            routes.get("scroll", use: getScrollView)
            routes.get("card", use: getCardView)
            routes.get("form", use: getFormView)
        }
    }
}
