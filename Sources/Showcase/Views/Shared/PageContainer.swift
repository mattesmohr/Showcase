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
                Script {
                }
                .source("/htmlkit/query.js")
            }
            Body {
                Header {
                    HStack {
                        Link(destination: "/home/index") {
                            "Showcase"
                        }
                        .fontSize(.large)
                        .bold()
                    }
                    .contentSpace(.between)
                }
                Main {
                    content
                }
                Footer {
                    HStack {
                        Text {
                            "2023 Showcase"
                        }
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
