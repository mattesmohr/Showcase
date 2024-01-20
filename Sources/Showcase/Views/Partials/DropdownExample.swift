import HTMLKit
import HTMLKitComponents

struct DropdownExample: View {
    
    var body: Content {
        ViewContainer {
            HStack(alignment: .top) {
                VStack(spacing: .large) {
                    VStack(spacing: .small) {
                        Text {
                            "Dropdown"
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
                            Dropdown {
                                List(direction: .vertical) {
                                    Grouping {
                                        Symbol(system: .pencil)
                                        Text {
                                            "Edit"
                                        }
                                    }
                                    Grouping {
                                        Symbol(system: .trash)
                                        Text {
                                            "Delete"
                                        }
                                    }
                                    .foregroundColor(.red)
                                }
                            } label: {
                                Button(role: .button) {
                                    "Button"
                                }
                                .buttonStyle(.outline)
                            }
                        }
                        .frame(width: .twelve)
                        Snippet(highlight: .plaintext) {
                            """
                            Dropdown {
                            } label: {
                                Text {
                                    "Label"
                                }
                            }
                            """
                        }
                        .backgroundColor(.custom("control-background"))
                        .borderColor(.custom("control-border"))
                        .borderShape(.smallrounded)
                    }
                    VStack(spacing: .small) {
                        Text {
                            "Dropdown appearance"
                        }
                        .fontSize(.medium)
                        .foregroundColor(.accent)
                        Text {
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo."
                        }
                        .foregroundColor(.white)
                        Scroll {
                            HStack {
                                ExampleView {
                                    Dropdown {
                                        List(direction: .vertical) {
                                            Link(destination: "") {
                                                "Link"
                                            }
                                        }
                                    } label: {
                                        Button(role: .button) {
                                            "Button"
                                        }
                                        .buttonStyle(.outline)
                                    }

                                }
                            }
                        }
                        Snippet(highlight: .plaintext) {
                            """
                            Dropdown {
                                List(direction: .vertical) {
                                    Link(destination: "") {
                                        "Link"
                                    }
                                }
                            } label: {
                                Button(role: .button) {
                                    "Dropdown"
                                }
                                .buttonStyle(.outline)
                            }
                            """
                        }
                        .backgroundColor(.custom("control-background"))
                        .borderColor(.custom("control-border"))
                        .borderShape(.smallrounded)
                    }
                    .tag("appearance")
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
                                "Dropdown appearance"
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
