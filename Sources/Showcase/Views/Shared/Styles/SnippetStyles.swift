import HTMLKitComponents

struct SnippetStyle: SnippetConfiguration {
    
    var borderWidth: Tokens.BorderWidth? = .small
    var borderColor: Tokens.BorderColor? = .system
    var borderShape: Tokens.BorderShape? = .smallrounded
    var backgroundColor: Tokens.BackgroundColor? = .system
    var viewWidth: Tokens.ViewWidth? = nil
    var viewHeight: Tokens.ViewHeight? = nil
}
