//
//  ChartsView.swift
//  marcos
//
//  Created by GUILHERME MATEUS SOUSA SANTOS on 26/08/24.
//

import SwiftUI
import Charts

struct ChartsView: View {
    
    @ObservedObject var holidaysDAO: HolidaysDAO;
    let dateFormatter: DateFormatter;
    
    init(holidaysDAO: HolidaysDAO) {
        
        self.dateFormatter = DateFormatter()
        self.dateFormatter.dateFormat = "MMMM"
        self.holidaysDAO = holidaysDAO;
        print(dateFormatter.string(from: Foundation.Date()))
    }
    
    
    
    var body: some View {
        
        VStack {
            

                
                
                
            
            
            
            
            
            ChartHolidaysPerMonthView(holidays: holidaysDAO.holidaysPerMonth, month: dateFormatter.string(from: Foundation.Date()))
              
        }.padding()
        
        
    }
    
    struct HolidayView: View {
        
        let holidayName: String;
    //    let holidaySytle: HolidayStyle;
        
        var body: some View {
            Text("fsdfds")
                .frame(maxWidth: .infinity)
                .padding()
                .background(
                    Capsule()
                        .fill(Color.red)
                )
        }
        

        

        
        
    }
}





#Preview {
    ChartsView(holidaysDAO: HolidaysDAO())
}
