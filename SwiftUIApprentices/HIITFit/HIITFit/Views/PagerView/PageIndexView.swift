//
//  PageIndexView.swift
//  HIITFit
//
//  Created by Sulayman Md on 11.07.23.
//


import SwiftUI

/// Page index view for the pager view.
internal struct PageIndexView: View {

    internal enum Constants {
        static let itemSize = CGSize(width: 30, height: 8)
        static let cornerSize = CGSize(width: 2, height: 2)
    }

    // MARK: - Internal Properties
    internal let numberOfPages: Int
    internal let currentIndex: Int

    // MARK: - Drawing Constants

    private let spacing: CGFloat = 10
    private let primaryColor = Color.blue
    private let secondaryColor = Color.white

    // MARK: - Body
    internal var body: some View {
        HStack(spacing: spacing) {
            ForEach(0..<numberOfPages, id: \.self) { index in
                RoundedRectangle(cornerSize: Constants.cornerSize)
                    .fill(currentIndex == index ? secondaryColor : primaryColor)
                    .frame(width: Constants.itemSize.width, height:  Constants.itemSize.height)
                    .id(index)
            }
        }
    }
}

struct PageIndexView_Previews: PreviewProvider {
    static var previews: some View {
        PageIndexView(numberOfPages: 0, currentIndex: 0)
    }
}
