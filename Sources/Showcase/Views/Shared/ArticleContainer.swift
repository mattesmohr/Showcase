import HTMLKit
import HTMLKitComponents

struct ArticleContainer: View {
    
    var article: ApiArticle
    
    var content: [Content]
    
    init(article: ApiArticle, @ContentBuilder<Content> content: () -> [Content]) {
        
        self.article = article
        self.content = content()
    }
    
    var body: Content {
        HStack(alignment: .top, spacing: .large) {
            VStack(spacing: .large) {
                VStack(spacing: .small) {
                    HStack(spacing: .small) {
                        for (index, component) in article.path.enumerated() {
                            if index < (article.path.count - 1) {
                                Link(destination: component.link) {
                                    component.name
                                }
                                Text {
                                    "/"
                                }
                            } else {
                                Link(destination: component.link) {
                                    component.name
                                }
                            }
                        }
                    }
                    Text {
                        article.type.rawValue.capitalized
                    }
                    .foregroundColor(.gray)
                    Text {
                        article.title
                    }
                    .fontSize(.large)
                    .foregroundColor(.accent)
                    Text {
                        article.description
                    }
                    .fontSize(.medium)
                }
                VStack(spacing: .small) {
                    content
                    if let snippet = article.snippet {
                        Snippet(highlight: .html) {
                            snippet
                        }
                        .frame(width: .twelve)
                        .snippetStyle(SnippetStyle())
                    }
                }
                VStack(spacing: .large) {
                    for topic in article.topics {
                        Text {
                            topic.title
                        }
                        .fontSize(.medium)
                        .tag(topic.title)
                        for symbol in topic.symbols {
                            VStack {
                                if let reference = symbol.reference {
                                    Link(destination: "/documentation/\(symbol.type)/\(reference)") {
                                        Pre {
                                            Code {
                                                symbol.code.replacingOccurrences(of: "Self", with: article.title)
                                            }
                                        }
                                        .class("code")
                                    }
                                    Text {
                                        symbol.comment
                                        
                                    }
                                } else {
                                    Pre {
                                        Code {
                                            symbol.code
                                        }
                                    }
                                    .class("code")
                                    Text {
                                        symbol.comment
                                        
                                    }
                                }
                            }
                        }
                    }
                }
            }
            .frame(width: .nine)
            VStack {
                Text {
                    "Quick navigation"
                }
                .fontSize(.small)
                .textCase(.uppercase)
                .bold()
                List(direction: .vertical) {
                    for topic in article.topics {
                        Link(destination: "#\(topic.title)") {
                            Text {
                                topic.title
                            }
                        }
                    }
                }
            }
            .frame(width: .three)
        }
    }
}
