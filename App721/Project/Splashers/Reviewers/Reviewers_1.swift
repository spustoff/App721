//
//  Reviewers_1.swift
//  App721
//
//  Created by Вячеслав on 7/14/24.
//

import SwiftUI

struct Reviewers_1: View {
    var body: some View {
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                Text("Manage your benefit\nin training")
                    .foregroundColor(.white)
                    .font(.system(size: 24, weight: .bold))
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                Image("reviewers_1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                NavigationLink(destination: {
                    
                    Reviewers_2()
                        .navigationBarBackButtonHidden()
                    
                }, label: {
                    
                    Text("Next")
                        .foregroundColor(.white)
                        .font(.system(size: 15, weight: .medium))
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("primary")))
                        .padding()
                })
            }
        }
    }
}

#Preview {
    Reviewers_1()
}
