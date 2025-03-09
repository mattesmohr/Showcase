import HTMLKit

struct Step3: View {
    
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
                DialogWindow {
                    DirectoryDialog()
                } sidebar: {
                    OutlineList(label: "Favorites") {
                        OutlineItem(type: .folder, label: "Application") {
                        }
                        OutlineItem(type: .folder, label: "Desktop") {
                        }
                        OutlineItem(type: .folder, label: "Documents") {
                        }
                        OutlineItem(type: .folder, label: "Developer") {
                        }
                        OutlineItem(type: .folder, label: "Documents") {
                        }
                    }
                } bottom: {
                    ControlButton {
                        "New Folder"
                    }
                    ControlButton {
                        "Cancel"
                    }
                    ControlButton(isPrimary: true) {
                        "Create"
                    }
                }
            } outline: {
            } tabbar: {
            }
        }
    }
}
