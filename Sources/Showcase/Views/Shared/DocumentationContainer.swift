import HTMLKit
import HTMLKitComponents

struct DocumentationContainer: View {
    
    var content: [Content]
    
    init(@ContentBuilder<Content> content: () -> [Content]) {
        
        self.content = content()
    }
    
    var body: Content {
        PageContainer {
            Header {
                Text {
                    "Documentation"
                }
                .fontSize(.large)
            }
            Section {
                HStack(alignment: .top, spacing: .small) {
                    VStack(spacing: .small) {
                        Button(role: .button) {
                            "Search"
                        }
                        .borderShape(.smallrounded)
                        .tag("button")
                        .onClick { action in
                            action.open("modal")
                        }
                        List(direction: .vertical) {
                            Link(destination: "/documentation") {
                                Text {
                                    "Introduction"
                                }
                            }
                            Link(destination: "#") {
                                Text {
                                    "Components"
                                }
                            }
                            Link(destination: "#") {
                                Text {
                                    "Templates"
                                }
                            }
                            Link(destination: "#") {
                                Text {
                                    "Security"
                                }
                            }
                        }
                        .listSpacing(.small)
                    }
                    .frame(width: .two)
                    VStack(spacing: .small) {
                        content
                    }
                    .frame(width: .nine)
                }
                .frame(width: .twelve)
                Modal {
                    VStack(spacing: .small) {
                        TextField(name: "filter", prompt: "Search for symbols, articles...")
                            .borderShape(.smallrounded)
                        Scroll {
                            VStack {
                            }
                        }
                    }
                    .frame(width: .twelve, height: .twelve)
                    .tag("documentation")
                }
                .borderShape(.smallrounded)
                .tag("modal")
            }
        }
    }
}
