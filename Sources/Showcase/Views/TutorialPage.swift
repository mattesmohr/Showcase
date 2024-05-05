import HTMLKit
import HTMLKitComponents

enum TutorialPage {
    
    struct IndexView: View {
        
        var tutorials: [Tutorial]

        var body: Content {
            PageContainer {
                Header {
                    Text {
                        "Tutorials"
                    }
                    .fontSize(.large)
                    .foregroundColor(.accent)
                }
                Section {
                    Grid(ratio: .fifth, spacing: .small) {
                        for tutorial in tutorials {
                            VStack(spacing: .small) {
                                ThumbnailView {
                                    Image(source: "/assets/test.svg")
                                }
                                .frame(width: .twelve)
                                Text {
                                    tutorial.title
                                }
                                .fontSize(.large)
                                .foregroundColor(.accent)
                                Text {
                                    tutorial.description
                                }
                                Link(destination: "/tutorial/\(tutorial.slug)") {
                                    "Read more"
                                }
                                .foregroundColor(.accent)
                            }
                        }
                    }
                }
            }
        }
    }
    
    struct ShowView: View {
        
        var tutorial: Tutorial

        var body: Content {
            PageContainer {
                Header {
                    Text {
                        tutorial.title
                    }
                    .fontSize(.large)
                    .foregroundColor(.accent)
                    Text {
                        tutorial.description
                    }
                    .fontSize(.medium)
                }
                Section {
                    VStack(spacing: .large) {
                        for section in tutorial.sections {
                            Division {
                                VStack {
                                    Text {
                                        section.title
                                    }
                                    .fontSize(.medium)
                                    .bold()
                                    Text {
                                        section.description
                                    }
                                    .fontSize(.medium)
                                }
                                HStack(alignment: .top, spacing: .large) {
                                    VStack(spacing: .large) {
                                        for step in section.steps {
                                            StepView(step: step)
                                        }
                                    }
                                    .frame(width: .four)
                                    ZStack {
                                        for step in section.steps {
                                            if let code = step.code {
                                                ConsoleView(code: code)
                                            } else {
                                                ConsoleView()
                                            }
                                        }
                                    }
                                    .frame(width: .eight)
                                }
                                .frame(width: .twelve, height: .twelve)
                            }
                            .class("section")
                        }
                    }
                    .tag("tutorial")
                }
            }
        }
    }
}
