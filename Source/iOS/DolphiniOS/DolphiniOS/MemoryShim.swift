//
//  MemoryShim.swift
//  DolphiniOS-TV
//
//  Created by Riley Testut on 5/14/21.
//  Copyright © 2021 Dolphin Team. All rights reserved.
//

import Foundation
import Darwin

@_silgen_name("thread_set_exception_ports")
func dolphin_thread_set_exception_ports(_ thread: mach_port_t,
                                        _ exception_mask: UInt32,
                                        _ new_port: mach_port_t,
                                        _ behavior: Int32,
                                        _ new_flavor: Int32) -> kern_return_t

@_silgen_name("mach_msg_overwrite")
func dolphin_mach_msg_overwrite(_ msg: UnsafeMutablePointer<mach_msg_header_t>,
                                _ option: mach_msg_option_t,
                                _ send_size: mach_msg_size_t,
                                _ rcv_size: mach_msg_size_t,
                                _ rcv_name: mach_port_name_t,
                                _ timeout: mach_msg_timeout_t,
                                _ notify: mach_port_name_t,
                                _ rcv_msg: UnsafeMutablePointer<mach_msg_header_t>,
                                _ rcv_limit: mach_msg_size_t) -> mach_msg_return_t

@_cdecl("rst_thread_set_exception_ports")
func rst_thread_set_exception_ports(_ thread: mach_port_t, _ exception_mask: UInt32, _ new_port: mach_port_t, _ behavior: Int32, _ new_flavor: Int32) -> kern_return_t {
    return dolphin_thread_set_exception_ports(thread, exception_mask, new_port, behavior, new_flavor);
}

@_cdecl("rst_mach_msg_overwrite")
func rst_mach_msg_overwrite(_ msg: UnsafeMutablePointer<mach_msg_header_t>,
                            _ option: mach_msg_option_t,
                            _ send_size: mach_msg_size_t,
                            _ rcv_size: mach_msg_size_t,
                            _ rcv_name: mach_port_name_t,
                            _ timeout: mach_msg_timeout_t,
                            _ notify: mach_port_name_t,
                            _ rcv_msg: UnsafeMutablePointer<mach_msg_header_t>,
                            _ rcv_limit: mach_msg_size_t) -> mach_msg_return_t
{
    return dolphin_mach_msg_overwrite(msg, option, send_size, rcv_size, rcv_name, timeout, notify, rcv_msg, rcv_limit);
}



