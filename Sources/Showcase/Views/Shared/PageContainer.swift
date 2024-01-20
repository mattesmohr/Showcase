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
                    .reference("/highlight/highlight.css")
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
                    HStack(spacing: .between) {
                        Link(destination: "/home/index") {
                            "Showcase"
                        }
                        .fontSize(.large)
                        .foregroundColor(.white)
                        .bold()
                        Link(destination: "/components/index") {
                            "Components"
                        }
                        .foregroundColor(.white)
                    }
                }
                Main {
                    content
                }
                Footer {
                    HStack {
                        Text {
                            "2023 Showcase"
                        }
                        .foregroundColor(.white)
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
