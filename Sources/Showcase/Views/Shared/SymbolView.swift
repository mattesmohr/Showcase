import HTMLKit
import HTMLKitComponents

public struct SymbolView: View {
    
    public var content: [Content]
    
    public var classes: [String]
    
    public init(@ContentBuilder<Content> content: () -> [Content]) {
        
        self.content = content()
        self.classes = ["icon"]
    }
    
    public var body: Content {
        Division {
            Division {
                Division {
                    content
                }
                .class("icon-content")
            }
            .class("icon-gradient")
        }
        .class(classes.joined(separator: " "))
    }
}
