import HTMLKit
import HTMLKitComponents

struct FieldExample: View {
    
    var body: Content {
        ViewContainer {
            HStack(alignment: .top) {
                VStack {
                    VStack {
                        Text {
                            "Fields"
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
                        VStack {
                            Text {
                                "Various fields"
                            }
                            .fontSize(.medium)
                            .foregroundColor(.primary)
                            Text {
                                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo."
                            }
                        }
                        .contentSpace(.small)
                        VStack {
                            Text {
                                "TextField"
                            }
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
                        .contentSpace(.small)
                        VStack {
                            Text {
                                "TextEditor"
                            }
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
                        .contentSpace(.small)
                        VStack {
                            Text {
                                "TextPad"
                            }
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
                        .contentSpace(.small)
                        VStack {
                            Text {
                                "SecureField"
                            }
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
                        .contentSpace(.small)
                        HStack {
                            VStack {
                                Text {
                                    "CheckField"
                                }
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
                            .contentSpace(.small)
                            VStack {
                                Text {
                                    "RadioSelect"
                                }
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
                            .contentSpace(.small)
                        }
                        .contentSpace(.small)
                        VStack {
                            Text {
                                "SelectField"
                            }
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
                        .contentSpace(.small)
                        VStack {
                            Text {
                                "SelectField"
                            }
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
                        .contentSpace(.small)
                        VStack {
                            Text {
                                "Slider"
                            }
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
                        .contentSpace(.small)
                        VStack {
                            Text {
                                "DatePicker"
                            }
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
                        .contentSpace(.small)
                        VStack {
                            Text {
                                "FileDialog"
                            }
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
                        .contentSpace(.small)
                    }
                    .contentSpace(.large)
                    .tag("field")
                    VStack {
                        Text {
                            "View Shape"
                        }
                        .fontSize(.medium)
                        .foregroundColor(.primary)
                        Text {
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo."
                        }
                        ScrollView(direction: .horizontal) {
                            for shape in Tokens.BorderShape.allCases {
                                ExampleView {
                                    TextField(name: "textfield", value: "value")
                                        .borderShape(shape)
                                }
                            }
                        }
                    }
                    .contentSpace(.small)
                    .tag("shape")
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
                        Link(destination: "#field") {
                            "Various fields"
                        }
                        Link(destination: "#shape") {
                            "View shape"
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
