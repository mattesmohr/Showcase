import HTMLKit
import HTMLKitComponents

enum BlogPage {
    
    struct IndexView: View {
        
        var articles: [BlogArticle]

        var body: Content {
            PageContainer {
                Header {
                    Text {
                        "Blog"
                    }
                    .fontSize(.large)
                    .foregroundColor(.accent)
                }
                Section {
                    Grid(ratio: .third, spacing: .small) {
                        for article in articles {
                            VStack(spacing: .small) {
                                ThumbnailView {
                                    Image(source: "/assets/test.svg")
                                }
                                .frame(width: .twelve)
                                Text {
                                    article.title
                                }
                                .fontSize(.large)
                                .foregroundColor(.accent)
                                Text {
                                    article.excerpt
                                }
                                Link(destination: "/blog/\(article.slug)") {
                                    "Read more"
                                }
                                .foregroundColor(.accent)
                            }
                        }
                    }
                }
            }
        }
    }
    
    struct ShowView: View {
        
        var article: BlogArticle

        var body: Content {
            PageContainer {
                Header {
                    Text {
                        "Blog"
                    }
                    .fontSize(.large)
                    .foregroundColor(.accent)
                }
                Section {
                    VStack(spacing: .large) {
                        Text {
                            article.title
                        }
                        Text {
                            article.content
                        }
                    }
                }
            }
        }
    }
}
