import HTMLKit

struct Step5: View {
    
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
                            OutlineItem(type: .folder, label: "Sources") {
                            }
                            OutlineItem(type: .folder, label: "Tests") {
                            }
                        }
                    }
                }
            } tabbar: {
                EditorTab(name: "Package", isSelected: true)
            }
        }
    }
}
