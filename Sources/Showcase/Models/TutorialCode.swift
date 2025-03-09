/// A type that represents the code associated with the step
struct TutorialCode: Codable {
    
    /// The acutal code content
    let code: String
    
    /// The line numbers where the highlights should be applied
    let highlight: [Int]
}

