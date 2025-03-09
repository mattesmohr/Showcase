/// A type that represents an api reference
struct Reference: Codable {
    
    /// A enumeration of possible reference types
    enum ReferenceType: String, Codable {
        
        /// The reference describes a structure
        case structure
        
        /// The reference describes an enum
        case enumeration
        
        /// The reference describes a method
        case method
        
        /// The reference describes an initializer
        case initializer
        
        /// The reference is a general article
        case article
    }
    
    /// The slug of the reference
    let slug: String
    
    /// The path hierachy of the reference
    let path: [DocumentPath]
    
    /// The title of the reference
    let title: String
    
    /// The type of the reference
    let type: ReferenceType
    
    /// A short description what the reference is about
    let description: String
    
    /// A list of topics related to this reference
    var topics: [Topic]
    
    /// The platforms that the reference applies to
    let platforms: [String]
    
    /// The specific targets for the reference
    let targets: [String]
    
    /// Providing additional metadata about the reference
    let annotation: CodeAnnotation?
    
    /// A code snippet that demonstrates the usage of the symbol
    let snippet: String?
    
    /// A list of protocols that the symbol conforms to
    let conformance: [String]?
}
