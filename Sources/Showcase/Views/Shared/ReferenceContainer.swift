import HTMLKit
import HTMLKitComponents

struct ReferenceContainer: View {
    
    var content: [Content]
    
    init(@ContentBuilder<Content> content: () -> [Content]) {
        
        self.content = content()
    }
    
    var body: Content {
        PageContainer {
            Header {
                Text {
                    "Reference"
                }
                .fontSize(.large)
            }
            Section {
                content
            }
        }
    }
}
