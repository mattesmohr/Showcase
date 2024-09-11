import HTMLKit

struct PackageDialog: View {
    
    let title: String
    
    let content: [Content]
    
    init(title: String, @ContentBuilder<Content> content: () -> [Content]) {
        
        self.title = title
        self.content = content()
    }
    
    var body: Content {
        Division {
            Paragraph {
                title
            }
            .class("dialog-title")
            Division {
                content
            }
            .class("package-frame")
        }
        .class("package-dialog")
    }
}
