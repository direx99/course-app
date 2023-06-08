import SwiftUI

struct Test: View {
    @State private var selectedTab = 0

        var body: some View {
            VStack {
                
                TabView(selection: $selectedTab) {
                    Text("View 1")
                        .tabItem {
                            Label("Tab 1", systemImage: "1.circle")
                        }
                        .tag(0)
                    
                    Text("View 2")
                        .tabItem {
                            Label("Tab 2", systemImage: "2.circle")
                        }
                        .tag(1)
                    
                    Text("View 3")
                        .tabItem {
                            Label("Tab 3", systemImage: "3.circle")
                        }
                        .tag(2)
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                .gesture(
                    DragGesture()
                        .onEnded { value in
                            if value.translation.width < 0 {
                                selectedTab = min(selectedTab + 1, 2)
                            } else if value.translation.width > 0 {
                                selectedTab = max(selectedTab - 1, 0)
                            }
                        }
                )
            }
            .frame(height: 300)
                    .background(Color.black)
                    .foregroundColor(Color.red)
        }
    }

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
