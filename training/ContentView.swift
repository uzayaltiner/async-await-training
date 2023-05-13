//
//  ContentView.swift
//  training
//
//  Created by Uzay Altıner on 13.05.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var manager = Manager()
    @State var obj = [String]()
    var body: some View {
        VStack {
            ScrollView {
                ForEach(obj, id: \.self) { obj in
                    Text(obj)
                }
            }
            Button {
                Task {
                    obj = await manager.reverseData(data: obj)
                }
            } label: {
                Text("Tap Here")
            }
        }
        .onAppear {
            Task {
                obj = await manager.fetchData()
                obj = await manager.upperCaseData(data: obj)
                obj = await manager.sortData(data: obj)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
