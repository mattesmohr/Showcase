import HTMLKit
import HTMLKitComponents

enum ComponentsPage {
    
    struct IndexView: View {
        
        var content: [Content]
        
        init() {
            self.content = []
        }
        
        init(@ContentBuilder<Content> content: () -> [Content]) {
            self.content = content()
        }
        
        var body: Content {
            PageContainer {
                HStack(alignment: .top) {
                    VStack {
                        Navigation {
                            List(direction: .vertical) {
                                Link(destination: "/components/index") {
                                    "Introduction"
                                }
                                Link(destination: "/components/text") {
                                    "Text"
                                }
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
}
