// Swift function to fetch definition for a word
import Foundation
import Figlet

struct DictionaryDefinition: Codable {
    let meanings: [Meaning]
}

struct Meaning: Codable {
    let partOfSpeech: String
    let definitions: [String]
}

func fetchDefinition(for word: String) throws -> DictionaryDefinition? {
    guard let url = URL(string: "https://api.dictionaryapi.dev/api/v2/entries/en/\(word)") else {
        throw APIError.invalidURL
    }

    let data = try Data(contentsOf: url)
    let decoder = JSONDecoder()
    let definitions = try decoder.decode([DictionaryDefinition].self, from: data)
    return definitions.first
}

enum APIError: Error {
    case invalidURL
    case decodingError
}

// Example usage
let word = "example"
do {
    if let definition = try fetchDefinition(for: word) {
        print(definition.meanings)
    } else {
        print("Definition not found for the word: \(word)")
    }
} catch {
    print("Error: \(error)")
}
