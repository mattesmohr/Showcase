import HTMLKit
import HTMLKitComponents

struct FormExample: View {
    
    var body: Content {
        ViewContainer {
            HStack(alignment: .top) {
                VStack {
                    VStack {
                        Text {
                            "Form"
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
                            "Form validation"
                        }
                        .fontSize(.medium)
                        .foregroundColor(.primary)
                        Text {
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo."
                        }
                        ExampleView {
                            Form(method: .post) {
                                VStack {
                                    TextField(name: "username", prompt: "Username")
                                        .borderShape(.smallrounded)
                                    Button(role: .submit) {
                                        "Submit"
                                    }
                                    .buttonStyle(.primary)
                                    .borderShape(.smallrounded)
                                }
                                .contentSpace(.small)
                            }
                            .tag("form")
                            .onSubmit { form in
                                form.validate("form", [Validator(field: "username", rule: .value)])
                            }
                        }
                        .frame(width: .twelve)
                        Snippet(highlight: .plaintext) {
                            """
                            Form(method: .post) {
                                VStack(spacing: .small) {
                                    TextField(name: "username", prompt: "Username")
                                        .borderShape(.smallrounded)
                                    Button(role: .submit) {
                                        "Submit"
                                    }
                                    .buttonStyle(.primary)
                                    .borderShape(.smallrounded)
                                }
                            }
                            .tag("form")
                            .onSubmit { form in
                                form.validate("form", [Validator(field: "username", rule: .value)])
                            }
                            """
                        }
                        .backgroundColor(.custom("control-background"))
                        .borderColor(.custom("control-border"))
                        .borderShape(.smallrounded)
                    }
                    .contentSpace(.small)
                    .tag("validation")
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
                        Link(destination: "#validation") {
                            "Form validation"
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
