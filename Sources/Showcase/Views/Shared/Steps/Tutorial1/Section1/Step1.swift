import HTMLKit

struct Step1: View {
    
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
                                ContextMenuItem {
                                    Paragraph {
                                        "Editor"
                                    }
                                }
                                ContextMenuItem {
                                    Paragraph {
                                        "Editor Below"
                                    }
                                }
                                ContextMenuItem {
                                    Paragraph {
                                        "Window Tab"
                                    }
                                }
                                ContextMenuItem {
                                    Paragraph {
                                        "Window"
                                    }
                                }
                                ContextMenuItem(isSelected: true) {
                                    Paragraph {
                                        "File"
                                    }
                                }
                                ContextMenuItem {
                                    Paragraph {
                                        "Target"
                                    }
                                }
                                ContextMenuItem {
                                    Paragraph {
                                        "Playground"
                                    }
                                }
                                ContextMenuItem {
                                    Paragraph {
                                        "Project"
                                    }
                                }
                                ContextMenuItem {
                                    Paragraph {
                                        "Package"
                                    }
                                }
                                ContextMenuItem {
                                    Paragraph {
                                        "Workspace"
                                    }
                                }
                                ContextMenuItem {
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
        }
    }
}
