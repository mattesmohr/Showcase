import HTMLKit
import HTMLKitComponents

struct SymbolExample: View {
    
    var body: Content {
        ViewContainer {
            HStack(alignment: .top) {
                VStack {
                    VStack {
                        Text {
                            "Symbols"
                        }
                        .fontSize(.large)
                        .foregroundColor(.primary)
                        Text {
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet."
                        }
                        .fontSize(.medium)
                    }
                    .contentSpace(.small)
                    VStack {
                        Grid(ratio: .fifth) {
                            SymbolView {
                                Symbol(system: "bookmark")
                            }
                            SymbolView {
                                Symbol(system: "calendar")
                            }
                            SymbolView {
                                Symbol(system: "chart.pie")
                            }
                            SymbolView {
                                Symbol(system: "clock")
                            }
                            SymbolView {
                                Symbol(system: "cloud")
                            }
                            SymbolView {
                                Symbol(system: "envelope")
                            }
                            SymbolView {
                                Symbol(system: "file")
                            }
                            SymbolView {
                                Symbol(system: "folder")
                            }
                            SymbolView {
                                Symbol(system: "house")
                            }
                            SymbolView {
                                Symbol(system: "lifepreserver")
                            }
                            SymbolView {
                                Symbol(system: "location")
                            }
                            SymbolView {
                                Symbol(system: "lock")
                            }
                            SymbolView {
                                Symbol(system: "person")
                            }
                            SymbolView {
                                Symbol(system: "photo")
                            }
                            SymbolView {
                                Symbol(system: "scope")
                            }
                            SymbolView {
                                Symbol(system: "sidebar.left")
                            }
                            SymbolView {
                                Symbol(system: "sidebar.right")
                            }
                            SymbolView {
                                Symbol(system: "square.split")
                            }
                            SymbolView {
                                Symbol(system: "target")
                            }
                            SymbolView {
                                Symbol(system: "text.aligncenter")
                            }
                            SymbolView {
                                Symbol(system: "text.alignjustify")
                            }
                            SymbolView {
                                Symbol(system: "text.alignleft")
                            }
                            SymbolView {
                                Symbol(system: "text.alignright")
                            }
                            SymbolView {
                                Symbol(system: "tresor")
                            }
                            SymbolView {
                                Symbol(system: "window.maximize")
                            }
                            SymbolView {
                                Symbol(system: "window.minimize")
                            }
                        }
                        .contentSpace(.small)
                    }
                    .contentSpace(.small)
                    VStack {
                        Text {
                            "Font size"
                        }
                        .fontSize(.medium)
                        .foregroundColor(.primary)
                        Text {
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo."
                        }
                        ScrollView(direction: .horizontal) {
                            for size in Tokens.FontSize.allCases {
                                ExampleView {
                                    Symbol(system: "house")
                                        .fontSize(size)
                                }
                            }
                        }
                        Snippet(highlight: .plaintext) {
                            """
                            Symbol(system: .house)
                                .fontSize(.large)
                            """
                        }
                        .backgroundColor(.custom("control-background"))
                        .borderColor(.custom("control-border"))
                        .borderShape(.smallrounded)
                    }
                    .contentSpace(.small)
                    .tag("size")
                    VStack {
                        Text {
                            "Color tones"
                        }
                        .fontSize(.medium)
                        .foregroundColor(.primary)
                        Text {
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo."
                        }
                    }
                    .contentSpace(.small)
                    .tag("tone")
                }
                .frame(width: .nine)
                .contentSpace(.large)
                .padding()
                VStack {
                    Text {
                        "Quick navigation"
                    }
                    .fontSize(.medium)
                    List(direction: .vertical) {
                        Link(destination: "#size") {
                            "Font size"
                        }
                        Link(destination: "#tone") {
                            "Color tone"
                        }
                    }
                    .frame(width: .twelve)
                }
                .frame(width: .three)
                .padding()
            }
        }
    }
}
