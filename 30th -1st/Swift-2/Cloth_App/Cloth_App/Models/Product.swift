//
//  Product.swift
//  Cloth_App
//
//  Created by NIBM-LAB04-PC03 on 2024-03-26.
//

import Foundation

struct Product : Identifiable{
    var id = UUID()
    var name: String
    var image: String
    var description: String
    var size: String
    var price: Int

}

var productList=[
    Product(name:"Floral Dress",
            image: "1",
            description:"Embrace the timeless charm of spring with this elegant floral dress. Adorned with delicate blooms in soft hues, it captures the essence of nature's beauty, making it the perfect choice for any springtime occasion",
            size:"S,M,L",
            price:3500),
    Product(name:"Beauty Of Spring Time",
            image: "2",
            description:"Step into the enchanting realm of spring with this ethereal dress. Its flowing silhouette and intricate floral patterns evoke the delicate beauty of blossoming gardens, bringing a sense of freshness and vitality to your wardrobe",
            size:"S,M,L",
            price:4000),
    Product(name:"Born To Bloom Top",
            image: "3",
            description:"Elevate your everyday style with this chic top, designed for the modern woman who is destined to bloom. Featuring a vibrant floral print and flattering silhouette, it exudes confidence and femininity, making it a wardrobe essential for embracing your inner beauty",
            size:"S,M,L",
            price:6000),
    Product(name:"Go Ahead WW Top",
            image: "4",
            description:"Make a statement with this bold and sophisticated top, perfect for the woman who isn't afraid to go after what she wants. With its eye-catching design and confident attitude, it's the ultimate choice for those ready to conquer the world in style",
            size:"S,M,L",
            price:5500),
    Product(name:"Tumbler Set Dress",
            image: "5",
            description:"Effortlessly stylish and endlessly versatile, this dress is a must-have addition to your wardrobe. With its relaxed silhouette and playful tumbler print, it exudes laid-back elegance, perfect for casual outings or weekend adventures",
            size:"S,M,L",
            price:5000),
    Product(name:"Shades Of Summer",
            image: "6",
            description:"Embrace the warmth and vibrancy of summer with this stunning dress. Featuring a captivating blend of bold colors and intricate patterns, it captures the essence of sunny days and balmy nights, ensuring you stand out wherever you go",
            size:"S,M,L",
            price:6500)]

