default router
==============

- **objective**: what is and how works a **default router**.
- **topic**:  networking
- **requisites**: [IP fundamentals](ip-fundamentals)
- **synonym**: *default gateway*


Definition
----------

In internetworking parlance, **default router** (also called *default gateway*) is a
router configured as fallback [next hop](routing-table) in any other router or computer.

---

Any [routing table](routing-table) (also called [forwarding table](routing-table)) is
composed by rows. Each row determines a:

- [direct delivery](direct-delivery) when the packet destination is a neighbor, or
- [indirect delivery](indirect-delivery) when the destination is in other network and the
  packet must be sent to a router in behalf.

The routing table is sequentially processed so if a row matches, the rest of rows are
skipped. The **default router** is a special row in the table that specify a router that
must be used as indirect delivery if the table processing ends without matching.

Next is a routing table example. Last row refers to a the default router (200.10.2.2). The
default router is usually located at the end but it is not mandatory.

|        dst | mask |   next-hop | iface |
|-----------:|-----:|-----------:|------:|
| 200.10.2.0 |  /24 |    0.0.0.0 |    e0 |
|  120.9.0.0 |  /16 | 200.10.2.1 |    e0 |
|    0.0.0.0 |   /0 |  140.2.0.1 |    e1 |


References
----------

* <http://en.wikipedia.org/wiki/Default_route>
