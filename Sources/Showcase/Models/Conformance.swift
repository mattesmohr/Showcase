/// A type thats represents a protocol
struct Conformance: Codable {
    
    /// The name of the protocol
    let name: String
    
    /// The type of the protocol
    let type: String
    
    /// The symbols required by the protocol
    let symbols: [CodeSymbol]
}
