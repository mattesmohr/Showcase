import HTMLKit
import HTMLKitComponents

struct ViewContainer: View {
    
    var content: [Content]
    
    init(@ContentBuilder<Content> content: () -> [Content]) {
        self.content = content()
    }
    
    var body: Content {
        PageContainer {
            HStack(alignment: .top) {
                VStack(spacing: .small) {
                    List(direction: .vertical) {
                        Link(destination: "/components/index") {
                            Text {
                                "Introduction"
                            }
                            .foregroundColor(.white)
                        }
                    }
                    .frame(width: .twelve)
                    Text {
                        "Submission"
                    }
                    .fontSize(.small)
                    .fontWeight(.bold)
                    .foregroundColor(.accent)
                    .textCase(.uppercase)
                    List(direction: .vertical) {
                        Link(destination: "/components/form") {
                            Text {
                                "Form"
                            }
                            .foregroundColor(.white)
                        }
                        Link(destination: "/components/field") {
                            Text {
                                "Fields"
                            }
                            .foregroundColor(.white)
                        }
                        Link(destination: "/components/button") {
                            Text {
                                "Button"
                            }
                            .foregroundColor(.white)
                        }
                    }
                    .frame(width: .twelve)
                    Text {
                        "Type"
                    }
                    .fontSize(.small)
                    .fontWeight(.bold)
                    .foregroundColor(.accent)
                    .textCase(.uppercase)
                    List(direction: .vertical) {
                        Link(destination: "/components/text") {
                            Text {
                                "Text"
                            }
                            .foregroundColor(.white)
                        }
                        Link(destination: "/components/symbol") {
                            Text {
                                "Symbol"
                            }
                            .foregroundColor(.white)
                        }
                        Link(destination: "/components/color") {
                            Text {
                                "Color"
                            }
                            .foregroundColor(.white)
                        }
                    }
                    .frame(width: .twelve)
                    Text {
                        "Content"
                    }
                    .fontSize(.small)
                    .fontWeight(.bold)
                    .foregroundColor(.accent)
                    .textCase(.uppercase)
                    List(direction: .vertical) {
                        Link(destination: "/components/image") {
                            Text {
                                "Image"
                            }
                            .foregroundColor(.white)
                        }
                        Link(destination: "/components/card") {
                            Text {
                                "Card"
                            }
                            .foregroundColor(.white)
                        }
                        Link(destination: "/components/snippet") {
                            Text {
                                "Snippet"
                            }
                            .foregroundColor(.white)
                        }
                    }
                    .frame(width: .twelve)
                    Text {
                        "Layout"
                    }
                    .fontSize(.small)
                    .fontWeight(.bold)
                    .foregroundColor(.accent)
                    .textCase(.uppercase)
                    List(direction: .vertical) {
                        Link(destination: "/components/stack") {
                            Text {
                                "Stack"
                            }
                            .foregroundColor(.white)
                        }
                        Link(destination: "/components/grid") {
                            Text {
                                "Grid"
                            }
                            .foregroundColor(.white)
                        }
                        Link(destination: "/components/list") {
                            Text {
                                "List"
                            }
                            .foregroundColor(.white)
                        }
                    }
                    .frame(width: .twelve)
                    Text {
                        "Embedded"
                    }
                    .fontSize(.small)
                    .fontWeight(.bold)
                    .foregroundColor(.accent)
                    .textCase(.uppercase)
                    List(direction: .vertical) {
                        Link(destination: "/components/scroll") {
                            Text {
                                "Scroll"
                            }
                            .foregroundColor(.white)
                        }
                        Link(destination: "/components/dropdown") {
                            Text {
                                "Dropdown"
                            }
                            .foregroundColor(.white)
                        }
                        Link(destination: "/components/modal") {
                            Text {
                                "Modal"
                            }
                            .foregroundColor(.white)
                        }

                    }
                    .frame(width: .twelve)
                    Text {
                        "Interaction"
                    }
                    .fontSize(.small)
                    .fontWeight(.bold)
                    .foregroundColor(.accent)
                    .textCase(.uppercase)
                    List(direction: .vertical) {
                        Link(destination: "/components/action") {
                            Text {
                                "Action"
                            }
                            .foregroundColor(.white)
                        }
                    }
                    .frame(width: .twelve)
                }
                .frame(width: .two)
                VStack(spacing: .small) {
                    content
                }
                .frame(width: .ten)
                .padding()
            }
        }
    }
}
