import Foundation

class Computer: Asset {
    let processor: String

    init(brand: String, model: String, office: Office, purchaseDate: Date, price: Price, processor: String) {
        self.processor = processor
        super.init(brand: brand, model: model, office: office, purchaseDate: purchaseDate, price: price)
    }

    override func description() -> String {
        return "💻 " + super.description() + ", CPU: \(processor)"
    }
}
