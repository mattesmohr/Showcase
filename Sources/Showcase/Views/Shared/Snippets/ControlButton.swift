import HTMLKit

struct ControlButton: View {
    
    let isPrimary: Bool
    
    let content: [Content]
    
    init(isPrimary: Bool = false, @ContentBuilder<Content> content: () -> [Content]) {
        
        self.isPrimary = isPrimary
        self.content = content()
    }
    
    var body: Content {
        Division {
            content
        }
        .class("control-button")
        .modify(if: isPrimary) { item in
            item.class("control-button primary")
        }
    }
}
