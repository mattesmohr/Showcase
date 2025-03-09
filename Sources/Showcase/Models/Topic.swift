/// A type that represents reference topics
struct Topic: Codable {
    
    /// The title of the topic
    let title: String
    
    /// The symbols associated with the topic
    var symbols: [CodeSymbol] = []
}
