import Foundation

extension Date {
    /// Format date using specified format.
    ///   - parameters:
    ///     - format: A date pattern string such as "MMM d"
    func formatted(as format: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: self)
    }
}
