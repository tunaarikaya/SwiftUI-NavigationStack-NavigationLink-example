import SwiftUI

struct MainPage: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink("Git > A", destination: PageA())
                    .padding()
                NavigationLink("Git > X", destination: PageX())
                    .padding()
            }
            .navigationTitle("Anasayfa")
        }
    }
}

struct PageA: View {
    var body: some View {
        VStack {
            NavigationLink("Git > B", destination: PageB())
                .padding()
        }
        .navigationTitle("Sayfa A")
    }
}

struct PageB: View {
    var body: some View {
        VStack {
            NavigationLink("Git > Y", destination: PageY())
                .padding()
        }
        .navigationTitle("Sayfa B")
    }
}

struct PageX: View {
    var body: some View {
        VStack {
            NavigationLink("Git > Y", destination: PageY())
                .padding()
        }
        .navigationTitle("Sayfa X")
    }
}

struct PageY: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack {
            Text("Sayfa Y")
                .padding()
            Button("Anasayfaya Dön") {
                dismiss()
            }
        }
        .navigationTitle("Sayfa Y")
    }
}

#Preview {
    MainPage()
}
