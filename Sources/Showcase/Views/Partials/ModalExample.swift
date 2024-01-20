import HTMLKit
import HTMLKitComponents

struct ModalExample: View {
    
    var body: Content {
        ViewContainer {
            HStack(alignment: .top) {
                VStack(spacing: .large) {
                    VStack(spacing: .small) {
                        Text {
                            "Modal"
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
                        Modal {
                            Text {
                                "Look, its a modal!"
                            }
                            Button(role: .button) {
                                "Close"
                            }
                            .tag("close_button")
                            .onClick { action in
                                action.close("modal")
                            }
                        }
                        .tag("modal")
                        .colorScheme(.dark)
                        ExampleView {
                            Button(role: .button) {
                                "Show Modal"
                            }
                            .tag("show_button")
                            .onClick { button in
                                button.open("modal")
                            }
                        }
                        .frame(width: .twelve)
                        Snippet(highlight: .plaintext) {
                            """
                            Modal {
                                "Text"
                            }
                            """
                        }
                        .backgroundColor(.custom("control-background"))
                        .borderColor(.custom("control-border"))
                        .borderShape(.smallrounded)
                    }
                }
                .frame(width: .nine)
                .padding()
                VStack(spacing: .small) {
                    Text {
                        "Quick navigation"
                    }
                    .textStyle(SubtitleStyle())
                    List(direction: .vertical) {
                        Link(destination: "#font") {
                            Text {
                                "Modal appearance"
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
