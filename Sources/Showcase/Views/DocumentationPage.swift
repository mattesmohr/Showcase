import HTMLKit
import HTMLKitComponents

enum DocumentationPage {
    
    struct IndexView: View {
        
        var articles: [ApiArticle]
        
        var body: Content {
            DocumentationContainer {
                VStack(spacing: .large) {
                    VStack(spacing: .small) {
                        Text {
                            "Documentation"
                        }
                        .fontSize(.large)
                        .foregroundColor(.accent)
                    }
                }
            }
        }
    }
    
    struct InitializerView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                }
            }
        }
    }
    
    struct MethodView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                }
            }
        }
    }
    
    struct StructureView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                }
            }
        }
    }
    
    struct EnumerationView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                }
            }
        }
    }
    
    struct AlertView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    ExampleView {
                        Button(role: .button) {
                            "Show alert"
                        }
                        .tag("show_alert")
                        .onClick { action in
                            action.show("alert")
                        }
                        Alert {
                            VStack {
                                Text {
                                    "Attention attention!"
                                }
                                .bold()
                                Text {
                                    "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo."
                                }
                            }
                        }
                        .tag("alert")
                        .borderShape(.smallrounded)
                    }
                    .frame(width: .twelve)
                }
            }
        }
    }
    
    struct ButtonView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    ExampleView {
                        Button(role: .button) {
                            "Button"
                        }
                    }
                    .frame(width: .twelve)
                }
            }
        }
    }
    
    struct CardView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    ExampleView {
                        Card {
                            Text {
                                "Card"
                            }
                        }
                    }
                    .frame(width: .twelve)
                }
            }
        }
    }
    
    struct ChartView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    ExampleView {
                        Chart {
                            BarMark(value: 100, label: "Apfel")
                                .foregroundColor(.yellow)
                            BarMark(value: 30, label: "Birne")
                                .foregroundColor(.blue)
                            BarMark(value: 280, label: "Weichkäse")
                                .foregroundColor(.orange)
                            BarMark(value: 60, label: "Spezi")
                                .foregroundColor(.brown)
                        }
                    }
                    .frame(width: .twelve)
                }
            }
        }
    }
    
    struct DropdownView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    ExampleView {
                        Dropdown {
                            List(direction: .vertical) {
                                Grouping {
                                    Symbol(system: .pencil)
                                    Text {
                                        "Edit"
                                    }
                                }
                                Grouping {
                                    Symbol(system: .trash)
                                    Text {
                                        "Delete"
                                    }
                                }
                                .foregroundColor(.red)
                            }
                        } label: {
                            Button(role: .button) {
                                "Button"
                            }
                            .buttonStyle(.outline)
                        }
                    }
                    .frame(width: .twelve)
                }
            }
        }
    }
    
    struct GridView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    ExampleView {
                        Grid(ratio: .third) {
                            for _ in 1...8 {
                                Card {
                                    Text {
                                        "Text"
                                    }
                                }
                            }
                        }
                    }
                    .frame(width: .twelve)
                }
            }
        }
    }
    
    struct SymbolView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    ExampleView {
                        Scroll {
                        }
                    }
                    .frame(width: .twelve)
                }
            }
        }
    }
    
    struct ScrollView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    ExampleView {
                        Scroll {
                        }
                    }
                    .frame(width: .twelve)
                }
            }
        }
    }
    
    struct SnippetView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    ExampleView {
                    }
                    .frame(width: .twelve)
                }
            }
        }
    }
    
    struct TextView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    ExampleView {
                        Text {
                            "Example"
                        }
                        .fontSize(.large)
                        .fontWeight(.black)
                        .fontStyle(.italic)
                    }
                    .frame(width: .twelve)
                }
            }
        }
    }
    
    struct ModalView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    ExampleView {
                        Button(role: .button) {
                            "Show Modal"
                        }
                        .tag("show_button")
                        .onClick { button in
                            button.open("modal")
                        }
                    }
                    .frame(width: .twelve)
                }
            }
        }
    }
    
    struct ListView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    ExampleView {
                        List(direction: .horizontal) {
                            Text {
                                "Item 1"
                            }
                            Text {
                                "Item 2"
                            }
                            Text {
                                "Item 3"
                            }
                        }
                    }
                    .frame(width: .twelve)
                }
            }
        }
    }
    
    struct ImageView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    ExampleView {
                        Image(source: "/assets/bamberg.jpeg")
                            .imageScale(.medium)
                            .borderShape(.smallrounded)
                    }
                    .frame(width: .twelve)
                }
            }
        }
    }
    
    struct TabView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    ExampleView {
                        Tabs(direction: .horizontal) {
                            Pane {
                                Text {
                                    "Pane1"
                                }
                            } label: {
                                Symbol(system: .bell)
                                Text {
                                    "Panel1"
                                }
                            }
                            .tag("panel1")
                            .badge(3)
                            Pane {
                                Text {
                                    "Panel2"
                                }
                            } label: {
                                Symbol(system: .bell)
                                Text {
                                    "Panel2"
                                }
                            }
                            .tag("panel2")
                            .badge(5)
                        }
                        .borderShape(.smallrounded)
                    }
                    .frame(width: .twelve)
                }
            }
        }
    }
    
    struct HStackView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    ExampleView {
                        HStack {
                            for index in 0...2 {
                                Text {
                                    "Item \(index)"
                                }
                            }
                        }
                    }
                    .frame(width: .twelve)
                }
            }
        }
    }
    
    struct VStackView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    ExampleView {
                        VStack {
                            for index in 0...2 {
                                Text {
                                    "Item \(index)"
                                }
                            }
                        }
                    }
                    .frame(width: .twelve)
                }
            }
        }
    }
    
    struct ZStackView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    ExampleView {
                        ZStack {
                            for index in 0...2 {
                                Text {
                                    "Item \(index)"
                                }
                            }
                        }
                    }
                    .frame(width: .twelve)
                }
            }
        }
    }
    
    struct TextFieldView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    ExampleView {
                        TextField(name: "textfield", value: "value")
                    }
                    .frame(width: .twelve)
                }
            }
        }
    }
    
    struct TextEditorView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    ExampleView {
                        TextEditor(name: "texteditor") {
                            "value"
                        }
                    }
                    .frame(width: .twelve)
                }
            }
        }
    }
    
    struct TextPadView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    ExampleView {
                        TextPad(name: "textpad") {
                            "value"
                        }
                    }
                    .frame(width: .twelve)
                }
            }
        }
    }
    
    struct SecureFieldView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    ExampleView {
                        SecureField(name: "securefield", value: "value")
                    }
                    .frame(width: .twelve)
                }
            }
        }
    }
    
    struct CheckFieldView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    ExampleView {
                        CheckField(value: "") {
                            "Value"
                        }
                    }
                    .frame(width: .twelve)
                }
            }
        }
    }
    
    struct RadioSelectView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    ExampleView {
                        RadioSelect(value: "") {
                            "Value"
                        }
                    }
                    .frame(width: .twelve)
                }
            }
        }
    }
    
    struct SelectFieldView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    ExampleView {
                        SelectField(name: "selectfield") {
                            RadioSelect(value: "") {
                                "Value"
                            }
                        }
                    }
                    .frame(width: .twelve)
                }
            }
        }
    }
    
    struct SliderView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    ExampleView {
                        Slider(name: "slider")
                    }
                    .frame(width: .twelve)
                }
            }
        }
    }
    
    struct DatePickerView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    ExampleView {
                        DatePicker(name: "datepicker")
                    }
                    .frame(width: .twelve)
                }
            }
        }
    }
    
    struct FieldDialogView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    ExampleView {
                        FileDialog(name: "filedialog")
                    }
                    .frame(width: .twelve)
                }
            }
        }
    }
    
    struct FontFamilyEnumView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    Scroll {
                        HStack(spacing: .small) {
                            for family in Tokens.FontFamily.allCases {
                                ExampleView {
                                    Text {
                                        "Title"
                                    }
                                    .font(family)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    struct TextStyleEnumView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    Scroll {
                        HStack(spacing: .small) {
                            for style in Tokens.TextStyle.allCases {
                                ExampleView {
                                    Text {
                                        "Title"
                                    }
                                    .textStyle(style)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    struct FontStyleEnumView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    Scroll {
                        HStack(spacing: .small) {
                            for style in Tokens.FontStyle.allCases {
                                ExampleView {
                                    Text {
                                        "Title"
                                    }
                                    .fontStyle(style)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    struct FlowDirectionEnumView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    Scroll {
                        HStack(spacing: .small) {
                            for direction in Tokens.FlowDirection.allCases {
                                ExampleView {
                                    List(direction: direction){
                                        for index in 0...2 {
                                            Text {
                                                "Item \(index)"
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    struct ForegroundColorEnumView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    Scroll {
                        HStack(spacing: .small) {
                            for color in Tokens.ForegroundColor.allCases {
                                ExampleView {
                                    Text {
                                        "Text"
                                    }
                                    .foregroundColor(color)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    struct BackgroundColorEnumView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    Scroll {
                        HStack(spacing: .small) {
                            for color in Tokens.BackgroundColor.allCases {
                                ExampleView {
                                    Text {
                                        "Text"
                                    }
                                    .backgroundColor(color)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    struct BorderColorEnumView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    Scroll {
                        HStack(spacing: .small) {
                            for color in Tokens.BorderColor.allCases {
                                ExampleView {
                                    Card {
                                        Text {
                                            "Text"
                                        }
                                    }
                                    .border(color)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    struct FontWeightEnumView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    Scroll {
                        HStack(spacing: .small) {
                            for weight in Tokens.FontWeight.allCases {
                                ExampleView {
                                    Text {
                                        "Text"
                                    }
                                    .fontWeight(weight)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    struct FontSizeEnumView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    Scroll {
                        HStack(spacing: .small) {
                            for size in Tokens.FontSize.allCases {
                                ExampleView {
                                    Text {
                                        "Text"
                                    }
                                    .fontSize(size)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    struct TextCaseEnumView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    Scroll {
                        HStack(spacing: .small) {
                            for size in Tokens.TextCase.allCases {
                                ExampleView {
                                    Text {
                                        "Text"
                                    }
                                    .textCase(size)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    struct TextDecorationEnumView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    Scroll {
                        HStack(spacing: .small) {
                            for decoration in Tokens.TextDecoration.allCases {
                                ExampleView {
                                    Text {
                                        "Text"
                                    }
                                    .textDecoration(decoration)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    struct TextAlignmentEnumView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    Scroll {
                        HStack(spacing: .small) {
                            for alignment in Tokens.TextAlignment.allCases {
                                ExampleView {
                                    Text(alignment: alignment) {
                                        "Text"
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    
    struct BorderShapeEnumView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    Scroll {
                        HStack(spacing: .small) {
                            for shape in Tokens.BorderShape.allCases {
                                ExampleView {
                                    Card {
                                        "Text"
                                    }
                                    .borderShape(shape)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    struct BlurLevelEnumView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    Scroll {
                        HStack(spacing: .small) {
                            for level in Tokens.BlurLevel.allCases {
                                ExampleView {
                                    Image(source: "/assets/bamberg.jpg")
                                        .blur(level)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    struct SaturationLevelEnumView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    Scroll {
                        HStack(spacing: .small) {
                            for level in Tokens.SaturationLevel.allCases {
                                ExampleView {
                                    Image(source: "/assets/bamberg.jpg")
                                        .saturation(level)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    struct ConstrastLevelEnumView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    Scroll {
                        HStack(spacing: .small) {
                            for level in Tokens.ContrastLevel.allCases {
                                ExampleView {
                                    Image(source: "/assets/bamberg.jpg")
                                        .contrast(level)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    struct BrightnessLevelEnumView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    Scroll {
                        HStack(spacing: .small) {
                            for level in Tokens.BrightnessLevel.allCases {
                                ExampleView {
                                    Image(source: "/assets/bamberg.jpg")
                                        .brightness(level)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    struct GrayscaleDepthEnumView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    Scroll {
                        HStack(spacing: .small) {
                            for depth in Tokens.GrayscaleDepth.allCases {
                                ExampleView {
                                    Image(source: "/assets/bamberg.jpg")
                                        .grayscale(depth)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    struct ListSpaceEnumView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    Scroll {
                        HStack(spacing: .small) {
                            for space in Tokens.ListSpace.allCases {
                                ExampleView {
                                    List(direction: .vertical) {
                                        for index in 0...2 {
                                            Text {
                                                "Item \(index)"
                                            }
                                        }
                                    }
                                    .listSpacing(space)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    struct ShadowColorEnumView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    Scroll {
                        HStack(spacing: .small) {
                            for color in Tokens.ShadowColor.allCases {
                                ExampleView {
                                    Text {
                                        "Text"
                                    }
                                    .shadow(.large, color: color)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    struct BorderWidthEnumView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    Scroll {
                        HStack(spacing: .small) {
                            for width in Tokens.BorderWidth.allCases {
                                ExampleView {
                                    Card {
                                        "Text"
                                    }
                                    .border(.black, width: width)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    struct ColorSchemeEnumView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    Scroll {
                        HStack(spacing: .small) {
                            for scheme in Tokens.ColorScheme.allCases {
                                ExampleView {
                                    Card {
                                        "Text"
                                    }
                                    .colorScheme(scheme)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    struct ImageScaleEnumView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    Scroll {
                        HStack(spacing: .small) {
                            for scale in Tokens.ImageScale.allCases {
                                ExampleView {
                                    Image(source: "/assets/bamberg.jpg")
                                        .imageScale(scale)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    struct ObjectFitEnumView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    Scroll {
                        HStack(spacing: .small) {
                            for fit in Tokens.ObjectFit.allCases {
                                ExampleView {
                                    Image(source: "/assets/bamberg.jpg")
                                        .aspectRatio(.equal, fit: fit)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    struct AspectRatioEnumView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    Scroll {
                        HStack(spacing: .small) {
                            for ratio in Tokens.AspectRatio.allCases {
                                ExampleView {
                                    Image(source: "/assets/bamberg.jpg")
                                        .aspectRatio(ratio, fit: .cover)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    struct ClipShapeEnumView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    Scroll {
                        HStack(spacing: .small) {
                            for shape in Tokens.ClipShape.allCases {
                                ExampleView {
                                    Image(source: "/assets/bamberg.jpg")
                                        .clipShape(shape)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    struct ContentSpaceEnumView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    Scroll {
                        HStack(spacing: .small) {
                            for space in Tokens.ContentSpace.allCases {
                                ExampleView {
                                    HStack(spacing: space) {
                                        List(direction: .horizontal){
                                            for index in 0...2 {
                                                Text {
                                                    "Item \(index)"
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    struct GridRatioEnumView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    Scroll {
                        HStack(spacing: .small) {
                            for ratio in Tokens.GridRatio.allCases {
                                ExampleView {
                                    Grid(ratio: ratio) {
                                        for index in 0...8 {
                                            Card {
                                                Text {
                                                    "Item \(index)"
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    struct OpacityValueEnumView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    Scroll {
                        HStack(spacing: .small) {
                            for value in Tokens.OpacityValue.allCases {
                                ExampleView {
                                    Image(source: "/assets/bamberg.jpg")
                                        .opacity(value)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    struct PaddingLengthEnumView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    Scroll {
                        HStack(spacing: .small) {
                            for length in Tokens.PaddingLength.allCases {
                                ExampleView {
                                    Card {
                                        Text {
                                            "Item"
                                        }
                                    }
                                    .padding(length: length)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    struct MarginLengthEnumView: View {
        
        var articles: [ApiArticle]
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    Scroll {
                        HStack(spacing: .small) {
                            for length in Tokens.MarginLength.allCases {
                                ExampleView {
                                    for index in 0...4 {
                                        Card {
                                            Text {
                                                "Item \(index)"
                                            }
                                        }
                                        .margin(length: length)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
