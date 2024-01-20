import HTMLKit
import HTMLKitComponents

struct StackExample: View {
    
    var body: Content {
        ViewContainer {
            HStack(alignment: .top) {
                VStack(spacing: .large) {
                    VStack(spacing: .small) {
                        Text {
                            "Stack"
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
                            HStack {
                            }
                        }
                        .frame(width: .twelve)
                        Snippet(highlight: .plaintext) {
                            """
                            HStack {
                            }
                            """
                        }
                        .backgroundColor(.custom("control-background"))
                        .borderColor(.custom("control-border"))
                        .borderShape(.smallrounded)
                    }
                    VStack(spacing: .small) {
                        Text {
                            "Flow direction"
                        }
                        .fontSize(.medium)
                        .foregroundColor(.accent)
                        Text {
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo."
                        }
                        .foregroundColor(.white)
                        Scroll {
                            HStack(spacing: .small) {
                                ExampleView {
                                    HStack {
                                        for _ in 1...3 {
                                            Text {
                                                "Item"
                                            }
                                        }
                                    }
                                }
                                ExampleView {
                                    VStack {
                                        for _ in 1...3 {
                                            Text {
                                                "Item"
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        Snippet(highlight: .plaintext) {
                            """
                            HStack {
                            }
                            """
                        }
                        .backgroundColor(.custom("control-background"))
                        .borderColor(.custom("control-border"))
                        .borderShape(.smallrounded)
                    }
                    .tag("direction")
                    VStack(spacing: .small) {
                        Text {
                            "Content space"
                        }
                        .fontSize(.medium)
                        .foregroundColor(.accent)
                        Text {
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo."
                        }
                        .foregroundColor(.white)
                        Scroll {
                            HStack(spacing: .small) {
                                for space in Tokens.ContentSpace.allCases {
                                    ExampleView {
                                        HStack(spacing: space) {
                                            for _ in 1...3 {
                                                Card {
                                                    Text {
                                                        "Text"
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        Snippet(highlight: .plaintext) {
                            """
                            HStack(spacing: .small) {
                            }
                            """
                        }
                        .backgroundColor(.custom("control-background"))
                        .borderColor(.custom("control-border"))
                        .borderShape(.smallrounded)
                    }
                    .tag("space")
                    VStack(spacing: .small) {
                        Text {
                            "Content alignment"
                        }
                        .fontSize(.medium)
                        .foregroundColor(.accent)
                        Text {
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo."
                        }
                        .foregroundColor(.white)
                        Scroll {
                            HStack(spacing: .small) {
                                for alignment in Tokens.VerticalAlignment.allCases {
                                    ExampleView {
                                        HStack(alignment: alignment, spacing: .small) {
                                            for _ in 1...3 {
                                                Card {
                                                    Text {
                                                        "Text"
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        Scroll {
                            HStack(spacing: .small) {
                                for alignment in Tokens.HorizontalAlignment.allCases {
                                    ExampleView {
                                        VStack(alignment: alignment, spacing: .small) {
                                            for _ in 1...3 {
                                                Card {
                                                    Text {
                                                        "Text"
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        Snippet(highlight: .plaintext) {
                            """
                            HStack(alignment: .bottom) {
                                Text {
                                    "Text"
                                }
                            }
                            """
                        }
                        .backgroundColor(.custom("control-background"))
                        .borderColor(.custom("control-border"))
                        .borderShape(.smallrounded)
                    }
                    .tag("alignment")
                }
                .frame(width: .nine)
                .padding()
                VStack(spacing: .small) {
                    Text {
                        "Quick navigation"
                    }
                    .textStyle(SubtitleStyle())
                    List(direction: .vertical) {
                        Link(destination: "#direction") {
                            Text {
                                "Flow direction"
                            }
                            .foregroundColor(.white)
                        }
                        Link(destination: "#space") {
                            Text {
                                "Content space"
                            }
                            .foregroundColor(.white)
                        }
                        Link(destination: "#alignment") {
                            Text {
                                "Content alignment"
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
