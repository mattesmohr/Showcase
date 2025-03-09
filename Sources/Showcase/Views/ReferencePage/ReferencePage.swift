import HTMLKit
import HTMLKitComponents

enum ReferencePage {
    
    struct IndexView: View {
        
        var body: Content {
            ReferenceContainer {
                VStack {
                    Text {
                        "Introduction"
                    }
                    .fontSize(.large)
                    Text {
                        MarkdownString {
                            "The introduction section of the HTMLKit documentation should provide a comprehensive overview of the framework, highlighting its purpose, key features, and advantages. It should explain how HTMLKit allows developers to write HTML in Swift and how it integrates seamlessly with backend frameworks like Vapor and Hummingbird to create a unified full-stack development experience."
                        }
                    }
                    .fontSize(.medium)
                    Grid(ratio: .quarter, spacing: .large) {
                        Card {
                            VStack(spacing: .small) {
                                Text {
                                    "Elements"
                                }
                                .fontSize(.large)
                                Text {
                                    "Explore live examples and see the capabilities of HTMLKit in action."
                                }
                                Link(destination: "/reference/elements") {
                                    Text {
                                        "Read more"
                                    }
                                }
                                .foregroundColor(.accent)
                            }
                            
                        } header: {
                            Image(source: "/assets/img/examples.png")
                                .aspectRatio(.unequal, fit: .contain)
                        }
                        .cardStyle(PosterStyle())
                        .padding(length: .medium)
                        Card {
                            VStack(spacing: .small) {
                                Text {
                                    "Localization"
                                }
                                .fontSize(.large)
                                Text {
                                    "Explore live examples and see the capabilities of HTMLKit in action."
                                }
                                Link(destination: "/reference/localization") {
                                    Text {
                                        "Read more"
                                    }
                                }
                                .foregroundColor(.accent)
                            }
                            
                        } header: {
                            Image(source: "/assets/img/examples.png")
                                .aspectRatio(.unequal, fit: .contain)
                        }
                        .cardStyle(PosterStyle())
                        .padding(length: .medium)
                        Card {
                            VStack(spacing: .small) {
                                Text {
                                    "Components"
                                }
                                .fontSize(.large)
                                Text {
                                    "Explore live examples and see the capabilities of HTMLKit in action."
                                }
                                Link(destination: "/reference/components") {
                                    Text {
                                        "Read more"
                                    }
                                }
                                .foregroundColor(.accent)
                            }
                            
                        } header: {
                            Image(source: "/assets/img/examples.png")
                                .aspectRatio(.unequal, fit: .contain)
                        }
                        .cardStyle(PosterStyle())
                        .padding(length: .medium)
                        Card {
                            VStack(spacing: .small) {
                                Text {
                                    "Environment"
                                }
                                .fontSize(.large)
                                Text {
                                    "Explore live examples and see the capabilities of HTMLKit in action."
                                }
                                Link(destination: "/reference/environment") {
                                    Text {
                                        "Read more"
                                    }
                                }
                                .foregroundColor(.accent)
                            }
                            
                        } header: {
                            Image(source: "/assets/img/examples.png")
                                .aspectRatio(.unequal, fit: .contain)
                        }
                        .cardStyle(PosterStyle())
                        .padding(length: .medium)
                    }
                }
            }
        }
    }
    
    struct ArticleView: View {
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
                }
            }
        }
    }
    
    
    struct ElementsArticleView: View {
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
                }
            }
        }
    }
    
    struct LocalizationArticleView: View {
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
                }
            }
        }
    }
    
    struct ComponentsArticleView: View {
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
                }
            }
        }
    }
    
    struct SecurityArticleView: View {
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
                }
            }
        }
    }
    
    struct EnvironmentArticleView: View {
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
                }
            }
        }
    }
    
    struct InitializerView: View {
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
                }
            }
        }
    }
    
    struct MethodView: View {
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
                }
            }
        }
    }
    
    struct StructureView: View {
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
                }
            }
        }
    }
    
    struct EnumerationView: View {
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
                }
            }
        }
    }
    
    struct AlertView: View {
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
    
    struct VideoView: View {
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
                    ExampleView {
                        Video(source: "")
                            .frame(width: .minimum, height: .twelve)
                    }
                    .frame(width: .twelve)
                }
            }
        }
    }
    
    struct ChartView: View {
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
                    ExampleView {
                        Image(source: "/assets/bamberg.jpeg")
                            .frame(width: .minimum, height: .twelve)
                    }
                    .frame(width: .twelve)
                }
            }
        }
    }
    
    struct DisclosureView: View {
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
                    ExampleView {
                        Disclosure("test") {
                            HStack {
                                Text {
                                    "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet."
                                }
                            }
                            .padding()
                        }
                    }
                    .frame(width: .twelve)
                }
            }
        }
    }
    
    struct ProgressView: View {
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
                    ExampleView {
                        Progress(value: 80, total: 100) {
                        }
                        .progressStyle(.linear)
                    }
                    .frame(width: .twelve)
                }
            }
        }
    }
    
    struct CarouselView: View {
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
                    ExampleView {
                        Tabs(direction: .horizontal) {
                            Pane {
                                Text {
                                    "Pane1"
                                }
                            } label: {
                                HTMLKitComponents.Symbol(system: .bell)
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
                                HTMLKitComponents.Symbol(system: .bell)
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

        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
                    ExampleView {
                        TextField(name: "textfield", value: "value")
                    }
                    .frame(width: .twelve)
                }
            }
        }
    }
    
    struct SearchFieldView: View {
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
                    ExampleView {
                        SearchField(name: "searchfield", value: "value")
                    }
                    .frame(width: .twelve)
                }
            }
        }
    }
    
    struct TextEditorView: View {
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
                    ExampleView {
                        SecureField(name: "securefield", value: "value")
                    }
                    .frame(width: .twelve)
                }
            }
        }
    }
    
    struct CheckFieldView: View {
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
                    ExampleView {
                        Slider(name: "slider")
                    }
                    .frame(width: .twelve)
                }
            }
        }
    }
    
    struct LinkView: View {
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
                    ExampleView {
                        DatePicker(name: "datepicker")
                    }
                    .frame(width: .twelve)
                }
            }
        }
    }
    
    struct FieldDialogView: View {
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
                    ExampleView {
                        FileDialog(name: "filedialog")
                    }
                    .frame(width: .twelve)
                }
            }
        }
    }
    
    struct FontFamilyEnumView: View {
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
    
    struct ProgressStyleEnumView: View {
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
                    Scroll {
                        HStack(spacing: .small) {
                            for style in Tokens.ProgressStyle.allCases {
                                ExampleView {
                                    Progress(value: 50, total: 100) {
                                    }
                                    .progressStyle(style)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    struct TintColorEnumView: View {
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
                    Scroll {
                        HStack(spacing: .small) {
                            for color in Tokens.TintColor.allCases {
                                ExampleView {
                                    Progress(value: 30, total: 100) {
                                    }
                                    .progressStyle(.linear)
                                    .tint(color)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    struct ObjectFitEnumView: View {
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
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
    
    struct SymbolNameEnumView: View {
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
                    Scroll {
                        HStack(spacing: .small) {
                            for name in Symbol.SymbolNames.allCases {
                                ExampleView {
                                    Symbol(system: name)
                                        .fontSize(.large)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    struct ButtonStyleEnumView: View {
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
                    Scroll {
                        HStack(spacing: .small) {
                            for style in Tokens.ButtonStyle.allCases {
                                ExampleView {
                                    Button(role: .reset) {
                                        "Reset"
                                    }
                                    .buttonStyle(style)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    struct NavigationStyleEnumView: View {
        
        let reference: Reference
        
        var body: Content {
            ReferenceContainer {
                ArticleContainer(article: reference) {
                    Scroll {
                        HStack(spacing: .small) {
                            ExampleView {
                                Navigation {
                                    List(direction: .vertical) {
                                        Link(destination: "#") {
                                            Text {
                                                "Item 1"
                                            }
                                        }
                                        Link(destination: "#") {
                                            Text {
                                                "Item 2"
                                            }
                                        }
                                    }
                                }
                                .navigationStyle(.menu)
                            }
                            ExampleView {
                                Navigation {
                                    List(direction: .horizontal) {
                                        Link(destination: "#") {
                                            Text {
                                                "Item 1"
                                            }
                                        }
                                        Link(destination: "#") {
                                            Text {
                                                "Item 2"
                                            }
                                        }
                                    }
                                }
                                .navigationStyle(.pagination)
                            }
                        }
                    }
                }
            }
        }
    }
}
