import HTMLKit
import HTMLKitComponents

enum ToolPage {
    
    struct IndexView: View {
        
        var body: Content {
            PageContainer {
                Header {
                    Text {
                        "Tools"
                    }
                    .fontSize(.large)
                    .foregroundColor(.accent)
                }
                Section {
                    Grid(ratio: .third) {
                        VStack(spacing: .small) {
                            ThumbnailView {
                            }
                            .frame(width: .twelve)
                            Text {
                                "Converter"
                            }
                            .fontSize(.large)
                            .foregroundColor(.accent)
                            Text {
                                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo."
                            }
                            Link(destination: "/tool/converter") {
                                "Read more"
                            }
                            .foregroundColor(.accent)
                        }
                    }
                }
            }
        }
    }
    
    struct ConverterView: View {
        
        var model: ToolModel.Output
        
        var body: Content {
            PageContainer {
                Header {
                    Text {
                        "Converter"
                    }
                    .fontSize(.large)
                    .foregroundColor(.accent)
                }
                Section {
                    HStack(alignment: .top, spacing: .small) {
                        VStack {
                            Form(method: .post) {
                                VStack(spacing: .small) {
                                    TextEditor(name: "source", prompt: "<h1>Hello World!</h1>") {
                                        model.source
                                    }
                                    .borderShape(.smallrounded)
                                    .lineLimit(20)
                                    HStack(spacing: .small) {
                                        Button(role: .submit) {
                                            "Convert"
                                        }
                                        .buttonStyle(.primary)
                                        .borderShape(.smallrounded)
                                        Button(role: .reset) {
                                            "Clear"
                                        }
                                        .borderShape(.smallrounded)
                                    }
                                }
                            }
                        }
                        .frame(width: .six)
                        VStack {
                            Snippet(highlight: .html) {
                                model.target
                            }
                            .snippetStyle(SnippetStyle())
                        }
                        .frame(width: .six)
                    }
                    .frame(width: .twelve)
                }
            }
        }
    }
}
