direct delivery
===============

- **objective**: what is the directy packet delivery mechanism.
- **topic**:  networking
- **requisites**: [neighbor discovery](neighbor-discovery.md)

- **related**: [indirect delivery](indirect-delivery.md)

Definition
----------

When the source and destination of an IP packet are connected to me same network, the
source send the packet directly to the destination [NIC](NIC). That is, there are no
intermediaries between the involved hosts.

---

When a host or router need to send an IP packet, uses its
[routing table](routing-table.md) to known how to do it. The [next hop](next-hop.md) field
of the matching row contains the next router address. But, there is a special address
value (0.0.0.0) that indicates that the destination is a neighbor (it is in the name
network).

In that case, the source encapsulate the IP packet over a frame. The frame format depends
the LAN or local link protocol. Usually that requires put the destination physical address
in the frame, so this operation implies a [neighbor discovery](neighbor-discovery.md)
mechanism, for example [ARP](ARP.md).

In the following routing table, the first row represents a *directy delivery* over the
network 200.1.2.0/24.

|        dst | mask |   next-hop | iface |
|-----------:|-----:|-----------:|------:|
| 200.10.2.0 |  /24 |    0.0.0.0 |    e0 |
|    0.0.0.0 |   /0 | 200.10.2.1 |    e0 |


References
----------
