import HTMLKitVapor
import Vapor

// [/reference]
struct ReferencePageController {
    
    // [/]
    @Sendable
    func getIndex(_ request: Request) async throws -> View {
        return try await request.htmlkit.render(ReferencePage.IndexView())
    }
    
    // [/:slug]
    @Sendable
    func getReference(_ request: Request) async throws -> View {
        
        guard let slug = request.parameters.get("slug") else {
            throw Abort(.badRequest)
        }
        
        guard let url = Bundle.module.url(forResource: "symbols", withExtension: "json") else {
            throw Abort(.internalServerError)
        }
        
        let references = try JSONDecoder().decode([Reference].self, from: Data(contentsOf: url))
        
        guard let reference = references.filter({ $0.type == .article && $0.slug == slug }).first else {
            throw Abort(.notFound)
        }
        
        switch slug {
        case "elements":
            return try await request.htmlkit.render(ReferencePage.ElementsArticleView(reference: reference))
            
        case "components":
            return try await request.htmlkit.render(ReferencePage.ComponentsArticleView(reference: reference))
            
        case "localization":
            return try await request.htmlkit.render(ReferencePage.LocalizationArticleView(reference: reference))
            
        case "environment":
            return try await request.htmlkit.render(ReferencePage.EnvironmentArticleView(reference: reference))
            
        case "security":
            return try await request.htmlkit.render(ReferencePage.SecurityArticleView(reference: reference))
            
        default:
            return try await request.htmlkit.render(ReferencePage.ArticleView(reference: reference))
        }
    }
    
    // [/structure/:slug]
    @Sendable
    func getStructure(_ request: Request) async throws -> View {
        
        guard let slug = request.parameters.get("slug") else {
            throw Abort(.badRequest)
        }
        
        guard let url = Bundle.module.url(forResource: "symbols", withExtension: "json") else {
            throw Abort(.internalServerError)
        }
        
        let references = try JSONDecoder().decode([Reference].self, from: Data(contentsOf: url))
        
        guard var reference = references.filter({ $0.type == .structure && $0.slug == slug }).first else {
            throw Abort(.notFound)
        }
        
        if let conformance = reference.conformance {
            
            var topic = Topic(title: "Conformance")
            
            guard let url = Bundle.module.url(forResource: "conformances", withExtension: "json") else {
                throw Abort(.internalServerError)
            }
            
            let conformances = try JSONDecoder().decode([Conformance].self, from: Data(contentsOf: url))
            
            for name in conformance {
                
                guard let filter = conformances.filter({ $0.name == name }).first else {
                    throw Abort(.notFound)
                }
                
                topic.symbols.append(contentsOf: filter.symbols)
            }
            
            reference.topics.append(topic)
        }
        
        switch slug {
        case "alert":
            return try await request.htmlkit.render(ReferencePage.AlertView(reference: reference))
            
        case "button":
            return try await request.htmlkit.render(ReferencePage.ButtonView(reference: reference))
            
        case "card":
            return try await request.htmlkit.render(ReferencePage.CardView(reference: reference))
            
        case "chart":
            return try await request.htmlkit.render(ReferencePage.ChartView(reference: reference))
            
        case "dropdown":
            return try await request.htmlkit.render(ReferencePage.DropdownView(reference: reference))
            
        case "grid":
            return try await request.htmlkit.render(ReferencePage.GridView(reference: reference))
            
        case "hstack":
            return try await request.htmlkit.render(ReferencePage.HStackView(reference: reference))
            
        case "vstack":
            return try await request.htmlkit.render(ReferencePage.VStackView(reference: reference))
            
        case "zstack":
            return try await request.htmlkit.render(ReferencePage.ZStackView(reference: reference))
            
        case "image":
            return try await request.htmlkit.render(ReferencePage.ImageView(reference: reference))
            
        case "list":
            return try await request.htmlkit.render(ReferencePage.ListView(reference: reference))
            
        case "modal":
            return try await request.htmlkit.render(ReferencePage.ModalView(reference: reference))
            
        case "text":
            return try await request.htmlkit.render(ReferencePage.TextView(reference: reference))
            
        case "scroll":
            return try await request.htmlkit.render(ReferencePage.ScrollView(reference: reference))
            
        case "snippet":
            return try await request.htmlkit.render(ReferencePage.SnippetView(reference: reference))
            
        case "symbol":
            return try await request.htmlkit.render(ReferencePage.SymbolView(reference: reference))
            
        case "textfield":
            return try await request.htmlkit.render(ReferencePage.TextFieldView(reference: reference))
            
        case "texteditor":
            return try await request.htmlkit.render(ReferencePage.TextEditorView(reference: reference))
            
        case "textpad":
            return try await request.htmlkit.render(ReferencePage.TextPadView(reference: reference))
            
        case "securefield":
            return try await request.htmlkit.render(ReferencePage.SecureFieldView(reference: reference))
            
        case "selectfield":
            return try await request.htmlkit.render(ReferencePage.SelectFieldView(reference: reference))
            
        case "checkfield":
            return try await request.htmlkit.render(ReferencePage.CheckFieldView(reference: reference))
            
        case "radioselect":
            return try await request.htmlkit.render(ReferencePage.RadioSelectView(reference: reference))
            
        case "slider":
            return try await request.htmlkit.render(ReferencePage.SliderView(reference: reference))
            
        case "datepicker":
            return try await request.htmlkit.render(ReferencePage.DatePickerView(reference: reference))
            
        case "filedialog":
            return try await request.htmlkit.render(ReferencePage.FieldDialogView(reference: reference))
            
        case "tabs":
            return try await request.htmlkit.render(ReferencePage.TabView(reference: reference))
            
        case "carousel":
            return try await request.htmlkit.render(ReferencePage.CarouselView(reference: reference))
            
        case "sectormark":
            return try await request.htmlkit.render(ReferencePage.SectorMarkView(reference: reference))
            
        case "barmark":
            return try await request.htmlkit.render(ReferencePage.BarMarkView(reference: reference))
            
        case "progress":
            return try await request.htmlkit.render(ReferencePage.ProgressView(reference: reference))
            
        case "grouping":
            return try await request.htmlkit.render(ReferencePage.GroupingView(reference: reference))
            
        case "link":
            return try await request.htmlkit.render(ReferencePage.LinkView(reference: reference))
            
        case "disclosure":
            return try await request.htmlkit.render(ReferencePage.DisclosureView(reference: reference))
            
        case "video":
            return try await request.htmlkit.render(ReferencePage.VideoView(reference: reference))
            
        default:
            return try await request.htmlkit.render(ReferencePage.StructureView(reference: reference))
        }
    }
    
    // [/method/:slug]
    @Sendable
    func getMethod(_ request: Request) async throws -> View {
        
        guard let slug = request.parameters.get("slug") else {
            throw Abort(.badRequest)
        }
        
        guard let url = Bundle.module.url(forResource: "symbols", withExtension: "json") else {
            throw Abort(.internalServerError)
        }
        
        let references = try JSONDecoder().decode([Reference].self, from: Data(contentsOf: url))
        
        guard let reference = references.filter({ $0.type == .method && $0.slug == slug }).first else {
            throw Abort(.notFound)
        }
        
        return try await request.htmlkit.render(ReferencePage.MethodView(reference: reference))
    }
    
    // [/enumeration/:slug]
    @Sendable
    func getEnum(_ request: Request) async throws -> View {
        
        guard let slug = request.parameters.get("slug") else {
            throw Abort(.badRequest)
        }
        
        guard let url = Bundle.module.url(forResource: "symbols", withExtension: "json") else {
            throw Abort(.internalServerError)
        }
        
        let references = try JSONDecoder().decode([Reference].self, from: Data(contentsOf: url))
        
        guard let reference = references.filter({ $0.type == .enumeration && $0.slug == slug }).first else {
            throw Abort(.notFound)
        }
        
        switch slug {
        case "font-family":
            return try await request.htmlkit.render(ReferencePage.FontFamilyEnumView(reference: reference))
            
        case "text-style":
            return try await request.htmlkit.render(ReferencePage.TextStyleEnumView(reference: reference))
            
        case "flow-direction":
            return try await request.htmlkit.render(ReferencePage.FlowDirectionEnumView(reference: reference))
            
        case "text-alignment":
            return try await request.htmlkit.render(ReferencePage.TextAlignmentEnumView(reference: reference))
            
        case "foreground-color":
            return try await request.htmlkit.render(ReferencePage.ForegroundColorEnumView(reference: reference))
            
        case "font-size":
            return try await request.htmlkit.render(ReferencePage.FontSizeEnumView(reference: reference))
            
        case "text-case":
            return try await request.htmlkit.render(ReferencePage.TextCaseEnumView(reference: reference))
            
        case "font-weight":
            return try await request.htmlkit.render(ReferencePage.FontWeightEnumView(reference: reference))
            
        case "text-decoration":
            return try await request.htmlkit.render(ReferencePage.TextDecorationEnumView(reference: reference))
            
        case "font-style":
            return try await request.htmlkit.render(ReferencePage.FontStyleEnumView(reference: reference))
            
        case "background-color":
            return try await request.htmlkit.render(ReferencePage.BackgroundColorEnumView(reference: reference))
            
        case "object-fit":
            return try await request.htmlkit.render(ReferencePage.ObjectFitEnumView(reference: reference))
            
        case "opacity-value":
            return try await request.htmlkit.render(ReferencePage.OpacityValueEnumView(reference: reference))
            
        case "image-scale":
            return try await request.htmlkit.render(ReferencePage.ImageScaleEnumView(reference: reference))
            
        case "clip-shape":
            return try await request.htmlkit.render(ReferencePage.ClipShapeEnumView(reference: reference))
            
        case "content-space":
            return try await request.htmlkit.render(ReferencePage.ContentSpaceEnumView(reference: reference))
            
        case "border-shape":
            return try await request.htmlkit.render(ReferencePage.BorderShapeEnumView(reference: reference))
            
        case "grid-ratio":
            return try await request.htmlkit.render(ReferencePage.GridRatioEnumView(reference: reference))
            
        case "border-color":
            return try await request.htmlkit.render(ReferencePage.BorderColorEnumView(reference: reference))
            
        case "color-scheme":
            return try await request.htmlkit.render(ReferencePage.ColorSchemeEnumView(reference: reference))
            
        case "padding-length":
            return try await request.htmlkit.render(ReferencePage.PaddingLengthEnumView(reference: reference))
            
        case "margin-length":
            return try await request.htmlkit.render(ReferencePage.MarginLengthEnumView(reference: reference))
            
        case "aspect-ratio":
            return try await request.htmlkit.render(ReferencePage.AspectRatioEnumView(reference: reference))

        case "blur-level":
            return try await request.htmlkit.render(ReferencePage.BlurLevelEnumView(reference: reference))
            
        case "grayscale-depth":
            return try await request.htmlkit.render(ReferencePage.GrayscaleDepthEnumView(reference: reference))
            
        case "brightness-level":
            return try await request.htmlkit.render(ReferencePage.BrightnessLevelEnumView(reference: reference))
            
        case "saturation-level":
            return try await request.htmlkit.render(ReferencePage.SaturationLevelEnumView(reference: reference))
            
        case "contrast-level":
            return try await request.htmlkit.render(ReferencePage.ConstrastLevelEnumView(reference: reference))
            
        case "list-space":
            return try await request.htmlkit.render(ReferencePage.ListSpaceEnumView(reference: reference))
            
        case "shadow-color":
            return try await request.htmlkit.render(ReferencePage.ShadowColorEnumView(reference: reference))
            
        case "border-width":
            return try await request.htmlkit.render(ReferencePage.BorderWidthEnumView(reference: reference))
            
        case "inner-radius":
            return try await request.htmlkit.render(ReferencePage.InnerRadiusEnumView(reference: reference))
            
        case "progress-style":
            return try await request.htmlkit.render(ReferencePage.ProgressStyleEnumView(reference: reference))
            
        case "tint-color":
            return try await request.htmlkit.render(ReferencePage.TintColorEnumView(reference: reference))
            
        case "symbol-name":
            return try await request.htmlkit.render(ReferencePage.SymbolNameEnumView(reference: reference))
            
        case "navigation-style":
            return try await request.htmlkit.render(ReferencePage.NavigationStyleEnumView(reference: reference))
            
        case "button-style":
            return try await request.htmlkit.render(ReferencePage.ButtonStyleEnumView(reference: reference))
            
        default:
            return try await request.htmlkit.render(ReferencePage.EnumerationView(reference: reference))
        }
    }
    
    // [/initializer/:slug]
    @Sendable
    func getInitializer(_ request: Request) async throws -> View {
        
        guard let slug = request.parameters.get("slug") else {
            throw Abort(.badRequest)
        }
        
        guard let url = Bundle.module.url(forResource: "symbols", withExtension: "json") else {
            throw Abort(.internalServerError)
        }
        
        let references = try JSONDecoder().decode([Reference].self, from: Data(contentsOf: url))
        
        guard let reference = references.filter({ $0.type == .initializer && $0.slug == slug }).first else {
            throw Abort(.notFound)
        }
        
        return try await request.htmlkit.render(ReferencePage.InitializerView(reference: reference))
    }
}

extension ReferencePageController: RouteCollection {
    
    func boot(routes: RoutesBuilder) throws {
        
        routes.group("reference") { routes in
    
            routes.get("", use: getIndex)
            routes.get(":slug", use: getReference)
            routes.get("method", ":slug", use: self.getMethod)
            routes.get("enumeration", ":slug", use: self.getEnum)
            routes.get("structure", ":slug", use: self.getStructure)
            routes.get("initializer", ":slug", use: self.getInitializer)
        }
    }
}
