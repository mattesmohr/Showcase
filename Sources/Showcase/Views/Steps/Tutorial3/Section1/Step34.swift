import HTMLKit

struct Step34: View {
    
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
                MenuBarItem(isSelected: true) {
                    Paragraph {
                        "File"
                    }
                    ContextMenu {
                        ContextMenuItem(isSelected: true) {
                            Paragraph {
                                "New"
                            }
                            Vector {
                                Path {
                                }
                                .draw("M310.6 233.4c12.5 12.5 12.5 32.8 0 45.3l-192 192c-12.5 12.5-32.8 12.5-45.3 0s-12.5-32.8 0-45.3L242.7 256 73.4 86.6c-12.5-12.5-12.5-32.8 0-45.3s32.8-12.5 45.3 0l192 192z")
                            }
                            .namespace("http://www.w3.org/2000/svg")
                            .viewBox("0 0 512 512")
                            ContextMenu {
                                ContextMenuItem(isSelected: true) {
                                    Paragraph {
                                        "Folder"
                                    }
                                }
                            }
                        }
                        ContextMenuItem {
                            Paragraph {
                                "Open"
                            }
                        }
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
                                            OutlineItem(type: .swift, label: "ExampleView", isSelected: true) {
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
                EditorTab(name: "ExampleView", isSelected: true)
                EditorTab(name: "ExampleController")
                EditorTab(name: "message")
            }
        }
    }
}
