import HTMLKit
import HTMLKitComponents

struct ScrollExample: View {
    
    var body: Content {
        ViewContainer {
            HStack(alignment: .top) {
                VStack {
                    VStack {
                        Text {
                            "Scroll"
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
                        HStack {
                            VStack {
                                ExampleView {
                                    ScrollView(direction: .horizontal) {
                                        for _ in 1...10 {
                                            Card {
                                                Text {
                                                    "Text"
                                                }
                                            }
                                        }
                                    }
                                }
                                .frame(width: .twelve)
                            }
                            .frame(width: .six)
                            VStack {
                                ExampleView {
                                    ScrollView(direction: .horizontal) {
                                        for _ in 1...10 {
                                            Card {
                                                Text {
                                                    "Text"
                                                }
                                            }
                                        }
                                    }
                                }
                                .frame(width: .twelve)
                            }
                            .frame(width: .six)
                        }
                        .contentSpace(.small)
                        Snippet(highlight: .plaintext) {
                            """
                            Scroll {
                                HStack {
                                }
                            }
                            """
                        }
                        .backgroundColor(.custom("control-background"))
                        .borderColor(.custom("control-border"))
                        .borderShape(.smallrounded)
                    }
                    .contentSpace(.small)
                    .tag("direction")
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
                    }
                    .frame(width: .twelve)
                }
                .frame(width: .three)
                .padding()
            }
        }
    }
}
