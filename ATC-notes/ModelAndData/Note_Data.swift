//
//  Note_Data.swift
//  ATC-notes
//
//  Created by Evgeniy K on 18.07.2023.
//

import Foundation

//MARK: note model. Needs this protocols to pass data out this file.
struct Note: Hashable, Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let description: String
}

//MARK: source of data
struct AtcData {
    
    //MARK: this data is only for preview purposes in NoteScreen file
    static let testNote = Note(name: "HORIZONTAL SPEED", imageName: "speedometer", description: "Speed control shall not be applied to aircraft entering or established in a holding pattern.\n\nSpeed adjustments should be limited to those necessary to establish and/or maintain a desired separation minimum or spacing. Instructions involving frequent changes of speed, including alternate speed increases and decreases, should be avoided.\n\nAt levels at or above 7 600 m (FL 250), speed adjustments should be expressed in multiples of 0.01 Mach; at levels below 7 600 m (FL 250), speed adjustments should be expressed in multiples of 20 km/h (10 kt) based on indicated airspeed (IAS).\n\nDOC 4444, 4.6 HORIZONTAL SPEED CONTROL INSTRUCTIONS")
    
    //MARK: data
    static let notes = [
        Note(name: "HORIZONTAL SPEED", imageName: "speedometer", description: "Speed control shall not be applied to aircraft entering or established in a holding pattern.\n\nSpeed adjustments should be limited to those necessary to establish and/or maintain a desired separation minimum or spacing. Instructions involving frequent changes of speed, including alternate speed increases and decreases, should be avoided.\n\nAt levels at or above 7 600 m (FL 250), speed adjustments should be expressed in multiples of 0.01 Mach; at levels below 7 600 m (FL 250), speed adjustments should be expressed in multiples of 20 km/h (10 kt) based on indicated airspeed (IAS).\n\nDOC 4444, 4.6 HORIZONTAL SPEED CONTROL INSTRUCTIONS"),
        
        Note(name: "DESCENT AND SPEED", imageName: "airplane.arrival", description: "Speed reductions to less than 460 km/h (250 kt) IAS for turbojet aircraft during initial descent from cruising level should be applied only with the concurrence of the flight crew.\n\nArriving aircraft should be permitted to operate in a clean configuration for as long as possible. Below 4 550 m (FL 150), speed reductions for turbojet aircraft to not less than 410 km/h (220 kt) IAS, which will normally be very close to the minimum speed of turbojet aircraft in a clean configuration, may be used. \n\nOnly minor speed adjustments not exceeding plus/minus 40 km/h (20 kt) IAS should be used for aircraft on intermediate and final approach. \n\nSpeed control should not be applied to aircraft after passing a point 7 km (4 NM) from the threshold on final approach. \n\nDOC 4444, 4.6.3 DESCENDING AND ARRIVING AIRCRAFT"),
        
        Note(name: "WAKE TURBULENCE", imageName: "scalemass", description: "Wake turbulence separation minima shall be based on a grouping of aircraft types into three categories according to the maximum certificated take-off mass as follows:\n\na) HEAVY (H) — all aircraft types of 136 000 kg or more;\n\nb) MEDIUM (M) — aircraft types less than 136 000 kg but more than 7 000 kg; and\n\nc) LIGHT (L) — aircraft types of 7 000 kg or less.\n\nHelicopters should be kept well clear of light aircraft when hovering or while air taxiing.\n\nDOC 4444, 4.9.1 WAKE TURBULENCE CATEGORIES OF AIRCRAFT"),
        
        Note(name: "VERTICAL SEPARATION", imageName: "rectangle.compress.vertical", description: "The vertical separation minimum (VSM) shall be:n\na)  a nominal 300 m (1 000 ft) below FL 290 and a nominal 600 m (2 000 ft) at or above this level, except as provided for in b) below; and\n\nb)  within designated airspace, subject to a regional air navigation agreement: a nominal 300 m (1 000 ft) below FL 410 or a higher level where so prescribed for use under specified conditions, and a nominal 600 m (2 000 ft) at or above this level.\n\nDOC 4444, 5.3.2 VERTICAL SEPARATION MINIMUM"),
        
        Note(name: "TRAFFIC INFORMATION", imageName: "info.circle", description: "Essential traffic information shall include: \n\na) direction of flight of aircraft concerned;\n\nb) type and wake turbulence category (if relevant) of aircraft concerned;\n\nc) cruising level of aircraft concerned; and\n\n1) estimated time over the reporting point nearest to where the level will be crossed; or \n\n2) relative bearing of the aircraft concerned in terms of the 12-hour clock as well as distance from the conflicting traffic; or \n\n3) actual or estimated position of the aircraft concerned. \n\nDOC 4444, 5.10 ESSENTIAL TRAFFIC INFORMATION"),
        
        Note(name: "DEPARTURE CLEARANCE", imageName: "paperplane", description: "Standard clearances for departing aircraft shall contain the following items:\n\na)  aircraft identification;\n\nb)  clearance limit, normally destination aerodrome;\n\nc)  designator of the assigned SID, if applicable;\n\nd)  cleared level;\n\ne)  allocated SSR code;\n\nf)  any other necessary instructions or information not contained in the SID description.\n\nDOC 4444, 6.3.2 STANDARD CLEARANCES FOR DEPARTING AIRCRAFT"),
        
        Note(name: "ARRIVAL CLEARANCE", imageName: "square.and.arrow.down", description: "Standard clearances for arriving aircraft shall contain the following items:\n\na)  aircraft identification;\n\nb) designator of the assigned STAR if applicable;\n\nc)  runway-in-use, except when part of the STAR description;\n\nd) cleared level; and\n\ne) any other necessary instructions or information not contained in the STAR description, e.g. instructions relating to change of communications.\n\nDOC 4444, 6.5.2 STANDARD CLEARANCES FOR ARRIVING AIRCRAFT"),
        
        Note(name: "PRIORITY FOR LANDING", imageName: "figure.wave.circle", description: "In cases of emergency an aircraft may enter a traffic circuit and effect a landing without proper authorization.\n\nPriority shall be given to:\n\na) an aircraft which anticipates being compelled to land because of factors affecting the safe operation of the aircraft (engine failure, shortage of fuel, etc.);\n\nb) hospital aircraft or aircraft carrying any sick or seriously injured persons requiring urgent medical attention;\n\nc) aircraft engaged in search and rescue operations; and\n\nd) other aircraft as may be determined by the appropriate authority.\n\nDOC 4444, 7.7.3 PRIORITY FOR LANDING"),
        
        Note(name: "AIR INCIDENT REPORTS", imageName: "exclamationmark.bubble", description: "When an aircraft involved in an incident has a destination outside the area of responsibility of the ATS unit where the incident occurred, the ATS unit at the destination aerodrome should be notified and requested to obtain the pilot’s report. The following information should be included in the message:\n\na)  type of incident (AIRPROX, procedure or facility);\n\nb)  identification of the aircraft concerned;\n\nc)  time and position at time of incident;\n\nd)  brief details of incident.\n\nDOC 4444, 11.4.3.5 MESSAGES CONCERNING AIR TRAFFIC INCIDENT REPORTS"),
        
    ]
}
