import HTMLKit

struct OutlineList: View {
    
    var label: String?
    
    let content: [Content]
    
    init(label: String? = nil, @ContentBuilder<Content> content: () -> [Content]) {
        
        self.label = label
        self.content = content()
    }
    
    var body: Content {
        Division {
            Paragraph {
                label
            }
            .class("list-label")
            content
        }
        .class("outline-list")
    }
}
