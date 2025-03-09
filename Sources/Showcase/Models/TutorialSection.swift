/// A type that represents a tutorial section
struct TutorialSection: Codable {
    
    /// The index of the section
    let index: Int
    
    /// The title of the section
    let title: String
    
    /// A short description what the section is about
    let description: String
    
    /// The steps within the section
    let steps: [TutorialStep]
}
