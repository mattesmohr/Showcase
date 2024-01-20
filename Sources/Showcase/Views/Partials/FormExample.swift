import HTMLKit
import HTMLKitComponents

struct FormExample: View {
    
    var body: Content {
        ViewContainer {
            HStack(alignment: .top) {
                VStack(spacing: .large) {
                    VStack(spacing: .small) {
                        Text {
                            "Form"
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
                            Form(method: .post) {
                                VStack(spacing: .small) {
                                    TextField(name: "username", prompt: "Username")
                                        .borderShape(.smallrounded)
                                    Button(role: .submit) {
                                        "Submit"
                                    }
                                    .buttonStyle(.primary)
                                    .borderShape(.smallrounded)
                                    .disabled()
                                }
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
                            """
                        }
                        .backgroundColor(.custom("control-background"))
                        .borderColor(.custom("control-border"))
                        .borderShape(.smallrounded)
                    }
                    VStack(spacing: .small) {
                        Text {
                            "Form validation"
                        }
                        .fontSize(.medium)
                        .foregroundColor(.accent)
                        Text {
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo."
                        }
                        .foregroundColor(.white)
                        ExampleView {
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
                        }
                        .frame(width: .twelve)
                        Snippet(highlight: .plaintext) {
                            """
                            Form(method: .post) {
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
                    .tag("validation")
                }
                .frame(width: .nine)
                .padding()
                VStack(spacing: .small) {
                    Text {
                        "Quick navigation"
                    }
                    .textStyle(SubtitleStyle())
                    List(direction: .vertical) {
                        Link(destination: "#validation") {
                            Text {
                                "Form validation"
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
