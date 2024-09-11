import HTMLKit

struct PackageCategory: View {
    
    let title: String
    
    var content: [Content]
    
    init(title: String, @ContentBuilder<Content> content: () -> [Content]) {
        
        self.title = title
        self.content = content()
    }
    
    var body: Content {
        Division {
            Division {
                title
            }
            .class("category-title")
            Division {
                content
            }
            .class("package-items")
        }
        .class("package-category")
    }
}
