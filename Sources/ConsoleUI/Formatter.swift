import Foundation

struct Formatter {
    static func printAssets(_ assets: [Asset]) {
        print("\n🗂 Assets:")
        if assets.isEmpty {
            print("No assets found.")
            return
        }

        for asset in assets {
            print(asset.description())
        }
    }
}
