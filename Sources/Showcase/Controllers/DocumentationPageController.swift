import HTMLKitVapor
import Vapor

// [/documentation]
final class DocumentationPageController {
    
    // [/]
    func getIndex(_ request: Request) async throws -> View {
        
        guard let url = Bundle.module.url(forResource: "symbols", withExtension: "json") else {
            throw Abort(.badRequest)
        }
        
        let articles = try JSONDecoder().decode([ApiArticle].self, from: Data(contentsOf: url))
        
        let navigation = articles.filter({ $0.type == .structure })
        
        return try await request.htmlkit.render(DocumentationPage.IndexView(articles: navigation))
    }
    
    // [/structure/:slug]
    func getStructure(_ request: Request) async throws -> View {
        
        guard let slug = request.parameters.get("slug") else {
            throw Abort(.badRequest)
        }
        
        guard let url = Bundle.module.url(forResource: "symbols", withExtension: "json") else {
            throw Abort(.internalServerError)
        }
        
        let articles = try JSONDecoder().decode([ApiArticle].self, from: Data(contentsOf: url))
        
        guard var article = articles.filter({ $0.type == .structure && $0.slug == slug }).first else {
            throw Abort(.notFound)
        }
        
        if let conformance = article.conformance {
            
            var topic = ApiTopic(title: "Conformance")
            
            guard let url = Bundle.module.url(forResource: "conformances", withExtension: "json") else {
                throw Abort(.internalServerError)
            }
            
            let conformances = try JSONDecoder().decode([ApiProtocol].self, from: Data(contentsOf: url))
            
            for name in conformance {
                
                guard let filter = conformances.filter({ $0.name == name }).first else {
                    throw Abort(.notFound)
                }
                
                topic.symbols.append(contentsOf: filter.symbols)
            }
            
            article.topics.append(topic)
        }
        
        let navigation = articles.filter({ $0.type == .structure })
        
        switch slug {
        case "alert":
            return try await request.htmlkit.render(DocumentationPage.AlertView(articles: navigation, article: article))
            
        case "button":
            return try await request.htmlkit.render(DocumentationPage.ButtonView(articles: navigation, article: article))
            
        case "card":
            return try await request.htmlkit.render(DocumentationPage.CardView(articles: navigation, article: article))
            
        case "chart":
            return try await request.htmlkit.render(DocumentationPage.ChartView(articles: navigation, article: article))
            
        case "dropdown":
            return try await request.htmlkit.render(DocumentationPage.DropdownView(articles: navigation, article: article))
            
        case "grid":
            return try await request.htmlkit.render(DocumentationPage.GridView(articles: navigation, article: article))
            
        case "hstack":
            return try await request.htmlkit.render(DocumentationPage.HStackView(articles: navigation, article: article))
            
        case "vstack":
            return try await request.htmlkit.render(DocumentationPage.VStackView(articles: navigation, article: article))
            
        case "zstack":
            return try await request.htmlkit.render(DocumentationPage.ZStackView(articles: navigation, article: article))
            
        case "image":
            return try await request.htmlkit.render(DocumentationPage.ImageView(articles: navigation, article: article))
            
        case "list":
            return try await request.htmlkit.render(DocumentationPage.ListView(articles: navigation, article: article))
            
        case "modal":
            return try await request.htmlkit.render(DocumentationPage.ModalView(articles: navigation, article: article))
            
        case "text":
            return try await request.htmlkit.render(DocumentationPage.TextView(articles: navigation, article: article))
            
        case "scroll":
            return try await request.htmlkit.render(DocumentationPage.ScrollView(articles: navigation, article: article))
            
        case "snippet":
            return try await request.htmlkit.render(DocumentationPage.SnippetView(articles: navigation, article: article))
            
        case "symbol":
            return try await request.htmlkit.render(DocumentationPage.SymbolView(articles: navigation, article: article))
            
        case "textfield":
            return try await request.htmlkit.render(DocumentationPage.TextFieldView(articles: navigation, article: article))
            
        case "texteditor":
            return try await request.htmlkit.render(DocumentationPage.TextEditorView(articles: navigation, article: article))
            
        case "textpad":
            return try await request.htmlkit.render(DocumentationPage.TextPadView(articles: navigation, article: article))
            
        case "securefield":
            return try await request.htmlkit.render(DocumentationPage.SecureFieldView(articles: navigation, article: article))
            
        case "selectfield":
            return try await request.htmlkit.render(DocumentationPage.SelectFieldView(articles: navigation, article: article))
            
        case "checkfield":
            return try await request.htmlkit.render(DocumentationPage.CheckFieldView(articles: navigation, article: article))
            
        case "radioselect":
            return try await request.htmlkit.render(DocumentationPage.RadioSelectView(articles: navigation, article: article))
            
        case "slider":
            return try await request.htmlkit.render(DocumentationPage.SliderView(articles: navigation, article: article))
            
        case "datepicker":
            return try await request.htmlkit.render(DocumentationPage.DatePickerView(articles: navigation, article: article))
            
        case "filedialog":
            return try await request.htmlkit.render(DocumentationPage.FieldDialogView(articles: navigation, article: article))
            
        case "tabs":
            return try await request.htmlkit.render(DocumentationPage.TabView(articles: navigation, article: article))
            
        default:
            return try await request.htmlkit.render(DocumentationPage.StructureView(articles: navigation, article: article))
        }
    }
    
    // [/method/:slug]
    func getMethod(_ request: Request) async throws -> View {
        
        guard let slug = request.parameters.get("slug") else {
            throw Abort(.badRequest)
        }
        
        guard let url = Bundle.module.url(forResource: "symbols", withExtension: "json") else {
            throw Abort(.internalServerError)
        }
        
        let articles = try JSONDecoder().decode([ApiArticle].self, from: Data(contentsOf: url))
        
        let navigation = articles.filter({ $0.type == .structure })
        
        guard let article = articles.filter({ $0.type == .method && $0.slug == slug }).first else {
            throw Abort(.notFound)
        }
        
        return try await request.htmlkit.render(DocumentationPage.MethodView(articles: navigation, article: article))
    }
    
    // [/enumeration/:slug]
    func getEnum(_ request: Request) async throws -> View {
        
        guard let slug = request.parameters.get("slug") else {
            throw Abort(.badRequest)
        }
        
        guard let url = Bundle.module.url(forResource: "symbols", withExtension: "json") else {
            throw Abort(.internalServerError)
        }
        
        let articles = try JSONDecoder().decode([ApiArticle].self, from: Data(contentsOf: url))
        
        guard let article = articles.filter({ $0.type == .enumeration && $0.slug == slug }).first else {
            throw Abort(.notFound)
        }
        
        let navigation = articles.filter({ $0.type == .structure })
        
        switch slug {
        case "font-family":
            return try await request.htmlkit.render(DocumentationPage.FontFamilyEnumView(articles: navigation, article: article))
            
        case "text-style":
            return try await request.htmlkit.render(DocumentationPage.TextStyleEnumView(articles: navigation, article: article))
            
        case "flow-direction":
            return try await request.htmlkit.render(DocumentationPage.FlowDirectionEnumView(articles: navigation, article: article))
            
        case "text-alignment":
            return try await request.htmlkit.render(DocumentationPage.TextAlignmentEnumView(articles: navigation, article: article))
            
        case "foreground-color":
            return try await request.htmlkit.render(DocumentationPage.ForegroundColorEnumView(articles: navigation, article: article))
            
        case "font-size":
            return try await request.htmlkit.render(DocumentationPage.FontSizeEnumView(articles: navigation, article: article))
            
        case "text-case":
            return try await request.htmlkit.render(DocumentationPage.TextCaseEnumView(articles: navigation, article: article))
            
        case "font-weight":
            return try await request.htmlkit.render(DocumentationPage.FontWeightEnumView(articles: navigation , article: article))
            
        case "text-decoration":
            return try await request.htmlkit.render(DocumentationPage.TextDecorationEnumView(articles: navigation, article: article))
            
        case "font-style":
            return try await request.htmlkit.render(DocumentationPage.FontStyleEnumView(articles: navigation, article: article))
            
        case "background-color":
            return try await request.htmlkit.render(DocumentationPage.BackgroundColorEnumView(articles: navigation, article: article))
            
        case "object-fit":
            return try await request.htmlkit.render(DocumentationPage.ObjectFitEnumView(articles: navigation, article: article))
            
        case "opacity-value":
            return try await request.htmlkit.render(DocumentationPage.OpacityValueEnumView(articles: navigation, article: article))
            
        case "image-scale":
            return try await request.htmlkit.render(DocumentationPage.ImageScaleEnumView(articles: navigation, article: article))
            
        case "clip-shape":
            return try await request.htmlkit.render(DocumentationPage.ClipShapeEnumView(articles: navigation, article: article))
            
        case "content-space":
            return try await request.htmlkit.render(DocumentationPage.ContentSpaceEnumView(articles: navigation, article: article))
            
        case "border-shape":
            return try await request.htmlkit.render(DocumentationPage.BorderShapeEnumView(articles: navigation, article: article))
            
        case "grid-ratio":
            return try await request.htmlkit.render(DocumentationPage.GridRatioEnumView(articles: navigation, article: article))
            
        case "border-color":
            return try await request.htmlkit.render(DocumentationPage.BorderColorEnumView(articles: navigation, article: article))
            
        case "color-scheme":
            return try await request.htmlkit.render(DocumentationPage.ColorSchemeEnumView(articles: navigation, article: article))
            
        case "padding-length":
            return try await request.htmlkit.render(DocumentationPage.PaddingLengthEnumView(articles: navigation, article: article))
            
        case "margin-length":
            return try await request.htmlkit.render(DocumentationPage.MarginLengthEnumView(articles: navigation, article: article))
            
        case "aspect-ratio":
            return try await request.htmlkit.render(DocumentationPage.AspectRatioEnumView(articles: navigation, article: article))

        case "blur-level":
            return try await request.htmlkit.render(DocumentationPage.BlurLevelEnumView(articles: navigation, article: article))
            
        case "grayscale-depth":
            return try await request.htmlkit.render(DocumentationPage.GrayscaleDepthEnumView(articles: navigation, article: article))
            
        case "brightness-level":
            return try await request.htmlkit.render(DocumentationPage.BrightnessLevelEnumView(articles: navigation, article: article))
            
        case "saturation-level":
            return try await request.htmlkit.render(DocumentationPage.SaturationLevelEnumView(articles: navigation, article: article))
            
        case "contrast-level":
            return try await request.htmlkit.render(DocumentationPage.ConstrastLevelEnumView(articles: navigation, article: article))
            
        case "list-space":
            return try await request.htmlkit.render(DocumentationPage.ListSpaceEnumView(articles: navigation, article: article))
            
        case "shadow-color":
            return try await request.htmlkit.render(DocumentationPage.ShadowColorEnumView(articles: navigation, article: article))
            
        case "border-width":
            return try await request.htmlkit.render(DocumentationPage.BorderWidthEnumView(articles: navigation, article: article))
            
        default:
            return try await request.htmlkit.render(DocumentationPage.EnumerationView(articles: navigation, article: article))
        }
    }
    
    // [/initializer/:slug]
    func getInitializer(_ request: Request) async throws -> View {
        
        guard let slug = request.parameters.get("slug") else {
            throw Abort(.badRequest)
        }
        
        guard let url = Bundle.module.url(forResource: "symbols", withExtension: "json") else {
            throw Abort(.internalServerError)
        }
        
        let articles = try JSONDecoder().decode([ApiArticle].self, from: Data(contentsOf: url))
        
        guard let article = articles.filter({ $0.type == .initializer && $0.slug == slug }).first else {
            throw Abort(.notFound)
        }
        
        let navigation = articles.filter({ $0.type == .structure })
        
        return try await request.htmlkit.render(DocumentationPage.InitializerView(articles: navigation, article: article))
    }
}

extension DocumentationPageController: RouteCollection {
    
    func boot(routes: RoutesBuilder) throws {
        
        routes.group("documentation") { routes in
    
            routes.get("", use: getIndex)
            routes.get("method", ":slug", use: self.getMethod)
            routes.get("enumeration", ":slug", use: self.getEnum)
            routes.get("structure", ":slug", use: self.getStructure)
            routes.get("initializer", ":slug", use: self.getInitializer)
        }
    }
}
