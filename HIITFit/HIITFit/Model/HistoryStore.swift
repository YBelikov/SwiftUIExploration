import Foundation

struct HistoryStore {
    init() {
#if DEBUG
    createDevData()
#endif
    }
    
    var exerciseDays: [ExerciseDay] = []
}

struct ExerciseDay: Identifiable {
    let id = UUID()
    let date: Date
    var exercises: [String] = []
}
