//
//  Json.swift
//  TrojanMac
//
//  Created by ParadiseDuo on 2020/4/7.
//  Copyright © 2020 ParadiseDuo. All rights reserved.
//

import Foundation

struct Client: Codable {
    let run_type: String
    let local_addr: String
    let local_port: Int
    let password: [String]
    let remote_addr: String
    let remote_port: Int
    let log_level: Int
    let ssl: SSL
    let tcp: TCP

    private enum CodingKeys: String, CodingKey {
        case run_type = "run_type"
        case local_addr = "local_addr"
        case local_port = "local_port"
        case remote_addr = "remote_addr"
        case remote_port = "remote_port"
        case password = "password"
        case log_level = "log_level"
        case ssl = "ssl"
        case tcp = "tcp"
    }
}


struct SSL: Codable {
    let verify: Bool
    let verify_hostname: Bool
    let cert: String
    let cipher: String
    let cipher_tls13: String
    let sni: String
    let alpn: [String]
    let reuse_session: Bool
    let session_ticket: Bool
    let curves: String

    private enum CodingKeys: String, CodingKey {
        case verify = "verify"
        case verify_hostname = "verify_hostname"
        case cert = "cert"
        case cipher = "cipher"
        case cipher_tls13 = "cipher_tls13"
        case sni = "sni"
        case alpn = "alpn"
        case reuse_session = "reuse_session"
        case session_ticket = "session_ticket"
        case curves = "curves"
    }
}


struct TCP: Codable {
    let no_delay: Bool
    let keep_alive: Bool
    let reuse_port: Bool
    let fast_open: Bool
    let fast_open_qlen: Int

    private enum CodingKeys: String, CodingKey {
        case no_delay = "no_delay"
        case keep_alive = "keep_alive"
        case reuse_port = "reuse_port"
        case fast_open = "fast_open"
        case fast_open_qlen = "fast_open_qlen"
    }
}