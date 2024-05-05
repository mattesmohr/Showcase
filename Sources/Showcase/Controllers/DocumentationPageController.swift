import HTMLKitVapor
import Vapor

// [/documentation]
final class DocumentationPageController {
    
    // [/]
    func getIndex(_ request: Request) async throws -> View {
        return try await request.htmlkit.render(DocumentationPage.IndexView())
    }
    
    // [/:slug]
    func getArticle(_ request: Request) async throws -> View {
        
        guard let slug = request.parameters.get("slug") else {
            throw Abort(.badRequest)
        }
        
        guard let url = Bundle.module.url(forResource: "symbols", withExtension: "json") else {
            throw Abort(.internalServerError)
        }
        
        let articles = try JSONDecoder().decode([ApiArticle].self, from: Data(contentsOf: url))
        
        guard let article = articles.filter({ $0.type == .article && $0.slug == slug }).first else {
            throw Abort(.notFound)
        }
        
        switch slug {
        case "elements":
            return try await request.htmlkit.render(DocumentationPage.ElementsArticleView(article: article))
            
        case "components":
            return try await request.htmlkit.render(DocumentationPage.ComponentsArticleView(article: article))
            
        case "localization":
            return try await request.htmlkit.render(DocumentationPage.LocalizationArticleView(article: article))
            
        case "environment":
            return try await request.htmlkit.render(DocumentationPage.EnvironmentArticleView(article: article))
            
        case "security":
            return try await request.htmlkit.render(DocumentationPage.SecurityArticleView(article: article))
            
        default:
            return try await request.htmlkit.render(DocumentationPage.ArticleView(article: article))
        }
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
        
        switch slug {
        case "alert":
            return try await request.htmlkit.render(DocumentationPage.AlertView(article: article))
            
        case "button":
            return try await request.htmlkit.render(DocumentationPage.ButtonView(article: article))
            
        case "card":
            return try await request.htmlkit.render(DocumentationPage.CardView(article: article))
            
        case "chart":
            return try await request.htmlkit.render(DocumentationPage.ChartView(article: article))
            
        case "dropdown":
            return try await request.htmlkit.render(DocumentationPage.DropdownView(article: article))
            
        case "grid":
            return try await request.htmlkit.render(DocumentationPage.GridView(article: article))
            
        case "hstack":
            return try await request.htmlkit.render(DocumentationPage.HStackView(article: article))
            
        case "vstack":
            return try await request.htmlkit.render(DocumentationPage.VStackView(article: article))
            
        case "zstack":
            return try await request.htmlkit.render(DocumentationPage.ZStackView(article: article))
            
        case "image":
            return try await request.htmlkit.render(DocumentationPage.ImageView(article: article))
            
        case "list":
            return try await request.htmlkit.render(DocumentationPage.ListView(article: article))
            
        case "modal":
            return try await request.htmlkit.render(DocumentationPage.ModalView(article: article))
            
        case "text":
            return try await request.htmlkit.render(DocumentationPage.TextView(article: article))
            
        case "scroll":
            return try await request.htmlkit.render(DocumentationPage.ScrollView(article: article))
            
        case "snippet":
            return try await request.htmlkit.render(DocumentationPage.SnippetView(article: article))
            
        case "symbol":
            return try await request.htmlkit.render(DocumentationPage.SymbolView(article: article))
            
        case "textfield":
            return try await request.htmlkit.render(DocumentationPage.TextFieldView(article: article))
            
        case "texteditor":
            return try await request.htmlkit.render(DocumentationPage.TextEditorView(article: article))
            
        case "textpad":
            return try await request.htmlkit.render(DocumentationPage.TextPadView(article: article))
            
        case "securefield":
            return try await request.htmlkit.render(DocumentationPage.SecureFieldView(article: article))
            
        case "selectfield":
            return try await request.htmlkit.render(DocumentationPage.SelectFieldView(article: article))
            
        case "checkfield":
            return try await request.htmlkit.render(DocumentationPage.CheckFieldView(article: article))
            
        case "radioselect":
            return try await request.htmlkit.render(DocumentationPage.RadioSelectView(article: article))
            
        case "slider":
            return try await request.htmlkit.render(DocumentationPage.SliderView(article: article))
            
        case "datepicker":
            return try await request.htmlkit.render(DocumentationPage.DatePickerView(article: article))
            
        case "filedialog":
            return try await request.htmlkit.render(DocumentationPage.FieldDialogView(article: article))
            
        case "tabs":
            return try await request.htmlkit.render(DocumentationPage.TabView(article: article))
            
        case "carousel":
            return try await request.htmlkit.render(DocumentationPage.CarouselView(article: article))
            
        case "sectormark":
            return try await request.htmlkit.render(DocumentationPage.SectorMarkView(article: article))
            
        case "barmark":
            return try await request.htmlkit.render(DocumentationPage.BarMarkView(article: article))
            
        case "progress":
            return try await request.htmlkit.render(DocumentationPage.ProgressView(article: article))
            
        case "grouping":
            return try await request.htmlkit.render(DocumentationPage.GroupingView(article: article))
            
        case "link":
            return try await request.htmlkit.render(DocumentationPage.LinkView(article: article))
            
        default:
            return try await request.htmlkit.render(DocumentationPage.StructureView(article: article))
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
        
        guard let article = articles.filter({ $0.type == .method && $0.slug == slug }).first else {
            throw Abort(.notFound)
        }
        
        return try await request.htmlkit.render(DocumentationPage.MethodView(article: article))
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
        
        switch slug {
        case "font-family":
            return try await request.htmlkit.render(DocumentationPage.FontFamilyEnumView(article: article))
            
        case "text-style":
            return try await request.htmlkit.render(DocumentationPage.TextStyleEnumView(article: article))
            
        case "flow-direction":
            return try await request.htmlkit.render(DocumentationPage.FlowDirectionEnumView(article: article))
            
        case "text-alignment":
            return try await request.htmlkit.render(DocumentationPage.TextAlignmentEnumView(article: article))
            
        case "foreground-color":
            return try await request.htmlkit.render(DocumentationPage.ForegroundColorEnumView(article: article))
            
        case "font-size":
            return try await request.htmlkit.render(DocumentationPage.FontSizeEnumView(article: article))
            
        case "text-case":
            return try await request.htmlkit.render(DocumentationPage.TextCaseEnumView(article: article))
            
        case "font-weight":
            return try await request.htmlkit.render(DocumentationPage.FontWeightEnumView(article: article))
            
        case "text-decoration":
            return try await request.htmlkit.render(DocumentationPage.TextDecorationEnumView(article: article))
            
        case "font-style":
            return try await request.htmlkit.render(DocumentationPage.FontStyleEnumView(article: article))
            
        case "background-color":
            return try await request.htmlkit.render(DocumentationPage.BackgroundColorEnumView(article: article))
            
        case "object-fit":
            return try await request.htmlkit.render(DocumentationPage.ObjectFitEnumView(article: article))
            
        case "opacity-value":
            return try await request.htmlkit.render(DocumentationPage.OpacityValueEnumView(article: article))
            
        case "image-scale":
            return try await request.htmlkit.render(DocumentationPage.ImageScaleEnumView(article: article))
            
        case "clip-shape":
            return try await request.htmlkit.render(DocumentationPage.ClipShapeEnumView(article: article))
            
        case "content-space":
            return try await request.htmlkit.render(DocumentationPage.ContentSpaceEnumView(article: article))
            
        case "border-shape":
            return try await request.htmlkit.render(DocumentationPage.BorderShapeEnumView(article: article))
            
        case "grid-ratio":
            return try await request.htmlkit.render(DocumentationPage.GridRatioEnumView(article: article))
            
        case "border-color":
            return try await request.htmlkit.render(DocumentationPage.BorderColorEnumView(article: article))
            
        case "color-scheme":
            return try await request.htmlkit.render(DocumentationPage.ColorSchemeEnumView(article: article))
            
        case "padding-length":
            return try await request.htmlkit.render(DocumentationPage.PaddingLengthEnumView(article: article))
            
        case "margin-length":
            return try await request.htmlkit.render(DocumentationPage.MarginLengthEnumView(article: article))
            
        case "aspect-ratio":
            return try await request.htmlkit.render(DocumentationPage.AspectRatioEnumView(article: article))

        case "blur-level":
            return try await request.htmlkit.render(DocumentationPage.BlurLevelEnumView(article: article))
            
        case "grayscale-depth":
            return try await request.htmlkit.render(DocumentationPage.GrayscaleDepthEnumView(article: article))
            
        case "brightness-level":
            return try await request.htmlkit.render(DocumentationPage.BrightnessLevelEnumView(article: article))
            
        case "saturation-level":
            return try await request.htmlkit.render(DocumentationPage.SaturationLevelEnumView(article: article))
            
        case "contrast-level":
            return try await request.htmlkit.render(DocumentationPage.ConstrastLevelEnumView(article: article))
            
        case "list-space":
            return try await request.htmlkit.render(DocumentationPage.ListSpaceEnumView(article: article))
            
        case "shadow-color":
            return try await request.htmlkit.render(DocumentationPage.ShadowColorEnumView(article: article))
            
        case "border-width":
            return try await request.htmlkit.render(DocumentationPage.BorderWidthEnumView(article: article))
            
        case "inner-radius":
            return try await request.htmlkit.render(DocumentationPage.InnerRadiusEnumView(article: article))
            
        default:
            return try await request.htmlkit.render(DocumentationPage.EnumerationView(article: article))
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
        
        return try await request.htmlkit.render(DocumentationPage.InitializerView(article: article))
    }
}

extension DocumentationPageController: RouteCollection {
    
    func boot(routes: RoutesBuilder) throws {
        
        routes.group("documentation") { routes in
    
            routes.get("", use: getIndex)
            routes.get(":slug", use: getArticle)
            routes.get("method", ":slug", use: self.getMethod)
            routes.get("enumeration", ":slug", use: self.getEnum)
            routes.get("structure", ":slug", use: self.getStructure)
            routes.get("initializer", ":slug", use: self.getInitializer)
        }
    }
}
