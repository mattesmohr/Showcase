import HTMLKit

struct MenuBarItem: View {
    
    var content: [Content]
    
    let isSelected: Bool
    
    init(isSelected: Bool = false, @ContentBuilder<Content> content: () -> [Content]) {
        
        self.isSelected = isSelected
        self.content = content()
    }
    
    var body: Content {
        Division {
            Paragraph {
                content
            }
        }
        .class("menubar-item")
        .modify(if: isSelected) { item in
            item.class("menubar-item selected")
        }
    }
}
