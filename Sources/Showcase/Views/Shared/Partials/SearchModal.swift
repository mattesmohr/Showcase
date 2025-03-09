import HTMLKit
import HTMLKitComponents

/// A modal that pops up on the middle of the viewport
struct SearchModal: View {
    
    var body: Content {
        Modal {
            VStack(spacing: .small) {
                TextField(name: "filter", prompt: "Search for symbols, articles...")
                    .borderShape(.smallrounded)
                Scroll {
                    VStack {
                        // Content will be dynamically injected
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
