import Foundation

struct Question {
    let text: String
    let alternative: [String]
    let answer: String
    
    init(q: String, alt: [String], a: String){
        text = q
        alternative = alt
        answer = a
    }
}
