import HTMLKitComponents

extension Tokens.BackgroundColor: CaseIterable {
    
    public static var allCases: [HTMLKitComponents.Tokens.BackgroundColor] {
        return [.black, .gray, .silver, .white, .red, .brown, .blue, .cyan, .green, .indigo, .mint, .orange, .yellow, .pink, .purple, .accent]
    }
}

extension Tokens.FontSize: CaseIterable {
    
    public static var allCases: [HTMLKitComponents.Tokens.FontSize] {
        return [.extralarge, .large, .medium, .small, .tiny]
    }
}

extension Tokens.FontStyle: CaseIterable {
    
    public static var allCases: [HTMLKitComponents.Tokens.FontStyle] {
        return [.italic, .oblique]
    }
}

extension Tokens.FontWeight: CaseIterable {
    
    public static var allCases: [HTMLKitComponents.Tokens.FontWeight] {
        return [.black, .bold, .heavy, .semibold, .medium, .regular, .light, .thin, .ultraLight]
    }
}

extension Tokens.TextStyle: CaseIterable {
    
    public static var allCases: [HTMLKitComponents.Tokens.TextStyle] {
        return [.title, .headline, .subheadline, .body, .callout, .caption, .code, .footnote]
    }
}

extension Tokens.ButtonStyle: CaseIterable {
    
    public static var allCases: [HTMLKitComponents.Tokens.ButtonStyle] {
        return [.primary, .secondary, .outline]
    }
}

extension Tokens.FlowDirection: CaseIterable {
    
    public static var allCases: [HTMLKitComponents.Tokens.FlowDirection] {
        return [.horizontal, .vertical]
    }
}

extension Tokens.ContentSpace: CaseIterable {
    
    public static var allCases: [HTMLKitComponents.Tokens.ContentSpace] {
        return [.large, .medium, .small, .around, .between, .evenly]
    }
}

extension Tokens.BorderShape: CaseIterable {
    
    public static var allCases: [HTMLKitComponents.Tokens.BorderShape] {
        return [.smallrounded, .largerounded, .fullrounded]
    }
}

extension Tokens.ImageScale: CaseIterable {
    
    public static var allCases: [HTMLKitComponents.Tokens.ImageScale] {
        return [.small, .medium, .large]
    }
}

extension Tokens.HorizontalAlignment: CaseIterable {
    
    public static var allCases: [HTMLKitComponents.Tokens.HorizontalAlignment] {
        return [.leading, .center, .trailing]
    }
}

extension Tokens.VerticalAlignment: CaseIterable {
    
    public static var allCases: [HTMLKitComponents.Tokens.VerticalAlignment] {
        return [.top, .center, .bottom, .baseline]
    }
}

extension Tokens.ObjectFit: CaseIterable {
    
    public static var allCases: [HTMLKitComponents.Tokens.ObjectFit] {
        return [.contain, .cover, .fill, .scaleDown]
    }
}

extension Tokens.TextDecoration: CaseIterable {
    
    public static var allCases: [HTMLKitComponents.Tokens.TextDecoration] {
        return [.overline, .strikeThrough, .underline]
    }
}

extension Tokens.TextCase: CaseIterable {
    
    public static var allCases: [HTMLKitComponents.Tokens.TextCase] {
        return [.capitalize, .lowercase, .uppercase]
    }
}

extension Symbol.SymbolNames: CaseIterable {
    
    public static var allCases: [HTMLKitComponents.Symbol.SymbolNames] {
        return [.bell, .bookmark, .calendar, .chart(.pie), .chevron(.down), .chevron(.left), .chevron(.right), .chevron(.up), .clock, .cloud, .ellipsis(.horizontal), .ellipsis(.vertical), .envelope, .eye, .file, .filter, .flask, .folder, .house, .key, .lifepreserver, .lightbulb, .location, .lock, .pencil, .person, .photo, .refresh, .scope, .sidebar(.left), .sidebar(.right), .sidebar(.split), .sidebar(.split), .target, .target, .text(.center), .text(.justify), .text(.left), .text(.right), .trash, .tresor]
    }
}
