import HTMLKitComponents

struct SubtitleStyle: TextConfiguration {

    var fontFamily: Tokens.FontFamily? = nil
    var fontSize: Tokens.FontSize? = .small
    var fontWeight: Tokens.FontWeight? = .bold
    var foregroundColor: Tokens.ForegroundColor? = .accent
    var textCase: Tokens.TextCase? = .uppercase
    var fontStyle: Tokens.FontStyle? = nil
    var textDecoration: Tokens.TextDecoration? = nil
    var lineSpace: Tokens.LineHeight? = nil
    var lineLimit: Tokens.LineLimit? = nil
    var viewWidth: Tokens.ViewWidth? = nil
    var viewHeight: Tokens.ViewHeight? = nil
}

struct SnippetStyle: SnippetConfiguration {
    
    var borderWidth: Tokens.BorderWidth? = .small
    var borderColor: Tokens.BorderColor? = .system
    var borderShape: Tokens.BorderShape? = .smallrounded
    var backgroundColor: Tokens.BackgroundColor? = .system
    var viewWidth: Tokens.ViewWidth? = nil
    var viewHeight: Tokens.ViewHeight? = nil
}
