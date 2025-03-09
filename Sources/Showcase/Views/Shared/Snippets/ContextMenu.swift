import HTMLKit

struct ContextMenu: View {
    
    let content: [Content]
    
    init(@ContentBuilder<Content> content: () -> [Content]) {
        self.content = content()
    }
    
    var body: Content {
        Division {
            content
        }
        .class("context-menu")
    }
}
