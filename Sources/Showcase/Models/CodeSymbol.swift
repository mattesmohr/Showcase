/// A type that represents a code signature
struct CodeSymbol: Codable {
    
    /// A enumeration of possible symbols
    enum SymbolType: String, Codable {
        
        /// Indicates a method
        case method
        
        /// Indicates a parameter
        case parameter
        
        /// Indicates a initializer
        case initializer
        
        /// Indicates a enum
        case enumeration
        
        /// Indicates a enum case
        case `case`
    }
    
    /// A code representation of the symbol
    let code: String
    
    /// A comment explaining the symbol
    var comment: String?
    
    /// The type of the symbol
    let type: SymbolType
    
    /// A reference link to further documentation for the symbol
    let reference: String?
    
    /// A annotation about the symbol
    let annotation: CodeAnnotation?
}
