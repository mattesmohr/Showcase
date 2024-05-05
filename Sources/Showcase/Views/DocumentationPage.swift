import HTMLKit
import HTMLKitComponents

enum DocumentationPage {
    
    struct IndexView: View {
        
        var body: Content {
            DocumentationContainer {
                VStack(spacing: .small) {
                    Text {
                        "Documentation"
                    }
                    .fontSize(.large)
                    .foregroundColor(.accent)
                    HStack(alignment: .top, spacing: .large) {
                        VStack(spacing: .large) {
                            VStack {
                                Text {
                                    "Introduction"
                                }
                                .fontSize(.large)
                                .foregroundColor(.accent)
                                Text {
                                    "Elements"
                                }
                                .bold()
                                Link(destination: "/documentation/elements") {
                                    Text {
                                        "Read more"
                                    }
                                }
                                Text {
                                    "Localization"
                                }
                                .bold()
                                Link(destination: "/documentation/localization") {
                                    Text {
                                        "Read more"
                                    }
                                }
                                Text {
                                    "Components"
                                }
                                .bold()
                                Link(destination: "/documentation/components") {
                                    Text {
                                        "Read more"
                                    }
                                }
                                Text {
                                    "Environment"
                                }
                                .bold()
                                Link(destination: "/documentation/environment") {
                                    Text {
                                        "Read more"
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    struct ArticleView: View {
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                }
            }
        }
    }
    
    
    struct ElementsArticleView: View {
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                }
            }
        }
    }
    
    struct LocalizationArticleView: View {
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                }
            }
        }
    }
    
    struct ComponentsArticleView: View {
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                }
            }
        }
    }
    
    struct SecurityArticleView: View {
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                }
            }
        }
    }
    
    struct EnvironmentArticleView: View {
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                }
            }
        }
    }
    
    struct InitializerView: View {
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                }
            }
        }
    }
    
    struct MethodView: View {
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                }
            }
        }
    }
    
    struct StructureView: View {
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                }
            }
        }
    }
    
    struct EnumerationView: View {
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                }
            }
        }
    }
    
    struct AlertView: View {
        
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
    
    struct BarMarkView: View {
        
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
    
    struct SectorMarkView: View {
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    ExampleView {
                        Chart {
                            SectorMark(value: 100, label: "Apfel")
                                .foregroundColor(.yellow)
                            SectorMark(value: 30, label: "Birne")
                                .foregroundColor(.blue)
                            SectorMark(value: 280, label: "Weichkäse")
                                .foregroundColor(.orange)
                            SectorMark(value: 60, label: "Spezi")
                                .foregroundColor(.brown)
                        }
                    }
                    .frame(width: .twelve)
                }
            }
        }
    }
    
    struct DropdownView: View {
        
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
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    ExampleView {
                        Grid(ratio: .third, spacing: .large) {
                            for _ in 1...8 {
                                Card {
                                    Text {
                                        "Text"
                                    }
                                }
                            }
                        }
                        .frame(width: .eight, height: .eight)
                    }
                    .frame(width: .twelve)
                }
            }
        }
    }
    
    struct SymbolView: View {
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    ExampleView {
                        Symbol(system: .house)
                            .fontSize(.extralarge)
                    }
                    .frame(width: .twelve)
                }
            }
        }
    }
    
    struct ScrollView: View {
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    ExampleView {
                        VStack {
                            Scroll {
                                HStack(spacing: .large) {
                                    for _ in 1...8 {
                                        Card {
                                            Text {
                                                "Text"
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        .frame(width: .five)
                    }
                    .frame(width: .twelve)
                }
            }
        }
    }
    
    struct SnippetView: View {
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    ExampleView {
                        Snippet(highlight: .html) {
                            """
                            ZStack {
                            }
                            .frame(width: xs(.four), md(.eight), lg(.twelve))
                            """
                        }
                    }
                    .frame(width: .twelve)
                }
            }
        }
    }
    
    struct TextView: View {
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    ExampleView {
                        Text {
                            "Hello World"
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
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    ExampleView {
                        Image(source: "/assets/bamberg.jpeg")
                            .frame(width: .minimum, height: .twelve)
                    }
                    .frame(width: .twelve)
                }
            }
        }
    }
    
    struct ProgressView: View {
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    ExampleView {
                        Progress(maximum: 100, value: 30) {
                        }
                    }
                    .frame(width: .twelve)
                }
            }
        }
    }
    
    struct CarouselView: View {
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    ExampleView {
                        Carousel {
                            Slide {
                                Text {
                                    "Slide 1"
                                }
                            }
                            .tag("slide1")
                            Slide {
                                Text {
                                    "Slide 2"
                                }
                            }
                            .tag("slide2")
                        }
                        .frame(width: .six, height: .twelve)
                    }
                    .frame(width: .twelve)
                }
            }
        }
    }
    
    struct TabView: View {
        
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
    
    struct GroupingView: View {
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    ExampleView {
                        Grouping {
                            for index in 0...2 {
                                Button(role: .submit) {
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
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    ExampleView {
                        ZStack {
                            VStack {
                            }
                            .backgroundColor(.yellow)
                            .frame(width: .eight, height: .eight)
                            VStack {
                            }
                            .backgroundColor(.blue)
                            .frame(width: .four, height: .four)
                        }
                        .frame(width: .twelve, height: .twelve)
                    }
                    .frame(width: .twelve)
                }
            }
        }
    }
    
    struct TextFieldView: View {
        
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
    
    struct SearchFieldView: View {
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    ExampleView {
                        SearchField(name: "searchfield", value: "value")
                    }
                    .frame(width: .twelve)
                }
            }
        }
    }
    
    struct TextEditorView: View {
        
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
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    ExampleView {
                        CheckField(value: "value") {
                            "Label"
                        }
                    }
                    .frame(width: .twelve)
                }
            }
        }
    }
    
    struct RadioSelectView: View {
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    ExampleView {
                        RadioSelect(value: "value") {
                            "Label"
                        }
                    }
                    .frame(width: .twelve)
                }
            }
        }
    }
    
    struct SelectFieldView: View {
        
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
    
    struct LinkView: View {
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    ExampleView {
                        Link(destination: "https://vapor.codes") {
                            Text {
                                "Open Link"
                            }
                        }
                    }
                    .frame(width: .twelve)
                }
            }
        }
    }
    
    struct DatePickerView: View {
        
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
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    Scroll {
                        HStack(spacing: .small) {
                            for color in Tokens.BackgroundColor.allCases {
                                ExampleView {
                                    VStack {
                                    }
                                    .backgroundColor(color)
                                    .frame(width: .five, height: .five)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    struct BorderColorEnumView: View {
        
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
                                    .frame(width: .twelve)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    
    struct BorderShapeEnumView: View {
        
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
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    Scroll {
                        HStack(spacing: .small) {
                            for level in Tokens.BlurLevel.allCases {
                                ExampleView {
                                    Image(source: "/assets/bamberg.jpeg")
                                        .frame(width: .minimum, height: .twelve)
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
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    Scroll {
                        HStack(spacing: .small) {
                            for level in Tokens.SaturationLevel.allCases {
                                ExampleView {
                                    Image(source: "/assets/bamberg.jpeg")
                                        .frame(width: .minimum, height: .twelve)
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
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    Scroll {
                        HStack(spacing: .small) {
                            for level in Tokens.ContrastLevel.allCases {
                                ExampleView {
                                    Image(source: "/assets/bamberg.jpeg")
                                        .frame(width: .minimum, height: .twelve)
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
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    Scroll {
                        HStack(spacing: .small) {
                            for level in Tokens.BrightnessLevel.allCases {
                                ExampleView {
                                    Image(source: "/assets/bamberg.jpeg")
                                        .frame(width: .minimum, height: .twelve)
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
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    Scroll {
                        HStack(spacing: .small) {
                            for depth in Tokens.GrayscaleDepth.allCases {
                                ExampleView {
                                    Image(source: "/assets/bamberg.jpeg")
                                        .frame(width: .minimum, height: .twelve)
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
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    Scroll {
                        HStack(spacing: .small) {
                            for scale in Tokens.ImageScale.allCases {
                                ExampleView {
                                    Image(source: "/assets/bamberg.jpeg")
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
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    Scroll {
                        HStack(spacing: .small) {
                            for fit in Tokens.ObjectFit.allCases {
                                ExampleView {
                                    Image(source: "/assets/bamberg.jpeg")
                                        .frame(width: .minimum, height: .twelve)
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
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    Scroll {
                        HStack(spacing: .small) {
                            for ratio in Tokens.AspectRatio.allCases {
                                ExampleView {
                                    Image(source: "/assets/bamberg.jpeg")
                                        .frame(width: .minimum, height: .twelve)
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
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    Scroll {
                        HStack(spacing: .small) {
                            for shape in Tokens.ClipShape.allCases {
                                ExampleView {
                                    Image(source: "/assets/bamberg.jpeg")
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
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    Scroll {
                        HStack(spacing: .small) {
                            for value in Tokens.OpacityValue.allCases {
                                ExampleView {
                                    Image(source: "/assets/bamberg.jpeg")
                                        .frame(width: .minimum, height: .twelve)
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
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    Scroll {
                        HStack(spacing: .small) {
                            for length in Tokens.PaddingLength.allCases {
                                ExampleView {
                                    VStack {
                                        Card {
                                            Text {
                                                "Item"
                                            }
                                        }
                                    }
                                    .padding(length: length)
                                    .frame(width: .minimum, height: .minimum)
                                    .border(.red)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    struct MarginLengthEnumView: View {
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    Scroll {
                        HStack(spacing: .small) {
                            for length in Tokens.MarginLength.allCases {
                                ExampleView {
                                    HStack {
                                        for index in 0...1 {
                                            Card {
                                                Text {
                                                    "Item \(index)"
                                                }
                                            }
                                            .margin(insets: .horizontal, length: length)
                                        }
                                    }
                                    .frame(width: .minimum, height: .minimum)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    struct InnerRadiusEnumView: View {
        
        var article: ApiArticle
        
        var body: Content {
            DocumentationContainer {
                ArticleContainer(article: article) {
                    Scroll {
                        HStack(spacing: .small) {
                            for radius in Tokens.InnerRadius.allCases {
                                ExampleView {
                                    Chart {
                                        SectorMark(value: 100, label: "Apfel")
                                            .foregroundColor(.yellow)
                                        SectorMark(value: 30, label: "Birne")
                                            .foregroundColor(.blue)
                                        SectorMark(value: 280, label: "Weichkäse")
                                            .foregroundColor(.orange)
                                        SectorMark(value: 60, label: "Spezi")
                                            .foregroundColor(.brown)
                                    }
                                    .innerRadius(radius)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
