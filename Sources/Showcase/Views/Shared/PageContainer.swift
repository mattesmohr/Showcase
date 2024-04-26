import HTMLKit
import HTMLKitComponents

public struct PageContainer: View {
    
    public var content: [BodyElement]
    
    public init(@ContentBuilder<BodyElement> content: () -> [BodyElement]) {
        self.content = content()
    }

    public var body: Content {
        Document(.html5)
        Html {
            Head {
                Meta()
                    .charset(.utf8)
                Meta()
                    .name(.viewport)
                    .content("width=device-width, initial-scale=1.0")
                Title {
                    "Showcase"
                }
                Link()
                    .relationship(.stylesheet)
                    .reference("/htmlkit/all.css")
                Link()
                    .relationship(.stylesheet)
                    .reference("/css/page.css")
                Link()
                    .relationship(.stylesheet)
                    .reference("/highlight/swift.css")
                Script {
                }
                .source("/htmlkit/query.js")
                Script {
                }
                .source("/highlight/highlight.js")
                Script {
                }
                .source("/highlight/swift.js")
            }
            Body {
                Header {
                    Section {
                        HStack(spacing: .between) {
                            Link(destination: "/home") {
                                Text {
                                    "HTMLKit"
                                }
                                .fontSize(.large)
                                .bold()
                            }
                            List(direction: .horizontal) {
                                Link(destination: "/documentation") {
                                    Text {
                                        "Documentation"
                                    }
                                }
                                Link(destination: "/blog") {
                                    Text {
                                        "Blog"
                                    }
                                }
                                LinkButton(destination: "/downloads") {
                                    Text {
                                        "Download"
                                    }
                                }
                                .buttonStyle(.primary)
                                .borderShape(.smallrounded)
                                .margin(insets: .leading, length: .large)
                            }
                            .listSpacing(.small)
                        }
                    }
                }
                Main {
                    content
                }
                Footer {
                    Section {
                        HStack(alignment: .top, spacing: .between) {
                            VStack {
                                Text {
                                    "HTMLKit"
                                }
                                .bold()
                                Text {
                                    "A Vapor community project licensed under the MIT."
                                }
                            }
                            HStack(alignment: .top) {
                                VStack {
                                    Text {
                                        "Community"
                                    }
                                    .fontSize(.small)
                                    .textCase(.uppercase)
                                    .bold()
                                    List(direction: .vertical) {
                                        Link(destination: "https://github.com/vapor-community/HTMLKit/issues", target: .blank) {
                                            Text {
                                                "Issues"
                                            }
                                        }
                                        Link(destination: "https://github.com/vapor-community/HTMLKit/discussions", target: .blank) {
                                            Text {
                                                "Discussions"
                                            }
                                        }
                                        Link(destination: "https://github.com/vapor-community/HTMLKit/releases", target: .blank) {
                                            Text {
                                                "Releases"
                                            }
                                        }
                                    }
                                }
                                VStack {
                                    Text {
                                        "Resources"
                                    }
                                    .fontSize(.small)
                                    .textCase(.uppercase)
                                    .bold()
                                    List(direction: .vertical) {
                                        Link(destination: "/tool") {
                                            Text {
                                                "Tools"
                                            }
                                        }
                                        Link(destination: "/documentation") {
                                            Text {
                                                "Documentation"
                                            }
                                        }
                                        Link(destination: "/tutorial") {
                                            Text {
                                                "Tutorials"
                                            }
                                        }
                                        Link(destination: "/example") {
                                            Text {
                                                "Examples"
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        .padding(insets: .vertical)
                        HStack(spacing: .between) {
                            Text {
                                "2024 HTMLKit"
                            }
                            Link(destination: "https://github.com/vapor-community/HTMLKit", target: .blank) {
                                Image(source: "/assets/github.svg")
                            }
                            List(direction: .horizontal) {
                                Link(destination: "/legal") {
                                    Text {
                                        "Legal"
                                    }
                                }
                                Link(destination: "/privacy") {
                                    Text {
                                        "Privacy"
                                    }
                                }
                            }
                            .listSpacing(.small)
                        }
                        .padding(insets: .vertical)
                    }
                }
                Script {
                }
                .source("/htmlkit/all.js")
                Script {
                }
                .source("/js/page.js")
            }
        }
    }
}
