import SwiftUI

struct ContentView: View {
    @EnvironmentObject var appData: AppDataModel

    var body: some View {
        HomeView()
            .environmentObject(appData)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
