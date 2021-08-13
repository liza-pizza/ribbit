////
////  MetaDataView.swift
////  Ribbit
////
////  Created by Liza Bipin on 07/11/20.
////
//
//import SwiftUI
//
//struct MetadataView: View {
//    let post: PostData
//    let spaced: Bool
//
//    var stickied: some View {
//        Group {
//            /// Pinned icon
//            if post.stickied {
//                Image(systemName: "pin.fill")
//                    .rotationEffect(Angle(degrees: 45))
//                    .foregroundColor(Color("PinColour"))
//            }
//            if spaced {
//                Spacer()
//            }
//        }
//    }
//
//    var body: some View {
//        /// Spacers are placed to fill the width of the screen if desired
//        HStack {
//            if spaced {
//                Spacer()
//            }
//            stickied
//            /// Tuples store the SF Symbols, text, and color
//            ForEach([("arrow.up", "\(post.score)", Color.orange), ("text.bubble", "\(post.num_comments)", Color.primary), ("clock", "\(timeSince(post.created_utc))", Color.primary)], id: \.0) { data in
//                Group {
//                    Image(systemName: data.0)
//                    Text(data.1)
//                    if self.spaced {
//                        Spacer()
//                    }
//                }
//                .foregroundColor(data.2)
//            }
//        }
//    }
//}
//
//struct MetaDataView_Previews: PreviewProvider {
//    static var previews: some View {
//        MetaDataView(post: PostData.example, spaced: true )
//    }
//}
