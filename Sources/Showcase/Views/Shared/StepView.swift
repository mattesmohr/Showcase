import HTMLKit

struct StepView: View {
    
    let index: Int
    
    let description: String
    
    var note: String?
    
    var classes: [String]
    
    init(step: TutorialStep) {
        
        self.index = step.index
        self.description = step.description
        self.note = step.note
        self.classes = ["step"]
    }
    
    var body: Content {
        Division {
            Paragraph {
                MarkdownString {
                    description
                }
            }
            .class("description")
            if let note = note {
                Paragraph {
                    MarkdownString {
                        note
                    }
                }
                .class("note")
            }
        }
        .class(classes.joined(separator: " "))
        .custom(key: "data-index", value: index)
    }
}
