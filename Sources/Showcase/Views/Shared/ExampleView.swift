import HTMLKit
import HTMLKitComponents

public struct ExampleView: View {
    
    /// A size for column.
    public enum RowSize {
         
        case one
        case two
        case three
        case four
        case five
        case six
        case seven
        case eight
        case nine
        case ten
        case eleven
        case twelve
        
        var value: String {
            
            switch self {
            case .one:
                return "one"
                
            case .two:
                return "two"
                
            case .three:
                return "three"
                
            case .four:
                return "four"
                
            case .five:
                return "five"
                
            case .six:
                return "six"
                
            case .seven:
                return "seven"
                
            case .eight:
                return "eight"
                
            case .nine:
                return "nine"
                
            case .ten:
                return "ten"
                
            case .eleven:
                return "eleven"
                
            case .twelve:
                return "twelve"
            }
        }
        
    }
    
    /// A size for column.
    public enum ColumnSize {
        
        case one
        case two
        case three
        case four
        case five
        case six
        case seven
        case eight
        case nine
        case ten
        case eleven
        case twelve
        
        var value: String {
            
            switch self {
            case .one:
                return "one"
                
            case .two:
                return "two"
                
            case .three:
                return "three"
                
            case .four:
                return "four"
                
            case .five:
                return "five"
                
            case .six:
                return "six"
                
            case .seven:
                return "seven"
                
            case .eight:
                return "eight"
                
            case .nine:
                return "nine"
                
            case .ten:
                return "ten"
                
            case .eleven:
                return "eleven"
                
            case .twelve:
                return "twelve"
            }
        }
    }
    
    public var content: [Content]
    
    public var classes: [String]
    
    public init(@ContentBuilder<Content> content: () -> [Content]) {
        
        self.content = content()
        self.classes = ["example"]
    }
    
    public var body: Content {
        Division {
            Division {
                Division {
                    content
                }
                .class("example-content")
            }
            .class("example-gradient")
            Division {
                Division {
                    Symbol(system: .lightbulb)
                }
                .class("example-tool tool-scheme")
            }
            .class("example-toolbar")
        }
        .class(classes.joined(separator: " "))
    }
    
    public func frame(width: ColumnSize, height: RowSize? = nil) -> ExampleView {
        
        var newSelf = self
        newSelf.classes.append("width:\(width.value)")
        
        if let height = height {
            newSelf.classes.append("height:\(height.value)")
        }
        
        return newSelf
    }
}
