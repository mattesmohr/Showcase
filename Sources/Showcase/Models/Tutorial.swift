/// A type that represents a tutorial
struct Tutorial: Codable {
    
    /// The index of the tutorial
    let index: Int
    
    /// The slug of the tutorial
    let slug: String
    
    /// A thumbnail for the tutorial
    let thumbnail: String
    
    /// The title of the tutorial
    let title: String
    
    /// A short description what the tutorial is about
    let description: String
    
    /// The sections of the tutorials
    let sections: [TutorialSection]
}
