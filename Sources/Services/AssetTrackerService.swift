import Foundation

class AssetTrackerService {
    private(set) var assets: [Asset] = []

    func addAsset(_ asset: Asset) {
        assets.append(asset)
    }

    func listAssets() -> [Asset] {
        return assets
    }

    func sortByPurchaseDate() -> [Asset] {
        return assets.sorted { $0.purchaseDate < $1.purchaseDate }
    }

    func sortByOfficeThenDate() -> [Asset] {
        return assets.sorted {
            if $0.office.name != $1.office.name {
                return $0.office.name < $1.office.name
            } else {
                return $0.purchaseDate < $1.purchaseDate
            }
        }
    }
}
