//
//  Users_2.swift
//  App721
//
//  Created by Вячеслав on 7/14/24.
//

import SwiftUI
import StoreKit

struct Users_2: View {
    var body: some View {
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                Text("Rate our app in\nthe AppStore")
                    .foregroundColor(.white)
                    .font(.system(size: 24, weight: .bold))
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                Image("users_2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                NavigationLink(destination: {
                    
                    Users_3()
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
        .onAppear {
            
            SKStoreReviewController.requestReview()
        }
    }
}

#Preview {
    Users_2()
}
