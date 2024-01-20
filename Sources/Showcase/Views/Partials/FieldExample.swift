import HTMLKit
import HTMLKitComponents

struct FieldExample: View {
    
    var body: Content {
        ViewContainer {
            HStack(alignment: .top) {
                VStack(spacing: .large) {
                    VStack(spacing: .small) {
                        Text {
                            "Fields"
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
                        }
                        .frame(width: .twelve)
                        Snippet(highlight: .plaintext) {
                            """
                            """
                        }
                        .backgroundColor(.custom("control-background"))
                        .borderColor(.custom("control-border"))
                        .borderShape(.smallrounded)
                    }
                    VStack(spacing: .large) {
                        VStack(spacing: .small) {
                            Text {
                                "Various fields"
                            }
                            .fontSize(.medium)
                            .foregroundColor(.accent)
                            Text {
                                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo."
                            }
                            .foregroundColor(.white)
                        }
                        VStack(spacing: .small) {
                            Text {
                                "TextField"
                            }
                            .foregroundColor(.white)
                            .bold()
                            ExampleView {
                                TextField(name: "textfield", value: "value")
                            }
                            .frame(width: .twelve)
                            Snippet(highlight: .plaintext) {
                                """
                                TextField(name: "example", value: "value")
                                """
                            }
                            .backgroundColor(.custom("control-background"))
                            .borderColor(.custom("control-border"))
                            .borderShape(.smallrounded)
                        }
                        VStack(spacing: .small) {
                            Text {
                                "TextEditor"
                            }
                            .foregroundColor(.white)
                            .bold()
                            ExampleView {
                                TextEditor(name: "texteditor") {
                                    "value"
                                }
                            }
                            .frame(width: .twelve)
                            Snippet(highlight: .plaintext) {
                                """
                                TextEdtior(name: "example") {
                                    "value"
                                }
                                """
                            }
                            .backgroundColor(.custom("control-background"))
                            .borderColor(.custom("control-border"))
                            .borderShape(.smallrounded)
                        }
                        VStack(spacing: .small) {
                            Text {
                                "TextPad"
                            }
                            .foregroundColor(.white)
                            .bold()
                            ExampleView {
                                TextPad(name: "textpad") {
                                    "value"
                                }
                            }
                            .frame(width: .twelve)
                            Snippet(highlight: .plaintext) {
                                """
                                TextPad(name: "textpad") {
                                    "value"
                                }
                                """
                            }
                            .backgroundColor(.custom("control-background"))
                            .borderColor(.custom("control-border"))
                            .borderShape(.smallrounded)
                        }
                        VStack(spacing: .small) {
                            Text {
                                "SecureField"
                            }
                            .foregroundColor(.white)
                            .bold()
                            ExampleView {
                                SecureField(name: "securefield", value: "value")
                            }
                            .frame(width: .twelve)
                            Snippet(highlight: .plaintext) {
                                """
                                SecureField(name: "example", value: "value")
                                """
                            }
                            .backgroundColor(.custom("control-background"))
                            .borderColor(.custom("control-border"))
                            .borderShape(.smallrounded)
                        }
                        HStack(spacing: .small) {
                            VStack(spacing: .small) {
                                Text {
                                    "CheckField"
                                }
                                .foregroundColor(.white)
                                .bold()
                                ExampleView {
                                    CheckField(value: "") {
                                        "Value"
                                    }
                                }
                                .frame(width: .twelve)
                                Snippet(highlight: .plaintext) {
                                    """
                                    CheckField(value: "") {
                                    }
                                    """
                                }
                                .backgroundColor(.custom("control-background"))
                                .borderColor(.custom("control-border"))
                                .borderShape(.smallrounded)
                            }
                            .frame(width: .six)
                            VStack(spacing: .small) {
                                Text {
                                    "RadioSelect"
                                }
                                .foregroundColor(.white)
                                .bold()
                                ExampleView {
                                    RadioSelect(value: "") {
                                        "Value"
                                    }
                                }
                                .frame(width: .twelve)
                                Snippet(highlight: .plaintext) {
                                    """
                                    RadioSelect(value: "") {
                                    }
                                    """
                                }
                                .backgroundColor(.custom("control-background"))
                                .borderColor(.custom("control-border"))
                                .borderShape(.smallrounded)
                            }
                            .frame(width: .six)
                        }
                        VStack(spacing: .small) {
                            Text {
                                "SelectField"
                            }
                            .foregroundColor(.white)
                            .bold()
                            ExampleView {
                                SelectField(name: "selectfield") {
                                    RadioSelect(value: "") {
                                        "Value"
                                    }
                                }
                            }
                            .frame(width: .twelve)
                            Snippet(highlight: .plaintext) {
                                """
                                SelectField(name: "selectfield") {
                                    RadioSelect(value: "") {
                                        "Value"
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
                                "SelectField"
                            }
                            .foregroundColor(.white)
                            .bold()
                            ExampleView {
                                SearchField(name: "searchfield", value: "value")
                            }
                            .frame(width: .twelve)
                            Snippet(highlight: .plaintext) {
                                """
                                SearchField(name: "searchfield", value: "value")
                                """
                            }
                            .backgroundColor(.custom("control-background"))
                            .borderColor(.custom("control-border"))
                            .borderShape(.smallrounded)
                        }
                        VStack(spacing: .small) {
                            Text {
                                "Slider"
                            }
                            .foregroundColor(.white)
                            .bold()
                            ExampleView {
                                Slider(name: "slider")
                            }
                            .frame(width: .twelve)
                            Snippet(highlight: .plaintext) {
                                """
                                Slider(name: "slider")
                                """
                            }
                            .backgroundColor(.custom("control-background"))
                            .borderColor(.custom("control-border"))
                            .borderShape(.smallrounded)
                        }
                        VStack(spacing: .small) {
                            Text {
                                "DatePicker"
                            }
                            .foregroundColor(.white)
                            .bold()
                            ExampleView {
                                DatePicker(name: "datepicker")
                            }
                            .frame(width: .twelve)
                            Snippet(highlight: .plaintext) {
                                """
                                DatePicker(name: "datepicker")
                                """
                            }
                            .backgroundColor(.custom("control-background"))
                            .borderColor(.custom("control-border"))
                            .borderShape(.smallrounded)
                        }
                        VStack(spacing: .small) {
                            Text {
                                "FileDialog"
                            }
                            .foregroundColor(.white)
                            .bold()
                            ExampleView {
                                FileDialog(name: "filedialog")
                            }
                            .frame(width: .twelve)
                            Snippet(highlight: .plaintext) {
                                """
                                FileDialog(name: "filedialog")
                                """
                            }
                            .backgroundColor(.custom("control-background"))
                            .borderColor(.custom("control-border"))
                            .borderShape(.smallrounded)
                        }
                    }
                    .tag("field")
                    VStack(spacing: .small) {
                        Text {
                            "View Shape"
                        }
                        .fontSize(.medium)
                        .foregroundColor(.accent)
                        Text {
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo."
                        }
                        .foregroundColor(.white)
                        Scroll {
                            HStack(spacing: .small) {
                                for shape in Tokens.BorderShape.allCases {
                                    ExampleView {
                                        TextField(name: "textfield", value: "value")
                                            .borderShape(shape)
                                    }
                                }
                            }
                        }
                    }
                    .tag("shape")
                }
                .frame(width: .nine)
                .padding()
                VStack(spacing: .small) {
                    Text {
                        "Quick navigation"
                    }
                    .textStyle(SubtitleStyle())
                    List(direction: .vertical) {
                        Link(destination: "#field") {
                            Text {
                                "Various fields"
                            }
                            .foregroundColor(.white)
                        }
                        Link(destination: "#shape") {
                            Text {
                                "View shape"
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
