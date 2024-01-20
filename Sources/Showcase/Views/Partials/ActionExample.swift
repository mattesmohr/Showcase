import HTMLKit
import HTMLKitComponents

struct ActionExample: View {
    
    var body: Content {
        ViewContainer {
            HStack(alignment: .top) {
                VStack(spacing: .large) {
                    VStack(spacing: .small) {
                        Text {
                            "Action"
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
                        Text {
                            "Show action"
                        }
                        .fontSize(.medium)
                        .foregroundColor(.accent)
                        Text {
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo."
                        }
                        .foregroundColor(.white)
                        ExampleView {
                            HStack(alignment: .center, spacing: .small) {
                                Button(role: .button) {
                                    "Show"
                                }
                                .tag("show_button")
                                .onClick { action in
                                    action.show("hidden_text")
                                }
                                Text {
                                    "Coucou!"
                                }
                                .tag("hidden_text")
                                .hidden()
                            }
                        }
                        .frame(width: .twelve)
                        Snippet(highlight: .plaintext) {
                            """
                            Button(role: .button) {
                                "Show"
                            }
                            .tag("show_button")
                            .onClick { action in
                                action.show("hidden_text")
                            }
                            Text {
                                "Coucou!"
                            }
                            .tag("hidden_text")
                            .hidden()
                            """
                        }
                        .backgroundColor(.custom("control-background"))
                        .borderColor(.custom("control-border"))
                        .borderShape(.smallrounded)
                    }
                    VStack(spacing: .small) {
                        Text {
                            "Hide action"
                        }
                        .fontSize(.medium)
                        .foregroundColor(.accent)
                        Text {
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo."
                        }
                        .foregroundColor(.white)
                        ExampleView {
                            HStack(alignment: .center, spacing: .small) {
                                Button(role: .button) {
                                    "Hide"
                                }
                                .tag("hide_button")
                                .onClick { action in
                                    action.hide("visible_text")
                                }
                                Text {
                                    "Arrivederci!"
                                }
                                .tag("visible_text")
                            }
                        }
                        .frame(width: .twelve)
                        Snippet(highlight: .plaintext) {
                            """
                            Button(role: .button) {
                                "Hide"
                            }
                            .tag("hide_button")
                            .onClick { action in
                                action.hide("visible_text")
                            }
                            Text {
                                "Arrivederci!"
                            }
                            .tag("visible_text")
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
                        Link(destination: "#size") {
                            Text {
                                "Show action"
                            }
                            .foregroundColor(.white)
                        }
                        Link(destination: "#tone") {
                            Text {
                                "Hide action"
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
