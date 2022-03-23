////
////  DBServicesController.swift
////  client.ios
////
////  Created by Andrey Eremenko on 15.09.2020.
////  Copyright © 2020 Avtoapp. All rights reserved.
////
//
//import Foundation
//import RxSwift
//import RealmSwift
//
//struct DBServicesController{
//
//    public static func saveServicesInRealm(services: [ServiceResponse]) -> Observable<[ServiceRealm]>{
//        return Observable.create{
//            emmiter in
//            do{
//                let realm = try Realm()
//                let results = realm.objects(ServiceRealm.self)
//                let servicesRealm = services.map{ServiceRealm(serviceResponse: $0)}
//                services.forEach{service in
//                    if(service.serviceCode != nil && service.iconUrl != nil){
//                        FileUtils.saveImage(image: FileUtils.loadImageFromUrl(imageUrl: service.iconUrl!)!, key: service.serviceCode!)
//                    }
//                }
//                try realm.write {
//                    realm.delete(results)
//                    realm.add(servicesRealm)
//                }
//                emmiter.onNext(servicesRealm)
//            }catch{
//                emmiter.onError(error)
//            }
//            return Disposables.create()
//        }.subscribeOn(ConcurrentDispatchQueueScheduler(qos: .background)).observeOn(MainScheduler.instance)
//    }
//
//    public static func getServicesFromRealm() -> Observable<[ServiceRealm]>{
//        return Observable.create{
//            emmiter in
//            do{
//                let realm = try Realm()
//                let results = realm.objects(ServiceRealm.self)
//                emmiter.onNext(Array(results))
//            }catch{
//                emmiter.onError(error)
//            }
//            return Disposables.create()
//        }
//    }
//}
