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
                        .foregroundColor(.accent)
                    }
                    .tag("slide_1")
                    Slide {
                        Text {
                            "Slide Two"
                        }
                        .foregroundColor(.accent)
                    }
                    .tag("slide_2")
                }
                .borderShape(.smallrounded)
                VStack(spacing: .large) {
                    VStack(spacing: .small) {
                        Text {
                            "Motivation"
                        }
                        .fontSize(.large)
                        .foregroundColor(.accent)
                        Text {
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet."
                        }
                        .foregroundColor(.white)
                    }
                    HStack(spacing: .small) {
                        VStack(spacing: .small) {
                            Text {
                                "Documentation"
                            }
                            .fontSize(.large)
                            .foregroundColor(.accent)
                            Text {
                                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo."
                            }
                            .foregroundColor(.white)
                            Link(destination: "#") {
                                "Read more"
                            }
                            .foregroundColor(.accent)
                        }
                        VStack(spacing: .small) {
                            Text {
                                "Tutorials"
                            }
                            .fontSize(.large)
                            .foregroundColor(.accent)
                            Text {
                                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo."
                            }
                            .foregroundColor(.white)
                            Link(destination: "#") {
                                "Read more"
                            }
                            .foregroundColor(.accent)
                        }
                        VStack(spacing: .small) {
                            Text {
                                "Examples"
                            }
                            .fontSize(.large)
                            .foregroundColor(.accent)
                            Text {
                                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo."
                            }
                            .foregroundColor(.white)
                            Link(destination: "#") {
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
