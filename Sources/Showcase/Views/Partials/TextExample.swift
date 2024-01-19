import HTMLKit
import HTMLKitComponents

struct TextExample: View {
    
    var body: Content {
        ViewContainer {
            HStack(alignment: .top) {
                VStack {
                    VStack {
                        Text {
                            "Text"
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
                        Text {
                            "Text style"
                        }
                        .fontSize(.medium)
                        .foregroundColor(.primary)
                        Text {
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo."
                        }
                        ScrollView(direction: .horizontal) {
                            for style in Tokens.TextStyle.allCases {
                                ExampleView {
                                    Text {
                                        "Title"
                                    }
                                    .font(style)
                                }
                            }
                        }
                        Snippet(highlight: .plaintext) {
                            """
                            Text {
                            }
                            .font(.body)
                            """
                        }
                        .backgroundColor(.custom("control-background"))
                        .borderColor(.custom("control-border"))
                        .borderShape(.smallrounded)
                    }
                    .tag("style")
                    .contentSpace(.small)
                    VStack {
                        Text {
                            "Font style"
                        }
                        .fontSize(.medium)
                        .foregroundColor(.primary)
                        Text {
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo."
                        }
                        ScrollView(direction: .horizontal) {
                            for style in Tokens.FontStyle.allCases {
                                ExampleView {
                                    Text {
                                        "Lorem ipsum"
                                    }
                                    .fontStyle(style)
                                }
                            }
                        }
                        Snippet(highlight: .plaintext) {
                            """
                            Text {
                            }
                            .fontStyle(.italic)
                            """
                        }
                        .backgroundColor(.custom("control-background"))
                        .borderColor(.custom("control-border"))
                        .borderShape(.smallrounded)
                    }
                    .tag("style")
                    .contentSpace(.small)
                    VStack {
                        Text {
                            "Font weight"
                        }
                        .fontSize(.medium)
                        .foregroundColor(.primary)
                        Text {
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo."
                        }
                        ScrollView(direction: .horizontal) {
                            for weight in Tokens.FontWeight.allCases {
                                ExampleView {
                                    Text {
                                        "Lorem ipsum"
                                    }
                                    .fontWeight(weight)
                                }
                            }
                        }
                        Snippet(highlight: .plaintext) {
                            """
                            Text {
                            }
                            .fontWeight(.light)
                            """
                        }
                        .backgroundColor(.custom("control-background"))
                        .borderColor(.custom("control-border"))
                        .borderShape(.smallrounded)
                    }
                    .tag("weight")
                    .contentSpace(.small)
                    VStack {
                        Text {
                            "Text case"
                        }
                        .fontSize(.medium)
                        .foregroundColor(.primary)
                        Text {
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo."
                        }
                        ScrollView(direction: .horizontal) {
                            for transformation in Tokens.TextTransformation.allCases {
                                ExampleView {
                                    Text {
                                        "Lowercase"
                                    }
                                    .fontTransformation(transformation)
                                }
                            }
                        }
                        Snippet(highlight: .plaintext) {
                            """
                            Text {
                            }
                            .fontTransformation(.uppercase)
                            """
                        }
                        .backgroundColor(.custom("control-background"))
                        .borderColor(.custom("control-border"))
                        .borderShape(.smallrounded)
                    }
                    .tag("transformation")
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
                                    Text {
                                        "Lorem ipsum"
                                    }
                                    .fontSize(size)
                                }
                            }
                        }
                        Snippet(highlight: .plaintext) {
                            """
                            Text {
                            }
                            .fontSize(.large)
                            """
                        }
                        .backgroundColor(.custom("control-background"))
                        .borderColor(.custom("control-border"))
                        .borderShape(.smallrounded)
                    }
                    .contentSpace(.small)
                    .tag("size")
                }
                .frame(width: .nine)
                .padding()
                .contentSpace(.large)
                VStack {
                    Text {
                        "Quick navigation"
                    }
                    .fontSize(.small)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                    .fontTransformation(.uppercase)
                    List(direction: .vertical) {
                        Link(destination: "#style") {
                            "Text style"
                        }
                        Link(destination: "#style") {
                            "Font style"
                        }
                        Link(destination: "#weight") {
                            "Font weight"
                        }
                        Link(destination: "#case") {
                            "Text case"
                        }
                        Link(destination: "#size") {
                            "Font size"
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
