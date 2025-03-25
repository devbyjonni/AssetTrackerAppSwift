import Foundation

class ECBEnvelope {
    func getMockedExchangeRates() -> [String: Double] {
        return [
            "USD": 1.0,
            "EUR": 0.91,
            "SEK": 10.5,
            "GBP": 0.78
        ]
    }
}
