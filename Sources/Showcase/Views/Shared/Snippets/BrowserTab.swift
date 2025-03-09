import HTMLKit

struct BrowserTab: View {
    
    let label: String
    
    let isActive: Bool
    
    init(label: String, isActive: Bool = false) {
        self.label = label
        self.isActive = isActive
    }
    
    var body: Content {
        Division {
            Paragraph {
                label
            }
        }
        .class("browser-tab")
        .modify(if: isActive) { item in
            item.class("browser-tab active")
        }
    }
}
