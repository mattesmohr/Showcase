import HTMLKit
import HTMLKitComponents

struct ViewContainer: View {
    
    var content: [Content]
    
    init(@ContentBuilder<Content> content: () -> [Content]) {
        self.content = content()
    }
    
    var body: Content {
        PageContainer {
            HStack(alignment: .top) {
                VStack {
                    List(direction: .vertical) {
                        Link(destination: "/components/index") {
                            "Introduction"
                        }
                    }
                    .frame(width: .twelve)
                    List(direction: .vertical) {
                        Link(destination: "/components/form") {
                            "Form"
                        }
                        Link(destination: "/components/field") {
                            "Fields"
                        }
                    }
                    .frame(width: .twelve)
                    List(direction: .vertical) {
                        Link(destination: "/components/text") {
                            "Text"
                        }
                        Link(destination: "/components/symbol") {
                            "Symbol"
                        }
                    }
                    .frame(width: .twelve)
                    List(direction: .vertical) {
                        Link(destination: "/components/image") {
                            "Image"
                        }
                        Link(destination: "/components/card") {
                            "Card"
                        }
                        Link(destination: "/components/button") {
                            "Button"
                        }
                        Link(destination: "/components/snippet") {
                            "Snippet"
                        }
                    }
                    .frame(width: .twelve)
                    List(direction: .vertical) {
                        Link(destination: "/components/stack") {
                            "Stack"
                        }
                        Link(destination: "/components/grid") {
                            "Grid"
                        }
                        Link(destination: "/components/list") {
                            "List"
                        }
                    }
                    .frame(width: .twelve)
                    List(direction: .vertical) {
                        Link(destination: "/components/scroll") {
                            "Scroll"
                        }
                        Link(destination: "/components/dropdown") {
                            "Dropdown"
                        }
                        Link(destination: "/components/modal") {
                            "Modal"
                        }

                    }
                    .frame(width: .twelve)
                }
                .frame(width: .two)
                .contentSpace(.small)
                VStack {
                    content
                }
                .frame(width: .ten)
                .padding()
                .contentSpace(.small)
            }
        }
    }
}
