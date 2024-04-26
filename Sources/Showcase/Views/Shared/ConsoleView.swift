import HTMLKit
import HTMLKitComponents

struct ConsoleView: View {
    
    let index: Int
    
    let lines: [String]
    
    let highlight: [Int]
    
    var classes: [String]
    
    init(index: Int, code: TutorialCode) {
        
        self.index = index
        self.lines = code.code.components(separatedBy: "\n")
        self.highlight = code.highlight
        self.classes = ["console"]
    }
    
    var body: Content {
        Division {
            PreformattedText {
                for (index, line) in lines.enumerated() {
                    if highlight.contains(where: { $0 == (index + 1) }) {
                        Paragraph { line }
                            .class("change")
                    } else {
                        Paragraph { line }
                    }
                }
            }
            .class("code")
        }
        .class(classes.joined(separator: " "))
        .custom(key: "data-index", value: index)
    }
}
