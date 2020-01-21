import Foundation

struct Hike {
    let name: String
    let imageURL: String
    let miles: Double
}


extension Hike {
    
    static func all() -> [Hike] {
        
       return [
        Hike(name: "Salmonberry", imageURL: "sal", miles: 6),
        Hike(name: "Tom, Dick, and Harry Mountain", imageURL: "tom", miles: 5.8),
        Hike(name: "Tamanawas Falls", imageURL: "tam", miles: 5)
        ]
    }
}
