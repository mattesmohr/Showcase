import HTMLKit

struct MacDock: View {
    
    let content: [Content]
    
    init(@ContentBuilder<Content> content: () -> [Content]) {
        self.content = content()
    }
    
    var body: Content {
        Division {
            content
        }
        .class("macos-dock")
    }
}
