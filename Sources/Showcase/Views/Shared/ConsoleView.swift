import HTMLKit
import HTMLKitComponents

struct ConsoleView: View {
    
    let lines: [String]
    
    let highlight: [Int]
    
    var classes: [String]
    
    init() {
        
        self.lines = []
        self.highlight = []
        self.classes = ["console"]
    }
    
    init(code: TutorialCode) {
        
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
                            .class("highlight")
                    } else {
                        Paragraph { line }
                    }
                }
            }
            .class("code")
        }
        .class(classes.joined(separator: " "))
    }
}
