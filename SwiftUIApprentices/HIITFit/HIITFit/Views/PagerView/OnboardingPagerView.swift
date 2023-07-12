
import SwiftUI

/// Page view of onboarding views, hold the views and show them like a page.
internal struct OnboardingPagerView: View {
    @State private var selection = 0

    internal var body: some View {
        ZStack {
            /// Tab view holds a list of view and present it like a pager.
            TabView(selection: $selection){
                //MARK: - Add the views here.
                Text("A").tag(0)
                Text("B").tag(1)
                Text("C").tag(2)
                Text("D").tag(3)
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .allowsHitTesting(true)
            Group {
                PageIndexView(numberOfPages: 4, currentIndex: selection).padding()
            }
            .frame(maxHeight: .infinity, alignment: .bottom)
            Group {
                HStack {
                    previousButton()
                    Spacer()
                    nextButton()
                }.padding(.bottom, 50)
            }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        }
        .background(Color.gray)
    }

    /// Previous button shows the previous onboarding view if allowed.
    @ViewBuilder
    private func previousButton() -> some View {
        if selection > 0 {
            Button{
                selection = selection - 1
            } label: {
                Image(systemName: "arrow.left")
            }
            .frame(width: 36, height: 36)
            .contentShape(Rectangle())
            .padding()
        }
    }

    /// Next button shows the next onboarding view if allowed.
    @ViewBuilder
    private func nextButton() -> some View {
        Button{
            /// MARK: - Update this logic later, 2 is the number of views that pager is showing.
            selection = selection >= 2 ? 2 : selection + 1
        } label: {
            Image(systemName: "arrow.right")
        }
        .frame(width: 36, height: 36)
        .contentShape(Rectangle())
        .padding()
    }
}

struct OnboardingRootView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPagerView()
    }
}
