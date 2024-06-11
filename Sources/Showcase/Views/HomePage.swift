import HTMLKit
import HTMLKitComponents

enum HomePage {
    
    struct IndexView: View {
        
        var body: Content {
            PageContainer {
                Header {
                    Carousel {
                        Slide {
                            Text {
                                "Slide One"
                            }
                            .foregroundColor(.accent)
                        }
                        .tag("slide_1")
                        Slide {
                            Text {
                                "Slide Two"
                            }
                            .foregroundColor(.accent)
                        }
                        .tag("slide_2")
                    }
                    .borderShape(.smallrounded)
                    .frame(width: .twelve)
                }
                Section {
                    VStack(spacing: .large) {
                        VStack(alignment: .center) {
                            Text {
                                "Learn about"
                            }
                            .fontSize(.large)
                            .bold()
                            Text(alignment: .center) {
                                "Browse the latest documentation, wich provides you with comprehensive details about the features and functionalities of HTMLKit."
                            }
                            .fontSize(.medium)
                        }
                        HStack(alignment: .center, spacing: .large) {
                            VStack(spacing: .small) {
                                Text {
                                    "Declarative framework"
                                }
                                .fontSize(.large)
                                Text {
                                    MarkdownString {
                                        "Explore a declarative framework, that lets you write HTML directly in Swift. You gain the advantages of Swift's strong typing, safety features, and expressive syntax, resulting in more maintainable and error-resistant code."
                                    }
                                }
                            }
                            .frame(width: .six)
                            ThumbnailView {
                            }
                            .frame(width: .six)
                        }
                        HStack(alignment: .center, spacing: .large) {
                            ThumbnailView {
                            }
                            .frame(width: .six)
                            VStack(spacing: .small) {
                                Text {
                                    "Unified codebase"
                                }
                                .fontSize(.large)
                                Text {
                                    MarkdownString {
                                        "Alongside web frameworks like Vapor or Hummingbird, as an additional frontend option for your web application. Eliminating the need to switch between different languages and environments, creating a cohesive and efficient experience."
                                    }
                                }
                            }
                            .frame(width: .six)
                        }
                        HStack(alignment: .center, spacing: .large) {
                            VStack(spacing: .small) {
                                Text {
                                    "Community driven"
                                }
                                .fontSize(.large)
                                Text {
                                    MarkdownString {
                                        "Built by the community, who are passionate about the Swift language and web development to bring this two worlds together."
                                    }
                                }
                            }
                            .frame(width: .six)
                            ThumbnailView {
                            }
                            .frame(width: .six)
                        }
                    }
                }
                Footer {
                    VStack(spacing: .large) {
                        VStack(alignment: .center) {
                            Text {
                                "Start developing"
                            }
                            .fontSize(.large)
                            .bold()
                            Text(alignment: .center) {
                                "Browse the latest documentation, wich provides you with comprehensive details about the features and functionalities of HTMLKit."
                            }
                            .fontSize(.medium)
                        }
                        HStack(alignment: .top, spacing: .small) {
                            VStack(spacing: .small) {
                                ThumbnailView {
                                }
                                .frame(width: .twelve)
                                Text {
                                    "Documentation"
                                }
                                .fontSize(.large)
                                Text {
                                    "Browse the latest documentation, wich provides you with comprehensive details about the features and functionalities of HTMLKit."
                                }
                                Link(destination: "/documentation") {
                                    Text {
                                        "Read more"
                                    }
                                }
                                .foregroundColor(.accent)
                            }
                            VStack(spacing: .small) {
                                ThumbnailView {
                                }
                                .frame(width: .twelve)
                                Text {
                                    "Tutorials"
                                }
                                .fontSize(.large)
                                Text {
                                    "Follow the step by step instructions to understand how to integrate and utilize HTMLKit effectively into your applications."
                                }
                                Link(destination: "/tutorial") {
                                    Text {
                                        "Read more"
                                    }
                                }
                                .foregroundColor(.accent)
                            }
                            VStack(spacing: .small) {
                                ThumbnailView {
                                }
                                .frame(width: .twelve)
                                Text {
                                    "Examples"
                                }
                                .fontSize(.large)
                                Text {
                                    "Explore live examples and see the capabilities of HTMLKit in action."
                                }
                                Link(destination: "/example") {
                                    Text {
                                        "Read more"
                                    }
                                }
                                .frame(width: .twelve)
                                .foregroundColor(.accent)
                            }
                        }
                    }
                }
            }
        }
    }
}
