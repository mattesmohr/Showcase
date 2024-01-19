import HTMLKit
import HTMLKitComponents

struct GridExample: View {
    
    var body: Content {
        ViewContainer {
            HStack(alignment: .top) {
                VStack {
                    VStack {
                        Text {
                            "Grid"
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
                        ExampleView {
                            Grid(ratio: .third) {
                                for _ in 1...8 {
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
                    .contentSpace(.small)
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
                                    Grid(ratio: .third) {
                                        for _ in 1...8 {
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
                    }
                    .contentSpace(.small)
                    .tag("space")
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
                        Link(destination: "#space") {
                            "Content space"
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
