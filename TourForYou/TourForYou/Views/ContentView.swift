import SwiftUI

// 상세화면 우선 작업
struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom,-130)
            VStack(alignment: .leading) {
                Text("N서울타워")
                    .font(.title)
                HStack{
                    Text("남산공원")
                        .font(.subheadline)
                    Spacer()
                    Text("서울특별시")
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                Text("about N 서울타워")
                    .font(.title2)
                Text("서울의 중심부에 위치한 N서울타워는 서울을 한 눈에 조망할 수 있는 전망명소로, 야경과 사랑의 자물쇠로 유명한 관광지입니다.")
            }
            .padding()
            Spacer()
        }
        
    }
}

#Preview {
    ContentView()
}
