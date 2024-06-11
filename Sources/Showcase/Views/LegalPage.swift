import HTMLKit
import HTMLKitComponents

enum LegalPage {
    
    struct IndexView: View {

        var body: Content {
            PageContainer {
                Header {
                    Text {
                        "Legal notice"
                    }
                    .fontSize(.large)
                }
                Section {
                    VStack(spacing: .large) {
                        Text {
                            "This website represents a project of the open source community and has no commercial use!"
                        }
                        .fontSize(.medium)
                        VStack {
                            Text {
                                "Responsible for the content"
                            }
                            .bold()
                            .fontSize(.medium)
                            Text {
                                "Matthias Mohr"
                            }
                            .fontSize(.medium)
                            Text {
                                "Hellerstr. 7"
                            }
                            .fontSize(.medium)
                            Text {
                                "96047 Bamberg"
                            }
                            .fontSize(.medium)
                            Text {
                                "Germany"
                            }
                            .fontSize(.medium)
                            Text {
                                "mail@mattesmohr.de"
                            }
                            .fontSize(.medium)
                        }
                    }
                }
            }
        }
    }
}
