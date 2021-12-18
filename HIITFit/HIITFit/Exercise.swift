import Foundation

struct Exercise {
    let exerciseName: String
    let videoName: String
    
    enum ExerciseEnum: String {
        case squat = "Squat"
        case stepUp = "Step Up"
        case burpee = "Burpee"
        case sunSalute = "Sun Salute"
    }
}

extension Exercise {
    static let exercises = [Exercise(exerciseName: Exercise.ExerciseEnum.squat.rawValue, videoName: "squat"),
                            Exercise(exerciseName: Exercise.ExerciseEnum.stepUp.rawValue, videoName: "step-up"), Exercise(exerciseName: Exercise.ExerciseEnum.burpee.rawValue, videoName: "burpee"),
                            Exercise(exerciseName: Exercise.ExerciseEnum.sunSalute.rawValue, videoName: "sun-salute")
    ]
}
