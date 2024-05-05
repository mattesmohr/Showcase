import HTMLKit
import HTMLKitComponents

struct DocumentationContainer: View {
    
    var content: [Content]
    
    init(@ContentBuilder<Content> content: () -> [Content]) {
        
        self.content = content()
    }
    
    var body: Content {
        PageContainer {
            Section {
                Button(role: .button) {
                    "Open"
                }
                .tag("button")
                .onClick { action in
                    action.open("modal")
                }
                VStack(spacing: .small) {
                    content
                }
                .frame(width: .twelve)
                Modal {
                    VStack(spacing: .small) {
                        TextField(name: "filter", prompt: "Search for symbols, articles...")
                            .borderShape(.smallrounded)
                        Scroll {
                            VStack {
                            }
                        }
                    }
                    .frame(width: .twelve, height: .twelve)
                    .tag("documentation")
                }
                .borderShape(.smallrounded)
                .tag("modal")
            }
        }
    }
}
