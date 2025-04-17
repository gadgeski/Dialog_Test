import SwiftUI

struct ContentView: View {
    @State private var isShowingDialog = false

    var body: some View{
        Button(action: {
            isShowingDialog = true
        }) {
            Label("削除ボタン", systemImage: "trash")
        }.confirmationDialog("注意!", 
                            isPresented: $isShowingDialog,
                            titleVisibility: .visible, 
                            action: {
            Button("選択A") {
                // 処理A
            }
            Button("選択B") {
                // 処理B
            }
            Button("削除する", role: .destructive) {
                destructiveAction()
            }
            Button("キャンセル", role: .cancel) {
                cancelAction()
            }
        }, message: {
            Text("削除すると戻せません。舞元力一おもろい。")
        })
    }


    func destructiveAction() {
        print("削除を選択")
    }

    func cancelAction() {
        print("キャンセルを選択")
    }
}