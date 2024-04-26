import HTMLKit
import HTMLKitComponents

enum ExamplePage {
    
    struct IndexView: View {

        var body: Content {
            PageContainer {
                Header {
                    Text {
                        "Examples"
                    }
                    .fontSize(.large)
                    .foregroundColor(.accent)
                }
                Section {
                    VStack(spacing: .large) {
                    }
                }
            }
        }
    }
    
    struct ShowView: View {

        var body: Content {
            PageContainer {
                Header {
                    Text {
                        "Example"
                    }
                    .fontSize(.large)
                    .foregroundColor(.accent)
                }
                Section {
                    VStack(spacing: .large) {
                    }
                }
            }
        }
    }
}
