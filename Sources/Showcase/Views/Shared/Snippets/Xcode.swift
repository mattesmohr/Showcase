import HTMLKit

struct Xcode: View {
    
    var tabbar: [Content]
    
    var outline: [Content]
    
    var content: [Content]
    
    init(@ContentBuilder<Content> content: () -> [Content], @ContentBuilder<Content> outline: () -> [Content], @ContentBuilder<Content> tabbar: () -> [Content]) {
        self.content = content()
        self.outline = outline()
        self.tabbar = tabbar()
    }
    
    var body: Content {
        Division {
            Division {
                Division {
                    Division {
                        Division {
                        }
                        .class("action")
                        Division {
                        }
                        .class("action")
                        Division {
                        }
                        .class("action")
                    }
                    .class("topbar-left")
                    Division {
                    }
                    .class("topbar-middle")
                    Division {
                        Vector {
                            Path {
                            }
                            .draw("M5 3.5h6A1.5 1.5 0 0 1 12.5 5v6a1.5 1.5 0 0 1-1.5 1.5H5A1.5 1.5 0 0 1 3.5 11V5A1.5 1.5 0 0 1 5 3.5")
                        }
                        .namespace("http://www.w3.org/2000/svg")
                        .viewBox("0 0 16 16")
                        .width(25)
                        .height(25)
                        Vector {
                            Path {
                            }
                            .draw("m11.596 8.697-6.363 3.692c-.54.313-1.233-.066-1.233-.697V4.308c0-.63.692-1.01 1.233-.696l6.363 3.692a.802.802 0 0 1 0 1.393")
                        }
                        .namespace("http://www.w3.org/2000/svg")
                        .viewBox("0 0 16 16")
                        .width(25)
                        .height(50)
                    }
                    .class("topbar-right")
                }
                .class("sidebar-topbar")
                Division {
                    outline
                }
                .class("sidebar-outline")
            }
            .class("xcode-sidebar")
            Division {
                Division {
                }
                .class("detail-topbar")
                Division {
                    Division {
                        tabbar
                    }
                    .class("editor-tabbar")
                    Division {
                        content
                    }
                    .class("editor-content")
                }
                .class("detail-editor")
                Division {
                }
                .class("detail-lowbar")
            }
            .class("xcode-detail")
        }
        .class("xcode-window")
    }
}
