import HTMLKit

struct DialogWindow: View {
    
    let content: [Content]
    
    let sidebar: [Content]
    
    let bottom: [Content]
    
    init(@ContentBuilder<Content> content: () -> [Content], @ContentBuilder<Content> sidebar: () -> [Content], @ContentBuilder<Content> bottom: () -> [Content]) {
        self.content = content()
        self.sidebar = sidebar()
        self.bottom = bottom()
    }
    
    var body: Content {
        Division {
            if !sidebar.isEmpty {
                Division {
                    sidebar
                }
                .class("dialog-sidebar")
            }
            Division {
                content
                Division {
                    bottom
                }
                .class("xcode-buttons")
            }
            .class("dialog-detail")
        }
        .class("xcode-dialog")
    }
}
