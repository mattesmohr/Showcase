import Foundation

/// A type that represents a blog article
struct Article: Codable {
    
    /// The slug of the article
    let slug: String
    
    /// The title of the article
    let title: String
    
    /// The subtitle of the article
    let subtitle: String
    
    /// A short excerpt what the article is about
    let excerpt: String
    
    /// The full content of the article
    let content: String
    
    /// The blog author of the article
    let author: Author
    
    /// The timespan when the article was published
    let published: Date
    
    /// A list of related articles
    let articles: [Article]?
}
