import SwiftUI

@main
struct DeepCoffeLinksApp: App {
    @StateObject var appData = AppDataModel()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(appData)
                .onOpenURL { url in
                    if appData.checkDeepLink(url: url) {
                        print(url)
                        print("FROM Deep Link")
                    } else {
                        print(url)
                        print("FALL BACK Deep Link")
                    }
                }
        }
    }
}
