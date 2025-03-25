import Foundation

// Initialize services
let assetService = AssetTrackerService()
let ecbEnvelope = ECBEnvelope()
let exchangeRates = ecbEnvelope.getMockedExchangeRates()
let currencyConverter = CurrencyConverter(exchangeRates: exchangeRates)

// Load seed data
let sampleAssets = SeedData.generateSampleAssets()
sampleAssets.forEach { assetService.addAsset($0) }

// Start the console menu
let menu = Menu(assetService: assetService)
menu.show()
