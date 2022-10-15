//
//  ContentView.swift
//  project
//
//  Created by Admin on 10/12/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = firstPageViewModel()
    @State var searchFirstPage : String = ""
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    var body: some View {
        VStack{
            Picker("Mode" , selection: $isDarkMode){
                Text("light").tag(false)
                Text("dark").tag(true)
            }.padding(0.0).pickerStyle(SegmentedPickerStyle()).padding([.top, .leading, .trailing])
            NavigationView {
                ZStack{
                    
                    if viewModel.isRefreshing{
                        ProgressView()
                    }
                    else
                    {
                        
                        List {
                            ForEach(filterFirstPage , id: \.id){ firstPageModelUsers in
                                firstPageView(firstPageModel: firstPageModelUsers)
                                    .listRowSeparator(.hidden)
                            }
                        }
                        .listStyle(.plain)
                        .searchable(text: $searchFirstPage)
                        .navigationTitle("Project")
                    }
                }
                .onAppear(perform: viewModel.fetchFirstPageApi)
                .alert(isPresented:$viewModel.hasError,
                       error: viewModel.error){
                    Button(action: viewModel.fetchFirstPageApi) {
                        Text("retry")
                    }
                }
            }.preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
    var filterFirstPage: [firstPageModel] {
        if searchFirstPage.isEmpty {
            return viewModel.firstPageModelUsers
        }
        return viewModel.firstPageModelUsers.filter{
            $0.name.contains(searchFirstPage)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
