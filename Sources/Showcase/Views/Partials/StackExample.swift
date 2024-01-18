import HTMLKit
import HTMLKitComponents

struct StackExample: View {
    
    var body: Content {
        ViewContainer {
            HStack(alignment: .top) {
                VStack {
                    VStack {
                        Text {
                            "Stack"
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
                            "Flow direction"
                        }
                        .fontSize(.medium)
                        .foregroundColor(.primary)
                        Text {
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo."
                        }
                        ScrollView(direction: .horizontal) {
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
                    .contentSpace(.small)
                    .tag("direction")
                    VStack {
                        Text {
                            "Content space"
                        }
                        .fontSize(.medium)
                        .foregroundColor(.primary)
                        Text {
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo."
                        }
                        ScrollView(direction: .horizontal) {
                            for space in Tokens.ContentSpace.allCases {
                                ExampleView {
                                    HStack {
                                        for _ in 1...3 {
                                            Card {
                                                Text {
                                                    "Text"
                                                }
                                            }
                                        }
                                    }
                                    .contentSpace(space)
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
                    .contentSpace(.small)
                    .tag("space")
                    VStack {
                        Text {
                            "Content alignment"
                        }
                        .fontSize(.medium)
                        .foregroundColor(.primary)
                        Text {
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo."
                        }
                        ScrollView(direction: .horizontal) {
                            for alignment in Tokens.VerticalAlignment.allCases {
                                ExampleView {
                                    HStack(alignment: alignment) {
                                        for _ in 1...3 {
                                            Card {
                                                Text {
                                                    "Text"
                                                }
                                            }
                                        }
                                    }
                                    .backgroundColor(.custom("shadow"))
                                    .contentSpace(.small)
                                }
                            }
                        }
                        ScrollView(direction: .horizontal) {
                            for alignment in Tokens.HorizontalAlignment.allCases {
                                ExampleView {
                                    VStack(alignment: alignment) {
                                        for _ in 1...3 {
                                            Card {
                                                Text {
                                                    "Text"
                                                }
                                            }
                                        }
                                    }
                                    .backgroundColor(.custom("shadow"))
                                    .contentSpace(.small)
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
                    .contentSpace(.small)
                    .tag("alignment")
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
                        Link(destination: "#direction") {
                            "Flow direction"
                        }
                        Link(destination: "#space") {
                            "Content space"
                        }
                        Link(destination: "#alignment") {
                            "Content alignment"
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
