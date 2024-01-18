import HTMLKit
import HTMLKitComponents

struct ButtonExample: View {
    
    var body: Content {
        ViewContainer {
            HStack(alignment: .top) {
                VStack {
                    VStack {
                        Text {
                            "Button"
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
                            "Button appearance"
                        }
                        .fontSize(.medium)
                        .foregroundColor(.primary)
                        Text {
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo."
                        }
                        ScrollView(direction: .horizontal) {
                            for style in Tokens.ButtonStyle.allCases {
                                ExampleView {
                                    Button(role: .button) {
                                        "Button"
                                    }
                                    .buttonStyle(style)
                                }
                            }
                        }
                        Snippet(highlight: .plaintext) {
                            """
                            Button(role: .button) {
                            }
                            .buttonStyle(.primary)
                            """
                        }
                        .backgroundColor(.custom("control-background"))
                        .borderColor(.custom("control-border"))
                        .borderShape(.smallrounded)
                    }
                    .contentSpace(.small)
                    .tag("appearance")
                    VStack {
                        Text {
                            "Button grouping"
                        }
                        .fontSize(.medium)
                        .foregroundColor(.primary)
                        Text {
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo."
                        }
                        ExampleView {
                            Grouping {
                                Button(role: .button) {
                                    "Left"
                                }
                                .borderShape(.smallrounded)
                                Button(role: .button) {
                                    "Middle"
                                }
                                Button(role: .button) {
                                    "Right"
                                }
                                .borderShape(.smallrounded)
                            }
                        }
                        .frame(width: .twelve)
                    }
                    .contentSpace(.small)
                    .tag("group")
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
                        Link(destination: "#appearance") {
                            "Button appearance"
                        }
                        Link(destination: "#group") {
                            "Button grouping"
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
