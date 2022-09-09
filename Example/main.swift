import Foundation
import MachOKit

//let memoryMap = try! MKMemoryMap(contentsOfFile: URL(fileURLWithPath: "/Users/wendy.liga/Developer/ios-tokopedia-2/ios/ThirdParty/GoogleMaps/GoogleMaps.xcframework/ios-arm64_x86_64-simulator/GoogleMaps.framework/GoogleMaps"))
let memoryMap = try! MKMemoryMap(contentsOfFile: URL(fileURLWithPath: "/Users/wendy.liga/Applications/Tulsi.app/Contents/MacOS/Tulsi"))

//let fatBinary = try! MKFatBinary(memoryMap: memoryMap)
//
//// Retrieve the x86_64 slice
//let slice64 = fatBinary.architectures.first { $0.cputype == CPU_TYPE_X86_64 }
//
//// Retrieve the offset of the x86_64 slice within the file
//let slice64FileOffset = slice64!.offset

//let macho = try! MKMachOImage(name: "GoogleMaps", flags: .init(rawValue: 0), atAddress: mk_vm_address_t(slice64FileOffset), inMapping: memoryMap)
let macho = try! MKMachOImage(name: "Tulsi", flags: .init(rawValue: 0), atAddress: mk_vm_address_t(0), inMapping: memoryMap)

//let functionStarts = macho.functionStarts.value
//print(functionStarts)

//print(macho.symbolTable.value)


macho.symbolTable.value?.symbols.forEach({ symbol in
    print(symbol.)
})

//let loadCommands = macho.loadCommands
//loadCommands.forEach { lc in
//    if lc.cmd == LC_SEGMENT_64 {
//        print(lc)
//    }
//}

//for (_, section) in macho.sections {
//    // Mach-O Kit instantiates specialized subclass of MKSection when it encounters a section containing Objective-C class list metadata
//    guard let section = section as? MKObjCClassListSection else { continue }
//
//    for clsPointer in section.elements {
//        // The __objc_(n)classlist sections are just a list of pointers to class structures in the data section
//        guard let cls = clsPointer.pointee.value else { continue}
//        // The pointer to the class name is stored in the class data structure
//        guard let clsData = cls.classData.pointee.value else { continue }
//        // Finally, the name is a pointer to a string in the strings section
//        guard let clsName = clsData.name.pointee.value else { continue }
//
//        print(clsName)
//    }
//}
