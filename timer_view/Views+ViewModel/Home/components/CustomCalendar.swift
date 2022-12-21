//
//  CustomCalendar.swift
//  timer_view
//
//  Created by Kavindu Dissanayake on 2022-12-21.
//


import SwiftUI
import FSCalendar

struct CustomCalendar: UIViewRepresentable {
    //MARK: - PROPERTIES
    @Binding var pageCurrent: Date
    @Binding var mnthNm: Date
    var selectedDate:(Date?)->()
    var calendar = FSCalendar()
    
    //make the UI
    func makeUIView(context: Context) -> FSCalendar {
        
        let appearance = calendar.appearance
        calendar.dataSource = context.coordinator
        calendar.delegate = context.coordinator
        calendar.allowsMultipleSelection = false
       // calendar.today = nil
        appearance.headerMinimumDissolvedAlpha = 0
        appearance.selectionColor = UIColor(greenColor)
        appearance.headerTitleColor = UIColor(Color.white)
        appearance.weekdayTextColor = UIColor(greenColor)
        appearance.titleDefaultColor = UIColor(Color.white)
        appearance.weekdayFont = UIFont(name: "SFProText-Semibold", size: 14)
        appearance.headerTitleFont =  UIFont(name: "SFProText-Semibold", size: 16)
        appearance.borderRadius = 0.3
        appearance.headerTitleOffset = CGPoint(x: 0, y: -10)
        appearance.caseOptions = FSCalendarCaseOptions.weekdayUsesSingleUpperCase
    
        return calendar
    }
    
    //update calendar view when click on left or right button
    func updateUIView(_ uiView: FSCalendar, context: Context) {
        uiView.setCurrentPage(pageCurrent, animated: true)
    }
    
    func makeCoordinator() -> CustomCalendar.Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, FSCalendarDelegate, FSCalendarDataSource {
        var parent: CustomCalendar
        
        init(_ parent: CustomCalendar) {
            self.parent = parent
        }
        
        func calendarCurrentPageDidChange(_ calendar: FSCalendar) {
            parent.pageCurrent = calendar.currentPage
            parent.mnthNm = calendar.currentPage
        }
        
        //selectedate of calendar
        func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
            parent.selectedDate(calendar.selectedDate)
        }
//
//        //deselect date in calender
//        func calendar(_ calendar: FSCalendar, didDeselect date: Date, at monthPosition: FSCalendarMonthPosition) {
//        }
//

        
    }
}


struct CustomCalendarCard: View {
    var selectedDate:(Date?)->()
    var body: some View {
        VStack{
            CustomCalendar(pageCurrent: .constant(Date()), mnthNm: .constant(Date())){ date in

                selectedDate(date)
            }
        }//VStack
        .frame(height: 350)
        .padding(.all,16)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(greenColor, lineWidth:0.5)
        )
        .padding(.all,16)
    }
    
}

//MARK: - PREVIEW
struct ProfileSetupCustomCalendar_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            colorBackground
            
            CustomCalendarCard(){date in
                
            }
        }
    }
}
