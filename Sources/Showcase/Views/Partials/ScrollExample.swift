import HTMLKit
import HTMLKitComponents

struct ScrollExample: View {
    
    var body: Content {
        ViewContainer {
            HStack(alignment: .top) {
                VStack(spacing: .large) {
                    VStack(spacing: .small) {
                        Text {
                            "Scroll"
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
                            Scroll {
                            }
                        }
                        .frame(width: .twelve)
                        Snippet(highlight: .plaintext) {
                            """
                            Scroll {
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
                        HStack(spacing: .small) {
                            VStack {
                                ExampleView {
                                    Scroll {
                                        HStack {
                                            for _ in 1...10 {
                                                Card {
                                                    Text {
                                                        "Text"
                                                    }
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
                                    Scroll {
                                        VStack {
                                            for _ in 1...10 {
                                                Card {
                                                    Text {
                                                        "Text"
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                .frame(width: .twelve)
                            }
                            .frame(width: .six)
                        }
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
                    .tag("direction")
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
                    }
                    .frame(width: .twelve)
                }
                .frame(width: .three)
                .padding()
            }
        }
    }
}
