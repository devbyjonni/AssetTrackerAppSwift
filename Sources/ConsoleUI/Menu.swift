import Foundation

class Menu {
    let assetService: AssetTrackerService

    init(assetService: AssetTrackerService) {
        self.assetService = assetService
    }

    func show() {
        while true {
            print("""
            \n📦 Asset Tracker Menu:
            1. List all assets
            2. Sort by purchase date
            3. Sort by office then date
            0. Exit
            """)
            print("Choose an option: ", terminator: "")
            guard let input = readLine(), let choice = Int(input) else {
                print("Invalid input. Try again.")
                continue
            }

            switch choice {
            case 1:
                Formatter.printAssets(assetService.listAssets())
            case 2:
                Formatter.printAssets(assetService.sortByPurchaseDate())
            case 3:
                Formatter.printAssets(assetService.sortByOfficeThenDate())
            case 0:
                print("👋 Goodbye!")
                return
            default:
                print("Invalid option.")
            }
        }
    }
}
