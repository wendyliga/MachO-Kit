import Foundation
import MachOKit

let memoryMap = try! MKMemoryMap(contentsOfFile: URL(fileURLWithPath: "/usr/bin/man"))

let macho = { () -> MKMachOImage in
    if let fatBinary = try? MKFatBinary(memoryMap: memoryMap), let slicex86_64 = fatBinary.architectures.first(where: { $0.cputype == CPU_TYPE_X86_64 }) {
        return try! MKMachOImage(name: "man", flags: .init(rawValue: 0), atAddress: mk_vm_address_t(slicex86_64.offset), inMapping: memoryMap)
    } else {
        return try! MKMachOImage(name: "man", flags: .init(rawValue: 0), atAddress: mk_vm_address_t(0), inMapping: memoryMap)
    }
}()

let functionStarts = macho.functionStarts.value
print(functionStarts)
