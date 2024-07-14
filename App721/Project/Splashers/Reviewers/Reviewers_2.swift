//
//  Reviewers_2.swift
//  App721
//
//  Created by Вячеслав on 7/14/24.
//

import SwiftUI

struct Reviewers_2: View {
    
    @AppStorage("status") var status: Bool = false
    
    var body: some View {
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                Text("Don't forget about\nstudent activities")
                    .foregroundColor(.white)
                    .font(.system(size: 24, weight: .bold))
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                Image("reviewers_2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Button(action: {
                    
                    status = true
                    
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
    Reviewers_2()
}
