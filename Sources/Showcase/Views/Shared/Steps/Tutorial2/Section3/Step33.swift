import HTMLKit

struct Step33: View {
    
    var body: Content {
        MacDock {
            MenuBar {
                MenuBarItem {
                    Paragraph {
                        "Safari"
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
                MenuBarItem(isSelected: true) {
                    Paragraph {
                        "View"
                    }
                    ContextMenu {
                        ContextMenuItem(isSelected: true) {
                            Paragraph {
                                "Reload Page"
                            }
                        }
                    }
                }
                MenuBarItem {
                    Paragraph {
                        "History"
                    }
                }
                MenuBarItem {
                    Paragraph {
                        "Bookmarks"
                    }
                }
                MenuBarItem {
                    Paragraph {
                        "Develop"
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
            Safari(url: "http://localhost:8080/example/index") {
                Paragraph {
                    "Hello World!"
                }
            }
        }
    }
}
