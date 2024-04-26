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
        return [.primary, .outline]
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

extension Tokens.BlurLevel: CaseIterable {
    
    public static var allCases: [Tokens.BlurLevel] {
        return [.light, .medium, .strong]
    }
}

extension Tokens.ContrastLevel: CaseIterable {
    
    public static var allCases: [Tokens.ContrastLevel] {
        return [.low, .medium, .high]
    }
}

extension Tokens.GrayscaleDepth: CaseIterable {
    
    public static var allCases: [Tokens.GrayscaleDepth] {
        return [.light, .neutral, .dark]
    }
}

extension Tokens.SaturationLevel: CaseIterable {
    
    public static var allCases: [Tokens.SaturationLevel] {
        return [.low, .medium, .high]
    }
}

extension Tokens.BrightnessLevel: CaseIterable {
    
    public static var allCases: [Tokens.BrightnessLevel] {
        return [.low, .medium, .high]
    }
}

extension Tokens.BlurRadius: CaseIterable {
    
    public static var allCases: [Tokens.BlurRadius] {
        return [.small, .medium, .large]
    }
}

extension Tokens.ShadowColor: CaseIterable {
    
    public static var allCases: [Tokens.ShadowColor] {
        return [.black, .blue, .brown, .cyan, .gray, .green, .indigo, .mint, .orange, .pink, .purple, .red, .silver, .teal]
    }
}

extension Tokens.FontFamily: CaseIterable {
    
    public static var allCases: [Tokens.FontFamily] {
        return [.arial, .helvetica, .verdana]
    }
}

extension Tokens.ForegroundColor: CaseIterable {
    
    public static var allCases: [Tokens.ForegroundColor] {
        return [.black, .blue, .brown, .cyan, .gray, .green, .indigo, .mint, .orange, .pink, .purple, .red, .silver, .teal]
    }
}

extension Tokens.BorderColor: CaseIterable {
    
    public static var allCases: [Tokens.BorderColor] {
        return [.black, .blue, .brown, .cyan, .gray, .green, .indigo, .mint, .orange, .pink, .purple, .red, .silver, .teal]
    }
}

extension Tokens.TextAlignment: CaseIterable {
    
    public static var allCases: [Tokens.TextAlignment] {
        return [.leading, .center, .trailing]
    }
}

extension Tokens.ListSpace: CaseIterable {
    
    public static var allCases: [Tokens.ListSpace] {
        return [.large, .medium, .small]
    }
}

extension Tokens.BorderWidth: CaseIterable {
    
    public static var allCases: [Tokens.BorderWidth] {
        return [.large, .medium, .small]
    }
}

extension Tokens.ColorScheme: CaseIterable {
    
    public static var allCases: [Tokens.ColorScheme] {
        return [.dark, .light]
    }
}

extension Tokens.ClipShape: CaseIterable {
    
    public static var allCases: [Tokens.ClipShape] {
        return [.circle]
    }
}

extension Tokens.GridRatio: CaseIterable {
    
    public static var allCases: [Tokens.GridRatio] {
        return [.fit, .quarter, .half, .third, .fifth, .sixth]
    }
}

extension Tokens.AspectRatio: CaseIterable {
    
    public static var allCases: [Tokens.AspectRatio] {
        return [.equal, .unequal]
    }
}

extension Tokens.OpacityValue: CaseIterable {
    
    public static var allCases: [Tokens.OpacityValue] {
        return [.intransparent, .transparent]
    }
}

extension Tokens.PaddingLength: CaseIterable {
    
    public static var allCases: [Tokens.PaddingLength] {
        return [.large, .medium, .small]
    }
}

extension Tokens.MarginLength: CaseIterable {
    
    public static var allCases: [Tokens.MarginLength] {
        return [.large, .medium, .small]
    }
}
