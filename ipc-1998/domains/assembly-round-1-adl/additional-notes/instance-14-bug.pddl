(define (problem assem-x-14)
   (:domain assembly)
   (:objects frob whatsis-27 connector-28 kludge-9 coil-29
             thingumbob-30 bracket-31 wire-32 device-16 doodad-11 tube-15
             fastener-12 frob-13 valve-14 socket-1 contraption-5 hack-6
             sprocket-7 widget-3 mount-4 widget sprocket whatsis doodad
             hoozawhatsie kludge bracket hack valve socket contraption plug coil
             device connector wire thingumbob - assembly
             scalpel - resource)
   (:init (available whatsis-27)
          (available connector-28)
          (available coil-29)
          (available thingumbob-30)
          (available bracket-31)
          (available wire-32)
          (available doodad-11)
          (available fastener-12)
          (available frob-13)
          (available valve-14)
          (available contraption-5)
          (available hack-6)
          (available sprocket-7)
          (available widget-3)
          (available mount-4)
          (available whatsis)
          (available doodad)
          (available kludge)
          (available bracket)
          (available hack)
          (available socket)
          (available coil)
          (available device)
          (available wire)
          (available thingumbob)
          (available scalpel)
          (requires kludge-9 scalpel)
          (requires device-16 scalpel)
          (requires socket-1 scalpel)
          (requires widget scalpel)
          (requires sprocket scalpel)
          (requires valve scalpel)
          (requires contraption scalpel)
          (part-of whatsis-27 frob)
          (part-of connector-28 frob)
          (part-of kludge-9 frob)
          (part-of device-16 frob)
          (part-of socket-1 frob)
          (part-of widget frob)
          (part-of sprocket frob)
          (part-of valve frob)
          (part-of contraption frob)
          (part-of coil-29 kludge-9)
          (part-of thingumbob-30 kludge-9)
          (transient-part bracket-31 kludge-9)
          (transient-part wire-32 kludge-9)
          (part-of hack-6 device-16)
          (part-of doodad-11 device-16)
          (part-of tube-15 device-16)
          (part-of fastener-12 tube-15)
          (part-of frob-13 tube-15)
          (part-of valve-14 tube-15)
          (part-of contraption-5 socket-1)
          (transient-part hack-6 socket-1)
          (part-of sprocket-7 socket-1)
          (part-of wire-32 socket-1)
          (part-of widget-3 socket-1)
          (transient-part mount-4 socket-1)
          (part-of mount-4 widget)
          (part-of foobar widget)
          (part-of whatsis sprocket)
          (transient-part doodad sprocket)
          (part-of hoozawhatsie sprocket)
          (part-of kludge hoozawhatsie)
          (part-of bracket hoozawhatsie)
          (part-of hack hoozawhatsie)
          (part-of socket valve)
          (part-of doodad valve)
          (part-of bracket-31 valve)
          (part-of plug contraption)
          (part-of connector contraption)
          (part-of coil plug)
          (part-of device plug)
          (part-of wire connector)
          (part-of thingumbob connector)
          (assemble-order connector-28 sprocket frob)
          (assemble-order sprocket widget frob)
          (assemble-order valve socket-1 frob)
          (assemble-order contraption socket-1 frob)
          (assemble-order bracket-31 coil-29 kludge-9)
          (remove-order coil-29 bracket-31 kludge-9)
          (assemble-order wire-32 bracket-31 kludge-9)
          (remove-order bracket-31 wire-32 kludge-9)
          (assemble-order hack-6 sprocket-7 device-16)
          (assemble-order hack-6 sprocket-7 socket-1)
          (remove-order sprocket-7 hack-6 socket-1)
          (assemble-order wire-32 bracket-31 socket-1)
          (assemble-order mount-4 sprocket-7 socket-1)
          (remove-order sprocket-7 mount-4 socket-1)
          (assemble-order mount-4 sprocket-7 widget)
          (assemble-order foobar bracket-31 widget)
          (assemble-order whatsis doodad sprocket)
          (assemble-order whatsis hoozawhatsie sprocket)
          (assemble-order doodad hoozawhatsie sprocket)
          (remove-order hoozawhatsie doodad sprocket)
          (assemble-order kludge bracket hoozawhatsie)
          (assemble-order hack kludge hoozawhatsie)
          (assemble-order socket doodad valve)
          (assemble-order doodad hoozawhatsie valve)
          (remove-order mount doodad valve)
          (assemble-order bracket-31 coil-29 valve)
          (assemble-order plug connector contraption))
   (:goal (complete frob)))