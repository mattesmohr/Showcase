import HTMLKit
import HTMLKitComponents

enum BlogPage {
    
    struct IndexView: View {
        
        var articles: [Article]

        var body: Content {
            PageContainer {
                Header {
                    Text {
                        "Blog"
                    }
                    .fontSize(.large)
                }
                Section {
                    Grid(ratio: .third, spacing: .small) {
                        for article in articles {
                            VStack(spacing: .small) {
                                ThumbnailView {
                                }
                                .frame(width: .twelve)
                                Text {
                                    article.title
                                }
                                .fontSize(.large)
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
        
        var article: Article

        var body: Content {
            PageContainer {
                Header {
                    Text {
                        article.title
                    }
                    .fontSize(.large)
                }
                Section {
                    VStack(spacing: .large) {
                        HStack(alignment: .top, spacing: .large) {
                            VStack(spacing: .large) {
                                ThumbnailView {
                                    
                                }
                                .frame(width: .twelve)
                                Text {
                                    MarkdownString(article.content)
                                }
                            }
                            .frame(width: .nine)
                            VStack {
                                HStack(spacing: .small) {
                                    Image(source: "/assets/author.png")
                                        .aspectRatio(.equal, fit: .cover)
                                        .imageScale(.small)
                                        .clipShape(.circle)
                                    VStack {
                                        Text {
                                            article.author.name
                                        }
                                        Text {
                                            article.author.position
                                        }
                                    }
                                }
                                Text {
                                    article.published.formatted(date: .long, time: .none)
                                }
                            }
                            .frame(width: .three)
                        }
                        if let articles = article.articles {
                            Scroll(showIndicators: true) {
                                HStack(spacing: .small) {
                                    for article in articles {
                                        VStack(spacing: .small) {
                                            Text {
                                                article.title
                                            }
                                            .fontSize(.large)
                                            Text {
                                                article.excerpt
                                            }
                                            Link(destination: "/blog/\(article.slug)") {
                                                "Read more"
                                            }
                                            .foregroundColor(.accent)
                                        }
                                        .frame(width: .six)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
