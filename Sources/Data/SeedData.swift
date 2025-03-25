import Foundation

struct SeedData {
    static func generateSampleAssets() -> [Asset] {
        let offices = [
            Office(name: "Stockholm", countryCode: "SE"),
            Office(name: "New York", countryCode: "US"),
            Office(name: "London", countryCode: "UK"),
            Office(name: "Berlin", countryCode: "DE")
        ]

        let currencies = [
            Currency(code: "EUR"),
            Currency(code: "USD"),
            Currency(code: "SEK"),
            Currency(code: "GBP")
        ]

        return [
            Smartphone(brand: "Apple", model: "iPhone 14", office: offices[0], purchaseDate: Date(timeIntervalSinceNow: -86400 * 200), price: Price(amount: 1000, currency: currencies[0]), operatingSystem: "iOS"),
            Computer(brand: "Dell", model: "XPS 13", office: offices[1], purchaseDate: Date(timeIntervalSinceNow: -86400 * 400), price: Price(amount: 1200, currency: currencies[1]), processor: "Intel i7"),
            Smartphone(brand: "Samsung", model: "Galaxy S23", office: offices[2], purchaseDate: Date(timeIntervalSinceNow: -86400 * 150), price: Price(amount: 900, currency: currencies[3]), operatingSystem: "Android"),
            Computer(brand: "Apple", model: "MacBook Pro", office: offices[3], purchaseDate: Date(timeIntervalSinceNow: -86400 * 300), price: Price(amount: 2200, currency: currencies[0]), processor: "M2"),
            Smartphone(brand: "Google", model: "Pixel 8", office: offices[1], purchaseDate: Date(timeIntervalSinceNow: -86400 * 100), price: Price(amount: 850, currency: currencies[1]), operatingSystem: "Android"),
            Computer(brand: "HP", model: "EliteBook", office: offices[0], purchaseDate: Date(timeIntervalSinceNow: -86400 * 250), price: Price(amount: 1300, currency: currencies[2]), processor: "AMD Ryzen 7"),
            Smartphone(brand: "OnePlus", model: "11", office: offices[2], purchaseDate: Date(timeIntervalSinceNow: -86400 * 180), price: Price(amount: 780, currency: currencies[3]), operatingSystem: "Android"),
            Computer(brand: "Lenovo", model: "ThinkPad X1", office: offices[3], purchaseDate: Date(timeIntervalSinceNow: -86400 * 210), price: Price(amount: 1450, currency: currencies[0]), processor: "Intel i5"),
            Smartphone(brand: "Sony", model: "Xperia 1 V", office: offices[0], purchaseDate: Date(timeIntervalSinceNow: -86400 * 90), price: Price(amount: 950, currency: currencies[2]), operatingSystem: "Android"),
            Computer(brand: "Microsoft", model: "Surface Laptop 5", office: offices[1], purchaseDate: Date(timeIntervalSinceNow: -86400 * 320), price: Price(amount: 1600, currency: currencies[1]), processor: "Intel i7")
        ]
    }
}
