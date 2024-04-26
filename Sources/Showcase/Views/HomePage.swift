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
                    VStack(spacing: .small) {
                        Text {
                            MarkdownString {
                                "HTMLKit is a declarative HTML framework writtin in Swift. It helps you create and render HTML templates in a type-safe and performant way. It consists of a list of features, like **declarative syntax**, **language localization**, **dynamic context**."
                            }
                        }
                        .fontSize(.medium)
                        Text {
                            "Motivation"
                        }
                        .fontSize(.large)
                        .foregroundColor(.accent)
                        Text {
                            MarkdownString {
                                "HTMLKit aims to broaden Vapor's frontend capabilities while simplifying website creation for you."
                            }
                        }
                        .fontSize(.medium)
                    }
                }
                Footer {
                    HStack(spacing: .small) {
                        VStack(spacing: .small) {
                            ThumbnailView {
                            }
                            .frame(width: .twelve)
                            Text {
                                "Documentation"
                            }
                            .fontSize(.large)
                            .foregroundColor(.accent)
                            Text {
                                "Browse the latest API documentation."
                            }
                            Link(destination: "/documentation") {
                                "Read more"
                            }
                            .foregroundColor(.accent)
                        }
                        VStack(spacing: .small) {
                            ThumbnailView {
                                Image(source: "/assets/test.svg")
                            }
                            .frame(width: .twelve)
                            Text {
                                "Tutorials"
                            }
                            .fontSize(.large)
                            .foregroundColor(.accent)
                            Text {
                                "Follow the step by step instructions."
                            }
                            Link(destination: "/tutorial") {
                                "Read more"
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
                            .foregroundColor(.accent)
                            Text {
                                "See live examples."
                            }
                            Link(destination: "/example") {
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
