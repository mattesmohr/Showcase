import Foundation

extension Date {
    
    func formatted(date: DateFormatter.Style, time: DateFormatter.Style = .none) -> String {
        
        let formatter = DateFormatter()
        formatter.dateStyle = date
        formatter.timeStyle = time
        
        return formatter.string(from: self)
    }
}
