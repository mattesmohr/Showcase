import HTMLKit
import HTMLKitComponents

struct ImageExample: View {
    
    var body: Content {
        ViewContainer {
            HStack(alignment: .top) {
                VStack(spacing: .large) {
                    VStack(spacing: .small) {
                        Text {
                            "Image"
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
                            Image(source: "/assets/bamberg.jpeg")
                                .imageScale(.medium)
                                .borderShape(.smallrounded)
                        }
                        .frame(width: .twelve)
                        Snippet(highlight: .plaintext) {
                            """
                            Image(source: "/assets/bamberg.jpeg")
                                .imageScale(.medium)
                                .borderShape(.smallrounded)
                            """
                        }
                        .backgroundColor(.custom("control-background"))
                        .borderColor(.custom("control-border"))
                        .borderShape(.smallrounded)
                    }
                    VStack(spacing: .small) {
                        Text {
                            "View size"
                        }
                        .fontSize(.medium)
                        .foregroundColor(.accent)
                        Text {
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo."
                        }
                        .foregroundColor(.white)
                        Scroll {
                            HStack(spacing: .small) {
                                for scale in Tokens.ImageScale.allCases {
                                    ExampleView {
                                        Image(source: "/assets/bamberg.jpeg")
                                            .imageScale(scale)
                                    }
                                }
                            }
                        }
                        Snippet(highlight: .plaintext) {
                            """
                            Image(source: "")
                                .imageScale(.medium)
                            """
                        }
                        .backgroundColor(.custom("control-background"))
                        .borderColor(.custom("control-border"))
                        .borderShape(.smallrounded)
                    }
                    .tag("size")
                    VStack(spacing: .small) {
                        Text {
                            "View shape"
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
                                        Image(source: "/assets/bamberg.jpeg")
                                            .imageScale(.small)
                                            .borderShape(shape)
                                    }
                                }
                            }
                        }
                        Snippet(highlight: .plaintext) {
                            """
                            Image(source: "")
                                .clipShape(.smallaround)
                            """
                        }
                        .backgroundColor(.custom("control-background"))
                        .borderColor(.custom("control-border"))
                        .borderShape(.smallrounded)
                    }
                    .tag("shape")
                    VStack(spacing: .small) {
                        Text {
                            "Aspect ratio"
                        }
                        .fontSize(.medium)
                        .foregroundColor(.accent)
                        Text {
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo."
                        }
                        .foregroundColor(.white)
                        Scroll {
                            HStack(spacing: .small) {
                                for fit in Tokens.ObjectFit.allCases {
                                    ExampleView {
                                        Image(source: "/assets/bamberg.jpeg")
                                            .imageScale(.medium)
                                            .aspectRatio(.unequal, fit: fit)
                                    }
                                }
                            }
                        }
                        Snippet(highlight: .plaintext) {
                            """
                            Image(source: "")
                                .aspectRatio(.unequal, fit: .cover)
                            """
                        }
                        .backgroundColor(.custom("control-background"))
                        .borderColor(.custom("control-border"))
                        .borderShape(.smallrounded)
                    }
                    .tag("aspect")
                    VStack(spacing: .small) {
                        Text {
                            "Image grouping"
                        }
                        .fontSize(.medium)
                        .foregroundColor(.accent)
                        Text {
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo."
                        }
                        .foregroundColor(.white)
                        ExampleView {
                            Grouping {
                                Image(source: "/assets/bamberg.jpeg")
                                    .imageScale(.small)
                                    .aspectRatio(.equal, fit: .cover)
                                    .clipShape(.circle)
                                Image(source: "/assets/bamberg.jpeg")
                                    .imageScale(.small)
                                    .aspectRatio(.equal, fit: .cover)
                                    .clipShape(.circle)
                                Image(source: "/assets/bamberg.jpeg")
                                    .imageScale(.small)
                                    .aspectRatio(.equal, fit: .cover)
                                    .clipShape(.circle)
                                Image(source: "/assets/bamberg.jpeg")
                                    .imageScale(.small)
                                    .aspectRatio(.equal, fit: .cover)
                                    .clipShape(.circle)
                            }
                        }
                        .frame(width: .twelve)
                        Snippet(highlight: .plaintext) {
                            """
                            Grouping {
                                Image(source: "/assets/bamberg.jpeg")
                                    .imageScale(.small)
                                    .aspectRatio(.equal, fit: .cover)
                                    .clipShape(.circle)
                                Image(source: "/assets/bamberg.jpeg")
                                    .imageScale(.small)
                                    .aspectRatio(.equal, fit: .cover)
                                    .clipShape(.circle)
                                Image(source: "/assets/bamberg.jpeg")
                                    .imageScale(.small)
                                    .aspectRatio(.equal, fit: .cover)
                                    .clipShape(.circle)
                                Image(source: "/assets/bamberg.jpeg")
                                    .imageScale(.small)
                                    .aspectRatio(.equal, fit: .cover)
                                    .clipShape(.circle)
                            }
                            """
                        }
                        .backgroundColor(.custom("control-background"))
                        .borderColor(.custom("control-border"))
                        .borderShape(.smallrounded)
                    }
                    .tag("group")
                }
                .frame(width: .nine)
                .padding()
                VStack(spacing: .small) {
                    Text {
                        "Quick navigation"
                    }
                    .textStyle(SubtitleStyle())
                    List(direction: .vertical) {
                        Link(destination: "#size") {
                            Text {
                                "View size"
                            }
                            .foregroundColor(.white)
                        }
                        Link(destination: "#shape") {
                            Text {
                                "View shape"
                            }
                            .foregroundColor(.white)
                        }
                        Link(destination: "#aspect") {
                            Text {
                                "Aspect ratio"
                            }
                            .foregroundColor(.white)
                        }
                        Link(destination: "#group") {
                            Text {
                                "Image grouping"
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
