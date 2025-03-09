import HTMLKitComponents

struct PosterStyle: CardConfiguration {
    
    var borderColor: Tokens.BorderColor? = nil
    var borderShape: Tokens.BorderShape? = .largerounded
    var backgroundColor: Tokens.BackgroundColor? = .custom("blue/transparent")
    var foregroundColor: Tokens.ForegroundColor? = nil
}
