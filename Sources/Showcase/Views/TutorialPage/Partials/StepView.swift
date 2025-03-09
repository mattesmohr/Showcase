import HTMLKit
import HTMLKitComponents

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
            if let note = note {
                Division {
                    Division {
                        Symbol(system: .lightbulb)
                    }
                    .class("trigger")
                    Paragraph {
                        MarkdownString {
                            note
                        }
                    }
                    .class("note")
                }
                .class("explanation")
            }
            Paragraph {
                MarkdownString {
                    description
                }
            }
            .class("description")
        }
        .class(classes.joined(separator: " "))
        .custom(key: "data-index", value: index)
    }
}
