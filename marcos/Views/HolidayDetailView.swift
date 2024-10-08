import SwiftUI

struct HolidayDetailView: View {
    let holiday: HolidayWithStyle
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            
            HStack {
                Spacer()
                Capsule()
                    .fill(Color.vermeiTchan)
                    .frame(width: 90, height: 7)
                Spacer()
            }
            
            ZStack {
                HStack(alignment: .center) {
                    Text(holiday.holidayStyle.emoji)
                        .font(.largeTitle)
                        .padding(6)
                        .background(
                            Circle()
                                .fill(holiday.holidayStyle.cor)
                        )
                    
                    VStack(alignment: .leading) {
                        Text(holiday.holiday.name)
                            .font(.title2)
                            .bold()
                        Text(holiday.holiday.type.joined(separator: ", "))
                            .font(.subheadline)
                            .foregroundColor(holiday.holidayStyle.cor)
                    }
                    Spacer()
                }
                .padding(.top, 30)
                .padding(.horizontal, 30)
            }
            .overlay(
                Button(action: {
                    dismiss()
                }, label: {
                    Image(systemName: "xmark")
                        .imageScale(.large)
                        .foregroundColor(.vermeiTchan)
                })
                .padding(.trailing, 30),
                alignment: .topTrailing
            )
            
            Text("History about the \(holiday.holiday.name)")
                .font(.headline)
                .padding(.horizontal, 30)
            
            DashedLine()
                .frame(height: 1)
                .padding(.vertical, 5)
                .padding(.horizontal, 30)
            
            ScrollView{
                Text(holiday.holiday.description)
                    .font(.body)
                    .padding(.horizontal, 30)
                
            }
            
            
            Link(destination: URL(string: holiday.holiday.canonical_url)!) {
                Text("More info!")
                    .font(.body)
                    .bold()
                    .foregroundColor(.vermeiTchan)
                    .underline()
            }
            .padding(.horizontal, 30)
            .padding(.top, 40)
    
            Spacer()
        }
        .padding(.top, 10)
                .presentationDragIndicator(.visible)
                .presentationDetents([.medium, .large])
    }
}
