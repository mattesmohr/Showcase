import Vapor

struct ToolModel: Content {
    
    struct Input: Content {
        
        var source: String
    }
    
    struct Output: Content {
        
        var source: String
        var target: String
    }
}

struct TutorialViewModel {
    
    var tutorials: [Tutorial]
}

struct Tutorial: Codable {
    
    let slug: String
    let title: String
    let description: String
    let sections: [TutorialSection]
}

struct TutorialSection: Codable {
    
    let title: String
    let description: String
    let steps: [TutorialStep]
}

struct TutorialStep: Codable {
    
    let index: Int
    let description: String
    let note: String?
    var code: TutorialCode?
}

struct TutorialCode: Codable {
    
    let code: String
    let highlight: [Int]
}

struct ApiPath: Codable {
    
    let name: String
    let link: String
}

struct ApiArticle: Codable {
    
    enum ArticleType: String, Codable {
        case structure
        case enumeration
        case method
        case initializer
        case article
    }
    
    let slug: String
    let path: [ApiPath]
    let title: String
    let type: ArticleType
    let description: String
    var topics: [ApiTopic]
    let platforms: [String]
    let targets: [String]
    let annotation: ApiAnnotation?
    let snippet: String?
    let conformance: [String]?
}

struct ApiConformance: Codable {
    
    let name: String
}

struct ApiProtocol: Codable {
    
    let name: String
    let type: String
    let symbols: [ApiSymbol]
}

struct ApiTopic: Codable {
    
    let title: String
    var symbols: [ApiSymbol]
    
    init(title: String) {
        
        self.title = title
        self.symbols = []
    }
}

struct ApiSymbol: Codable {
    
    enum SymbolType: String, Codable {
        case method
        case parameter
        case initializer
        case enumeration
        case `case`
    }
    
    let code: String
    var comment: String?
    let type: SymbolType
    let reference: String?
    let annotation: ApiAnnotation?
}

struct ApiAnnotation: Codable {
    
    let status: String
    let message: String
}

struct BlogArticle: Codable {
    
    let slug: String
    let title: String
    let subtitle: String
    let excerpt: String
    let content: String
    let author: BlogAuthor
    let published: Date
    let articles: [BlogArticle]?
}

struct BlogAuthor: Codable {
    
    let name: String
    let position: String
}
