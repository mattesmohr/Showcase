import HTMLKit
import HTMLKitComponents

struct DropdownExample: View {
    
    var body: Content {
        ViewContainer {
            HStack(alignment: .top) {
                VStack {
                    VStack {
                        Text {
                            "Dropdown"
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
                            "Dropdown appearance"
                        }
                        .fontSize(.medium)
                        .foregroundColor(.primary)
                        Text {
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo."
                        }
                        ScrollView(direction: .horizontal) {
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
                    .contentSpace(.small)
                    .tag("appearance")
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
                        Link(destination: "#appearance") {
                            "Appearance"
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
