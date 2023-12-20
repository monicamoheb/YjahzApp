//
//  MyResponse.swift
//  YjahzApp
//
//  Created by Mac on 18/12/2023.
//

import Foundation

// MARK: - MyResponse
class MyResponse<T>: Codable where T: Codable{
    var success: Bool?
    var response_code: Int?
    var message: String?
    var data: [T]?
}

// MARK: - Datum
struct CategoryResponse: Codable {
    var id: Int?
    var name: String?
    var image: String?
    var active: Int?
    var name_ar, name_en: String?
}

// MARK: - Datum
struct ProductResponse: Codable {
    var id: Int?
    var name, email, phone: String?
    var image: String?
    var logo: String?
    var description: String?
    var distance: String?
    var type, status: Int?
    var lat, lng, address, appointments: String?
    var trending, popular: Int?
    var rate: String?
    var is_favorite: Bool?
    var categories: [Category]?
    var token: String?
    var information: Information?
    var product_categories: [ProductCategory]?
}

// MARK: - Category
struct Category: Codable {
    var id: Int?
    var name: String?
    var image: String?
    var active: Int?
}

// MARK: - Information
struct Information: Codable {
    var id: Int?
    var identity_number, tax_record: String?
    var activity: String?
    var nationality: String?
    var vehicle_image, vehicle_tablet_image, vehicle_registration, driving_image: String?
}

// MARK: - ProductCategory
struct ProductCategory: Codable {
    var id: Int?
    var name: String?
    var active: Int?
    var name_ar, name_en: String?
}

class PostClientResponse<T>: Codable where T: Codable{
    var success: Bool?
    var response_code: Int?
    var message: String?
    var data: T?
}

// MARK: - DataClass
struct DataClass: Codable {
    var id: Int?
    var name, email, phone: String?
    var image: String?
    var type, status: Int?
    var balance: String?
    var addresses: [String]?
    var token: String?
}
