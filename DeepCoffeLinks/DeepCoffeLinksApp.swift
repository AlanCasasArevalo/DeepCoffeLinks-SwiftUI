import SwiftUI

@main
struct DeepCoffeLinksApp: App {
    @StateObject var appData = AppDataModel()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(appData)
                .onOpenURL { url in
                    print(url)
                }
        }
    }
}
