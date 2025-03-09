/// A type that represents a tutorial step
struct TutorialStep: Codable {
    
    /// The index of the step
    let index: Int
    
    /// A short description what the step ist about
    let description: String
    
    /// A optional side note for the step
    var note: String?
    
    /// A optional code representation associated with the step
    var code: TutorialCode?
}
