import HTMLKit
import HTMLKitComponents

struct ImageExample: View {
    
    var body: Content {
        ViewContainer {
            HStack(alignment: .top) {
                VStack {
                    VStack {
                        Text {
                            "Image"
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
                            "View size"
                        }
                        .fontSize(.medium)
                        .foregroundColor(.primary)
                        Text {
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo."
                        }
                        ScrollView(direction: .horizontal) {
                            for scale in Tokens.ImageScale.allCases {
                                ExampleView {
                                    Image(source: "/assets/bamberg.jpeg")
                                        .imageScale(scale)
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
                    .contentSpace(.small)
                    .tag("size")
                    VStack {
                        Text {
                            "View shape"
                        }
                        .fontSize(.medium)
                        .foregroundColor(.primary)
                        Text {
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo."
                        }
                        ScrollView(direction: .horizontal) {
                            for shape in Tokens.BorderShape.allCases {
                                ExampleView {
                                    Image(source: "/assets/bamberg.jpeg")
                                        .imageScale(.small)
                                        .borderShape(shape)
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
                    .contentSpace(.small)
                    .tag("shape")
                    VStack {
                        Text {
                            "Aspect ratio"
                        }
                        .fontSize(.medium)
                        .foregroundColor(.primary)
                        Text {
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo."
                        }
                        ScrollView(direction: .horizontal) {
                            for fit in Tokens.ObjectFit.allCases {
                                ExampleView {
                                    Image(source: "/assets/bamberg.jpeg")
                                        .imageScale(.medium)
                                        .aspectRatio(.unequal, fit: fit)
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
                    .contentSpace(.small)
                    .tag("aspect")
                    VStack {
                        Text {
                            "Image grouping"
                        }
                        .fontSize(.medium)
                        .foregroundColor(.primary)
                        Text {
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo."
                        }
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
                    }
                    .contentSpace(.small)
                    .tag("group")
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
                        Link(destination: "#size") {
                            "View size"
                        }
                        Link(destination: "#shape") {
                            "View shape"
                        }
                        Link(destination: "#aspect") {
                            "Aspect ratio"
                        }
                        Link(destination: "#group") {
                            "Image grouping"
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
