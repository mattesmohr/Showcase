import HTMLKit
import HTMLKitComponents

enum TutorialPage {
    
    struct IndexView: View {
        
        let tutorials: [Tutorial]

        var body: Content {
            PageContainer {
                Header {
                    Text {
                        "Tutorials"
                    }
                    .fontSize(.large)
                }
                Section {
                    Grid(ratio: .quarter, spacing: .small) {
                        for tutorial in tutorials {
                            Card {
                                VStack(spacing: .small) {
                                    Text {
                                        tutorial.title
                                    }
                                    .fontSize(.large)
                                    Text {
                                        tutorial.description
                                    }
                                    Link(destination: "/tutorial/\(tutorial.slug)") {
                                        "Read more"
                                    }
                                    .foregroundColor(.accent)
                                }
                            } header: {
                                Image(source: "/assets/img/\(tutorial.thumbnail)")
                                    .aspectRatio(.unequal, fit: .contain)
                            }
                            .borderShape(.largerounded)
                            .padding(length: .medium)
                            .backgroundColor(.custom("blue/transparent"))
                        }
                    }
                }
            }
        }
    }
    
    struct ShowView: View {
        
        let tutorial: Tutorial

        var body: Content {
            PageContainer {
                Header {
                    Text {
                        tutorial.title
                    }
                    .fontSize(.large)
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
                                ZStack {
                                    for step in section.steps {
                                        ConsoleView(step: step, section: section.index, tutorial: tutorial.index)
                                    }
                                }
                                .frame(width: .twelve)
                                Scroll {
                                    HStack(spacing: .large) {
                                        for step in section.steps {
                                            StepView(step: step)
                                        }
                                    }
                                }
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
