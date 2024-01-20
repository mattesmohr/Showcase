import HTMLKit
import HTMLKitComponents

struct ButtonExample: View {
    
    var body: Content {
        ViewContainer {
            HStack(alignment: .top) {
                VStack(spacing: .large) {
                    VStack(spacing: .small) {
                        Text {
                            "Button"
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
                            Button(role: .button) {
                                "Button"
                            }
                        }
                        .frame(width: .twelve)
                        Snippet(highlight: .plaintext) {
                            """
                            Button(role: .button) {
                                "Button"
                            }
                            """
                        }
                        .backgroundColor(.custom("control-background"))
                        .borderColor(.custom("control-border"))
                        .borderShape(.smallrounded)
                    }
                    VStack(spacing: .small) {
                        Text {
                            "Button appearance"
                        }
                        .fontSize(.medium)
                        .foregroundColor(.accent)
                        Text {
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo."
                        }
                        .foregroundColor(.white)
                        Scroll {
                            HStack(spacing: .small) {
                                for style in Tokens.ButtonStyle.allCases {
                                    ExampleView {
                                        Button(role: .button) {
                                            "Button"
                                        }
                                        .buttonStyle(style)
                                    }
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
                    .tag("appearance")
                    VStack(spacing: .small) {
                        Text {
                            "Button grouping"
                        }
                        .fontSize(.medium)
                        .foregroundColor(.accent)
                        Text {
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo."
                        }
                        .foregroundColor(.white)
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
                        Snippet(highlight: .plaintext) {
                            """
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
                            """
                        }
                        .backgroundColor(.custom("control-background"))
                        .borderColor(.custom("control-border"))
                        .borderShape(.smallrounded)
                    }
                    .tag("group")
                }
                .frame(width: .nine)
                .padding()
                VStack(spacing: .small) {
                    Text {
                        "Quick navigation"
                    }
                    .textStyle(SubtitleStyle())
                    List(direction: .vertical) {
                        Link(destination: "#appearance") {
                            Text {
                                "Button appearance"
                            }
                            .foregroundColor(.white)
                        }
                        Link(destination: "#group") {
                            Text {
                                "Button grouping"
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
