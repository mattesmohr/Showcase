import HTMLKit
import HTMLKitComponents

struct ThumbnailView: View {
    
    /// A size for column.
    public enum RowSize {
         
        case hundred
        case twohundred
        
        var value: String {
            
            switch self {
            case .hundred:
                return "100"
                
            case .twohundred:
                return "200"
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
    
    public var classes: [String]
    
    var content: [Content]
    
    init(@ContentBuilder<Content> content: () -> [Content]) {
        
        self.content = content()
        self.classes = ["thumbnail"]
    }

    var body: Content {
        Division {
            content
            Division {
            }
            .class("thumbnail-gradient")
        }
        .class(classes.joined(separator: " "))
    }
    
    func frame(width: ColumnSize, height: RowSize? = nil) -> ThumbnailView {
        
        var newSelf = self
        newSelf.classes.append("width:\(width.value)")
        
        if let height = height {
            newSelf.classes.append("height:\(height.value)")
        }
        
        return newSelf
    }
}
