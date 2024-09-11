import HTMLKit

struct ContextMenuItem: View {
    
    let isSelected: Bool
    
    let content: [Content]
    
    init(isSelected: Bool = false, @ContentBuilder<Content> content: () -> [Content]) {
        
        self.isSelected = isSelected
        self.content = content()
    }
    
    var body: Content {
        Division {
            content
        }
        .class("context-item")
        .modify(if: isSelected) { item in
            item.class("context-item selected")
        }
    }
}
