import HTMLKit

struct DialogField: View {
    
    let label: String
    
    let value: String
    
    let isFocused: Bool
    
    init(label: String, value: String, isFocused: Bool = false) {
        
        self.label = label
        self.value = value
        self.isFocused = isFocused
    }
    
    var body: Content {
        Division {
            Paragraph {
                label
            }
            .class("field-label")
            Division {
                Paragraph {
                    value
                }
            }
            .class("field-text")
        }
        .class("dialogfield")
        .modify(if: isFocused) { item in
            item.class("dialogfield focused")
        }
    }
}
