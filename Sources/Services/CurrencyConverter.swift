import Foundation

class CurrencyConverter {
    private let exchangeRates: [String: Double]

    init(exchangeRates: [String: Double]) {
        self.exchangeRates = exchangeRates
    }

    func convert(price: Price, to targetCurrency: String) -> Price {
        guard let sourceRate = exchangeRates[price.currency.code],
              let targetRate = exchangeRates[targetCurrency] else {
            return price // fallback, no conversion
        }

        let baseAmount = price.amount / sourceRate
        let convertedAmount = baseAmount * targetRate
        return Price(amount: convertedAmount, currency: Currency(code: targetCurrency))
    }
}
