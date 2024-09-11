import HTMLKit
import HTMLKitComponents

struct ConsoleView: View {
    
    let tutorial: Int
    
    let section: Int
    
    let index: Int
    
    let lines: [String]
    
    let highlight: [Int]
    
    var classes: [String]

    init(step: TutorialStep, section: Int, tutorial: Int) {
        
        self.index = step.index
        self.section = section
        self.tutorial = tutorial
        
        if let code = step.code {
            self.lines = code.code.components(separatedBy: "\n")
            self.highlight = code.highlight
            
        } else {
            self.lines = []
            self.highlight = []
        }
        
        self.classes = ["console"]
    }
    
    var body: Content {
        Division {
            switch tutorial {
            case 0:
                switch section {
                case 0:
                    switch index {
                    case 0:
                        Step1()
                    case 1:
                        Step2()
                    case 2:
                        Step3()
                    default:
                        []
                    }
                case 1:
                    switch index {
                    case 0:
                        Step4(lines: lines, highlight: highlight)
                    case 1:
                        Step5(lines: lines, highlight: highlight)
                    case 2:
                        Step6(lines: lines, highlight: highlight)
                    default:
                        []
                    }
                case 2:
                    switch index {
                    case 0:
                        Step7(lines: lines, highlight: highlight)
                    case 1:
                        Step8(lines: lines, highlight: highlight)
                    case 2:
                        Step9(lines: lines, highlight: highlight)
                    case 3:
                        Step10(lines: lines, highlight: highlight)
                    case 4:
                        Step11(lines: lines, highlight: highlight)
                    case 5:
                        Step12(lines: lines, highlight: highlight)
                    default:
                        []
                    }
                case 3:
                    switch index {
                    case 0:
                        Step13(lines: lines, highlight: highlight)
                    case 1:
                        Step14(lines: lines, highlight: highlight)
                    case 2:
                        Step15(lines: lines, highlight: highlight)
                    case 3:
                        Step16(lines: lines, highlight: highlight)
                    default:
                        []
                    }
                case 4:
                    switch index {
                    case 0:
                        Step17(lines: lines, highlight: highlight)
                    case 1:
                        Step18(lines: lines, highlight: highlight)
                    case 2:
                        Step19(lines: lines, highlight: highlight)
                    case 3:
                        Step20(lines: lines, highlight: highlight)
                    case 4:
                        Step21(lines: lines, highlight: highlight)
                    default:
                        []
                    }
                case 5:
                    switch index {
                    case 0:
                        Step22(lines: lines, highlight: highlight)
                    case 1:
                        Step23(lines: lines, highlight: highlight)
                    case 2:
                        Step24()
                        
                    default:
                        []
                    }
                default:
                    []
                }
            case 1:
                switch section {
                case 0:
                    switch index {
                    case 0:
                        Step25(lines: lines, highlight: highlight)
                    case 1:
                        Step26(lines: lines, highlight: highlight)
                    case 2:
                        Step27(lines: lines, highlight: highlight)
                    default:
                        []
                    }
                case 1:
                    switch index {
                    case 0:
                        Step28(lines: lines, highlight: highlight)
                    case 1:
                        Step29(lines: lines, highlight: highlight)
                    case 2:
                        Step30(lines: lines, highlight: highlight)
                    default:
                        []
                    }
                case 2:
                    switch index {
                    case 0:
                        Step31(lines: lines, highlight: highlight)
                    case 1:
                        Step32(lines: lines, highlight: highlight)
                    case 2:
                        Step33()
                    default:
                        []
                    }
                default:
                    []
                }
            case 2:
                switch section {
                case 0:
                    switch index {
                    case 0:
                        Step34(lines: lines, highlight: highlight)
                    case 1:
                        Step35(lines: lines, highlight: highlight)
                    case 2:
                        Step36(lines: lines, highlight: highlight)
                    case 3:
                        Step37(lines: lines, highlight: highlight)
                    default:
                        []
                    }
                case 1:
                    switch index {
                    case 0:
                        Step38(lines: lines, highlight: highlight)
                    case 1:
                        Step38(lines: lines, highlight: highlight)
                    case 2:
                        Step38(lines: lines, highlight: highlight)
                    case 3:
                        Step38(lines: lines, highlight: highlight)
                    case 4:
                        Step38(lines: lines, highlight: highlight)
                    case 5:
                        Step38(lines: lines, highlight: highlight)
                    case 6:
                        Step38(lines: lines, highlight: highlight)
                    case 7:
                        Step39(lines: lines, highlight: highlight)
                    case 8:
                        Step40()
                    default:
                        []
                    }
                default:
                    []
                }
            default:
                []
            }
        }
        .class(classes.joined(separator: " "))
    }
}
