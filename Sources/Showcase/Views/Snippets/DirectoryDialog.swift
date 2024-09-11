import HTMLKit

struct DirectoryDialog: View {
    
    var body: Content {
        Division {
            Division {
                DialogField(label: "Save as", value: "Example", isFocused: true)
                DialogField(label: "Tag", value: "")
            }
            .class("directory-value")
            Division {
                ControlButton {
                    Vector {
                        Path {
                        }
                        .draw("M9.4 233.4c-12.5 12.5-12.5 32.8 0 45.3l192 192c12.5 12.5 32.8 12.5 45.3 0s12.5-32.8 0-45.3L77.3 256 246.6 86.6c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0l-192 192z")
                    }
                    .namespace("http://www.w3.org/2000/svg")
                    .viewBox("0 0 512 512")
                }
                ControlButton {
                    Vector {
                        Path {
                        }
                        .draw("M310.6 233.4c12.5 12.5 12.5 32.8 0 45.3l-192 192c-12.5 12.5-32.8 12.5-45.3 0s-12.5-32.8 0-45.3L242.7 256 73.4 86.6c-12.5-12.5-12.5-32.8 0-45.3s32.8-12.5 45.3 0l192 192z")
                    }
                    .namespace("http://www.w3.org/2000/svg")
                    .viewBox("0 0 512 512")
                }
                ControlButton {
                    Vector {
                        Path {
                        }
                        .draw("M0 96C0 60.7 28.7 32 64 32l384 0c35.3 0 64 28.7 64 64l0 320c0 35.3-28.7 64-64 64L64 480c-35.3 0-64-28.7-64-64L0 96zm64 64l0 256 160 0 0-256L64 160zm384 0l-160 0 0 256 160 0 0-256z")
                    }
                    .namespace("http://www.w3.org/2000/svg")
                    .viewBox("0 0 512 512")
                }
                ControlButton {
                    Vector {
                        Path {
                        }
                        .draw("M0 416c0 17.7 14.3 32 32 32l54.7 0c12.3 28.3 40.5 48 73.3 48s61-19.7 73.3-48L480 448c17.7 0 32-14.3 32-32s-14.3-32-32-32l-246.7 0c-12.3-28.3-40.5-48-73.3-48s-61 19.7-73.3 48L32 384c-17.7 0-32 14.3-32 32zm128 0a32 32 0 1 1 64 0 32 32 0 1 1 -64 0zM320 256a32 32 0 1 1 64 0 32 32 0 1 1 -64 0zm32-80c-32.8 0-61 19.7-73.3 48L32 224c-17.7 0-32 14.3-32 32s14.3 32 32 32l246.7 0c12.3 28.3 40.5 48 73.3 48s61-19.7 73.3-48l54.7 0c17.7 0 32-14.3 32-32s-14.3-32-32-32l-54.7 0c-12.3-28.3-40.5-48-73.3-48zM192 128a32 32 0 1 1 0-64 32 32 0 1 1 0 64zm73.3-64C253 35.7 224.8 16 192 16s-61 19.7-73.3 48L32 64C14.3 64 0 78.3 0 96s14.3 32 32 32l86.7 0c12.3 28.3 40.5 48 73.3 48s61-19.7 73.3-48L480 128c17.7 0 32-14.3 32-32s-14.3-32-32-32L265.3 64z")
                    }
                    .namespace("http://www.w3.org/2000/svg")
                    .viewBox("0 0 512 512")
                }
                DialogField(label: "Tag", value: "")
                ControlButton {
                    Vector {
                        Path {
                        }
                        .draw("M233.4 105.4c12.5-12.5 32.8-12.5 45.3 0l192 192c12.5 12.5 12.5 32.8 0 45.3s-32.8 12.5-45.3 0L256 173.3 86.6 342.6c-12.5 12.5-32.8 12.5-45.3 0s-12.5-32.8 0-45.3l192-192z")
                    }
                    .namespace("http://www.w3.org/2000/svg")
                    .viewBox("0 0 512 512")
                }
                DialogField(label: "Tag", value: "")
            }
            .class("directory-control")
            Division {
            }
            .class("directory-chambers")
            Division {
                DialogField(label: "Save as", value: "Example")
                DialogField(label: "Tag", value: "")
            }
            .class("source-control")
        }
        .class("directory-dialog")
    }
}
