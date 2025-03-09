import HTMLKit

struct Step36: View {
    
    let lines: [String]
    
    let highlight: [Int]
    
    init(lines: [String], highlight: [Int]) {
        
        self.lines = lines
        self.highlight = highlight
    }
    
    var body: Content {
        MacDock {
            MenuBar {
                MenuBarItem {
                    Paragraph {
                        "Xcode"
                    }
                }
                MenuBarItem {
                    Paragraph {
                        "File"
                    }
                }
                MenuBarItem {
                    Paragraph {
                        "Edit"
                    }
                }
                MenuBarItem {
                    Paragraph {
                        "View"
                    }
                }
                MenuBarItem {
                    Paragraph {
                        "Find"
                    }
                }
                MenuBarItem {
                    Paragraph {
                        "Navigate"
                    }
                }
                MenuBarItem {
                    Paragraph {
                        "Editor"
                    }
                }
                MenuBarItem {
                    Paragraph {
                        "Product"
                    }
                }
                MenuBarItem {
                    Paragraph {
                        "Debug"
                    }
                }
                MenuBarItem {
                    Paragraph {
                        "Integrate"
                    }
                }
                MenuBarItem {
                    Paragraph {
                        "Window"
                    }
                }
                MenuBarItem {
                    Paragraph {
                        "Help"
                    }
                }
            }
            Xcode {
                EditorCode {
                    for (index, line) in lines.enumerated() {
                        if highlight.contains(where: { $0 == (index + 1) }) {
                            Paragraph { line }
                                .class("highlight")
                        } else {
                            Paragraph { line }
                        }
                    }
                }
            } outline: {
                OutlineList {
                    OutlineItem(type: .package, label: "Example", isExpanded: true) {
                        OutlineList {
                            OutlineItem(type: .swift, label: "Package") {
                            }
                            OutlineItem(type: .folder, label: "Public", isExpanded: true) {
                                OutlineList {
                                    OutlineItem(type: .folder, label: "htmlkit", isExpanded: true) {
                                        OutlineList {
                                            OutlineItem(type: .css, label: "all") {
                                            }
                                            OutlineItem(type: .js, label: "all") {
                                            }
                                            OutlineItem(type: .js, label: "query") {
                                            }
                                        }
                                    }
                                }
                            }
                            OutlineItem(type: .folder, label: "Sources", isExpanded: true) {
                                OutlineList {
                                    OutlineItem(type: .folder, label: "Example", isExpanded: true) {
                                        OutlineList {
                                            OutlineItem(type: .swift, label: "entrypoint") {
                                            }
                                            OutlineItem(type: .swift, label: "routes") {
                                            }
                                            OutlineItem(type: .swift, label: "configure") {
                                            }
                                            OutlineItem(type: .swift, label: "ExampleView") {
                                            }
                                            OutlineItem(type: .swift, label: "ExampleController") {
                                            }
                                            OutlineItem(type: .folder, label: "Localization", isExpanded: true) {
                                                OutlineList {
                                                    OutlineItem(type: .strings, label: "message") {
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            OutlineItem(type: .folder, label: "Tests") {
                            }
                        }
                    }
                }
            } tabbar: {
                EditorTab(name: "Package")
                EditorTab(name: "entrypoint")
                EditorTab(name: "routes")
                EditorTab(name: "configure")
                EditorTab(name: "ExampleView")
                EditorTab(name: "ExampleController")
                EditorTab(name: "message")
            }
        }
    }
}
