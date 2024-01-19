import HTMLKit
import HTMLKitComponents

struct ColorExample: View {
    
    var body: Content {
        ViewContainer {
            HStack(alignment: .top) {
                VStack {
                    VStack {
                        Text {
                            "Color"
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
                            "Color scheme"
                        }
                        .fontSize(.medium)
                        .foregroundColor(.primary)
                        ExampleView {
                            Grid(ratio: .quarter) {
                                for color in Tokens.BackgroundColor.allCases {
                                    Card {}
                                    .borderShape(.smallrounded)
                                    .backgroundColor(color)
                                    .frame(width: .twelve)
                                }
                            }
                            .contentSpace(.small)
                        }
                        .frame(width: .twelve)
                        Snippet(highlight: .plaintext) {
                            """
                            Card {
                            }
                            .colorScheme(.dark)
                            """
                        }
                        .backgroundColor(.custom("control-background"))
                        .borderColor(.custom("control-border"))
                        .borderShape(.smallrounded)
                    }
                    .contentSpace(.small)
                    .tag("scheme")
                }
                .frame(width: .nine)
                .contentSpace(.large)
                .padding()
                VStack {
                    Text {
                        "Quick navigation"
                    }
                    .fontSize(.small)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                    .fontTransformation(.uppercase)
                    List(direction: .vertical) {
                        Link(destination: "#scheme") {
                            "Color scheme"
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
