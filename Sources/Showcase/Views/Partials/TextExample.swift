import HTMLKit
import HTMLKitComponents

struct TextExample: View {
    
    var body: Content {
        ViewContainer {
            HStack(alignment: .top) {
                VStack(spacing: .large) {
                    VStack(spacing: .small) {
                        Text {
                            "Text"
                        }
                        .fontSize(.large)
                        .foregroundColor(.accent)
                        Text {
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet."
                        }
                        .fontSize(.medium)
                        .foregroundColor(.white)
                    }
                    VStack(spacing: .small) {
                        ExampleView {
                            Text {
                                "Example"
                            }
                            .fontSize(.large)
                            .fontWeight(.black)
                            .fontStyle(.italic)
                        }
                        .frame(width: .twelve)
                        Snippet(highlight: .plaintext) {
                            """
                            Text {
                                "Example"
                            }
                            .fontSize(.large)
                            .fontWeight(.black)
                            .fontStyle(.italic)
                            """
                        }
                        .backgroundColor(.custom("control-background"))
                        .borderColor(.custom("control-border"))
                        .borderShape(.smallrounded)
                    }
                    VStack(spacing: .small) {
                        Text {
                            "Text style"
                        }
                        .fontSize(.medium)
                        .foregroundColor(.accent)
                        Text {
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo."
                        }
                        .foregroundColor(.white)
                        Scroll {
                            HStack(spacing: .small) {
                                for style in Tokens.TextStyle.allCases {
                                    ExampleView {
                                        Text {
                                            "Title"
                                        }
                                        .textStyle(style)
                                    }
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
                    VStack(spacing: .small) {
                        Text {
                            "Font style"
                        }
                        .fontSize(.medium)
                        .foregroundColor(.accent)
                        Text {
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo."
                        }
                        .foregroundColor(.white)
                        Scroll {
                            HStack(spacing: .small) {
                                for style in Tokens.FontStyle.allCases {
                                    ExampleView {
                                        Text {
                                            "Lorem ipsum"
                                        }
                                        .fontStyle(style)
                                    }
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
                    VStack(spacing: .small) {
                        Text {
                            "Font weight"
                        }
                        .fontSize(.medium)
                        .foregroundColor(.accent)
                        Text {
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo."
                        }
                        .foregroundColor(.white)
                        Scroll {
                            HStack(spacing: .small) {
                                for weight in Tokens.FontWeight.allCases {
                                    ExampleView {
                                        Text {
                                            "Lorem ipsum"
                                        }
                                        .fontWeight(weight)
                                    }
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
                    VStack(spacing: .small) {
                        Text {
                            "Text case"
                        }
                        .fontSize(.medium)
                        .foregroundColor(.accent)
                        Text {
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo."
                        }
                        .foregroundColor(.white)
                        Scroll {
                            HStack(spacing: .small) {
                                for transformation in Tokens.TextCase.allCases {
                                    ExampleView {
                                        Text {
                                            "Lowercase"
                                        }
                                        .textCase(transformation)
                                    }
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
                    VStack(spacing: .small) {
                        Text {
                            "Font size"
                        }
                        .fontSize(.medium)
                        .foregroundColor(.accent)
                        Text {
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo."
                        }
                        .foregroundColor(.white)
                        Scroll {
                            HStack(spacing: .small) {
                                for size in Tokens.FontSize.allCases {
                                    ExampleView {
                                        Text {
                                            "Lorem ipsum"
                                        }
                                        .fontSize(size)
                                    }
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
                    .tag("size")
                }
                .frame(width: .nine)
                .padding()
                VStack(spacing: .small) {
                    Text {
                        "Quick navigation"
                    }
                    .textStyle(SubtitleStyle())
                    List(direction: .vertical) {
                        Link(destination: "#style") {
                            Text {
                                "Text style"
                            }
                            .foregroundColor(.white)
                        }
                        Link(destination: "#style") {
                            Text {
                                "Font style"
                            }
                            .foregroundColor(.white)
                        }
                        Link(destination: "#weight") {
                            Text {
                                "Font weight"
                            }
                            .foregroundColor(.white)
                        }
                        Link(destination: "#case") {
                            Text {
                                "Text case"
                            }
                            .foregroundColor(.white)
                        }
                        Link(destination: "#size") {
                            Text {
                                "Font size"
                            }
                            .foregroundColor(.white)
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
