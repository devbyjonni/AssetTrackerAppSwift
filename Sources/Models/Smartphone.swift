import Foundation

class Smartphone: Asset {
    let operatingSystem: String

    init(brand: String, model: String, office: Office, purchaseDate: Date, price: Price, operatingSystem: String) {
        self.operatingSystem = operatingSystem
        super.init(brand: brand, model: model, office: office, purchaseDate: purchaseDate, price: price)
    }

    override func description() -> String {
        return "📱 " + super.description() + ", OS: \(operatingSystem)"
    }
}
