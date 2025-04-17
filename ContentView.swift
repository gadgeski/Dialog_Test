import SwiftUI

struct ContentView: View {
    @State private var isShowingDialog = false
    @State var isError: Bool = false

    var body: some View{
        Button("Alertテスト") {
            isError = true
        }
        .alert(isPresented: $isError) {
            Alert(title: Text("タイトル"),message: Text("メッセージ文"),
            dismissButton: .default(Text("OK"), action{}))
        }
    }
}
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