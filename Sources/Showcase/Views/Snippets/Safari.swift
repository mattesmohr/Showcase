import HTMLKit

struct Safari: View {
    
    var url: String

    let content: [Content]
    
    init(url: String, @ContentBuilder<Content> content: () -> [Content]) {
        
        self.url = url
        self.content = content()
    }
    
    var body: Content {
        Division {
            Division {
                Division {
                    Division {
                    }
                    .class("action")
                    Division {
                    }
                    .class("action")
                    Division {
                    }
                    .class("action")
                }
                .class("toolbar-actions")
                Division {
                    Paragraph {
                        url
                    }
                }
                .class("toolbar-search")
            }
            .class("safari-toolbar")
            Division {
                BrowserTab(label: "Dribble")
                BrowserTab(label: "Example", isActive: true)
            }
            .class("safari-tabbar")
            Division {
                content
            }
            .class("safari-webview")
        }
        .class("safari-window")
    }
}
