import Foundation

class Asset {
    let brand: String
    let model: String
    let office: Office
    let purchaseDate: Date
    let price: Price

    init(brand: String, model: String, office: Office, purchaseDate: Date, price: Price) {
        self.brand = brand
        self.model = model
        self.office = office
        self.purchaseDate = purchaseDate
        self.price = price
    }

    func description() -> String {
        return "\(brand) \(model) – \(office.name), Purchased: \(purchaseDate), Price: \(price.amount) \(price.currency.code)"
    }
}
