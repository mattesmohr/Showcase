import HTMLKit

struct EditorTab: View {
    
    let name: String
    
    let isSelected: Bool
    
    init(name: String, isSelected: Bool = false) {
        
        self.name = name
        self.isSelected = isSelected
    }
    
    var body: Content {
        Division {
            Vector {
                Path {
                }
                .draw("M14.478,10.459C14.478,10.459 14.477,10.458 14.477,10.458C14.5,10.379 14.524,10.3 14.544,10.219C15.415,6.75 13.29,2.649 9.694,0.49C11.27,2.626 11.967,5.213 11.348,7.476C11.292,7.678 11.226,7.872 11.153,8.06C11.073,8.008 10.973,7.948 10.838,7.874C10.838,7.874 7.261,5.665 3.384,1.759C3.282,1.656 5.452,4.859 7.913,7.46C6.753,6.809 3.521,4.457 1.475,2.585C1.727,3.004 2.026,3.408 2.354,3.796C4.063,5.963 6.291,8.637 8.961,10.69C7.085,11.838 4.435,11.927 1.796,10.691C1.143,10.385 0.53,10.016 -0.038,9.597C1.079,11.384 2.799,12.925 4.893,13.825C7.39,14.898 9.873,14.826 11.723,13.843L11.721,13.845C11.73,13.84 11.74,13.834 11.749,13.828C11.825,13.787 11.9,13.746 11.974,13.702C12.863,13.241 14.618,12.773 15.56,14.606C15.791,15.054 16.281,12.677 14.478,10.459Z")
            }
            .namespace("http://www.w3.org/2000/svg")
            .viewBox("0 0 16 16")
            Paragraph {
                name
            }
        }
        .class("editor-tab")
        .modify(if: isSelected) { division in
            division.class("editor-tab selected")
        }
    }
}
