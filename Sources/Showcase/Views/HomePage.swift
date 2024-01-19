import HTMLKit
import HTMLKitComponents

enum HomePage {
    
    struct IndexView: View {
        
        var body: Content {
            PageContainer {
                Carousel {
                    Slide {
                        Text {
                            "Slide One"
                        }
                        .foregroundColor(.primary)
                    }
                    .tag("slide_1")
                    Slide {
                        Text {
                            "Slide Two"
                        }
                        .foregroundColor(.primary)
                    }
                    .tag("slide_2")
                }
                .borderShape(.smallrounded)
                VStack {
                    VStack {
                        Text {
                            "Motivation"
                        }
                        .fontSize(.large)
                        .foregroundColor(.primary)
                        Text {
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet."
                        }
                    }
                    .contentSpace(.small)
                    HStack {
                        VStack {
                            Text {
                                "Documentation"
                            }
                            .fontSize(.large)
                            .foregroundColor(.primary)
                            Text {
                                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo."
                            }
                            Link(destination: "#") {
                                "Read more"
                            }
                            .foregroundColor(.primary)
                        }
                        .contentSpace(.small)
                        VStack {
                            Text {
                                "Tutorials"
                            }
                            .fontSize(.large)
                            .foregroundColor(.primary)
                            Text {
                                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo."
                            }
                            Link(destination: "#") {
                                "Read more"
                            }
                            .foregroundColor(.primary)
                        }
                        .contentSpace(.small)
                        VStack {
                            Text {
                                "Examples"
                            }
                            .fontSize(.large)
                            .foregroundColor(.primary)
                            Text {
                                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo."
                            }
                            Link(destination: "#") {
                                "Read more"
                            }
                            .foregroundColor(.primary)
                        }
                        .contentSpace(.small)
                    }
                    .contentSpace(.small)
                }
                .contentSpace(.large)
            }
        }
    }
}
