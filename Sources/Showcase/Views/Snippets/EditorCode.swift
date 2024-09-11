import HTMLKit

struct EditorCode: View {
    
    let content: [Content]
    
    init(@ContentBuilder<Content> content: () -> [Content]) {
        self.content = content()
    }
    
    var body: Content {
        PreformattedText {
            content
        }
        .class("code-code")
    }
}
