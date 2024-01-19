import HTMLKit
import HTMLKitComponents

struct ActionExample: View {
    
    var body: Content {
        ViewContainer {
            HStack(alignment: .top) {
                VStack {
                    VStack {
                        Text {
                            "Action"
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
                            "Show action"
                        }
                        .fontSize(.medium)
                        .foregroundColor(.primary)
                        Text {
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo."
                        }
                        ExampleView {
                            HStack(alignment: .center) {
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
                            .contentSpace(.small)
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
                    .contentSpace(.small)
                    VStack {
                        Text {
                            "Hide action"
                        }
                        .fontSize(.medium)
                        .foregroundColor(.primary)
                        Text {
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo."
                        }
                        ExampleView {
                            HStack(alignment: .center) {
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
                            .contentSpace(.small)
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
                    .contentSpace(.small)
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
                        Link(destination: "#size") {
                            "Show action"
                        }
                        Link(destination: "#tone") {
                            "Hide action"
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
