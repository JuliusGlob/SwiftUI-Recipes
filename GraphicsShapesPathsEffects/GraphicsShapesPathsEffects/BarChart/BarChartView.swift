//
//  BarChartView.swift
//  GraphicsShapesPathsEffects
//
//  Created by Julio Ismael Robles on 09/11/2021.
//

import SwiftUI

private func getHistoricalStocks() -> [Stock] {
    var stocks = [Stock]()
    for _ in 0...21 {
        let stock = Stock(price: Double.random(in: 100...300))
        stocks.append(stock)
    }
    return stocks
}

private func getYearlyLabels() -> [String] {
    return (2000...2021).map { String($0) }
}

struct BarChartView: View {
    
    let values: [Int]
    let labels: [String]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .bottom) {
                ForEach(values.indices, id: \.self) { index in
                    
                    let label = labels[index]
                    let value = values[index]
                    
                    VStack {
                        Text("\(value)")
                        Rectangle()
                            .fill(value > 120 ? Color.green : Color.red)
                            .frame(width: 44, height: CGFloat(value), alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        Text(label)
                    }.padding([.leading, .trailing], 8)
                }
            }
        }
    }
}
struct ViewToDisplay: View {
    
    let prices = getHistoricalStocks().map { Int($0.price) }
    let labels = getYearlyLabels()
    
    var body: some View {
        NavigationView {
            VStack {
                LineChartView(values: prices, labels: ["2000", "2010", "2015", "2020", "2021"])
                Spacer()
                BarChartView(values: prices, labels: labels)
            }
            .navigationTitle("Stocks")
        }
    }
}

struct BarChartView_Previews: PreviewProvider {
    static var previews: some View {
        ViewToDisplay()
    }
}
