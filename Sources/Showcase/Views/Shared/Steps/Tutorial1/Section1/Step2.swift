import HTMLKit

struct Step2: View {
    
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
                    PackageDialog(title: "Choose a template for your new package") {
                        DialogFilter {
                            Paragraph {
                                "macOS"
                            }
                        }
                        PackageCategory(title: "Library") {
                            PackageItem(title: "Library", isSelected: true)
                        }
                        PackageCategory(title: "Other") {
                            PackageItem(title: "Empty")
                            PackageItem(title: "Build Tool Plug-in")
                            PackageItem(title: "Command Tool Plug-in")
                            PackageItem(title: "Swift Macro")
                        }
                    }
                } sidebar: {
                } bottom: {
                    ControlButton {
                        "Cancel"
                    }
                    ControlButton {
                        "Previous"
                    }
                    ControlButton(isPrimary: true) {
                        "Next"
                    }
                }
            } outline: {
            } tabbar: {
            }
        }
    }
}
