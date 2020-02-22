import Foundation
class ConversationDataSource {
    
    /// The number of Messages in the conversation
  var messageCount: Int {
    return messages.count
  }
  
    var messages = [openingLine]
    
    /// Add a new question to the conversation
    func add(question: String) {
      print("Asked to add question: \(question)")
      messages.append(Message(date: Date(), text: question, type: .question))
    }
    
    /// Add a new answer to the conversation
    func add(answer: String) {
        print("Asked to add answer: \(answer)")
      messages.append(Message(date: Date(), text: answer, type: .answer))
    }
    
    /// The Message at a specific point in the conversation
    func messageAt(index: Int) -> Message {
      print("Asking for message at index \(index)")
      return messages[index]
  }
}
