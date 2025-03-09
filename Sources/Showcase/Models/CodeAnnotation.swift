/// A type that represents code annotation
struct CodeAnnotation: Codable {
    
    /// The status of the annotation e. g. deprecated
    let status: String
    
    /// The message for the annotation
    let message: String
}
