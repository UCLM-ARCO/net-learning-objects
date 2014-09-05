default gateway
===============

- **objective**: what is and how works a *default gateway*.
- **topic**:  networking
- **related**: [forwarding](forwarding.md) | [routing table](routing-table.md)
- **synonym**: *default router*


Definition
----------

In internetworking parlance, **default gateway** is a router configured as fallback
delivery method in any other router or computer.

---

Any [routing table](routing-table.md) (also called [forwarding table](routing-table.md))
is composed by rows. Each row determines a:

- [direct delivery](direct-delivery.md) when the packet destination is a neighbor, or
- [indirect delivery](indirect-delivery.md) when the destination is in other network and
  the packet must be sent to a router in behalf.

The routing table is sequentially processed. If a row matches, the delivery is applied and
the remaining rows are skipped. The **default gateway** is a special row in the table that
specify a router that must be used as indirect delivery if the table processing ends
without matching.

The following is a routing table example. Last row refers to a the default router
(200.10.2.2).

|        dst | mask |   next-hop | iface |
|-----------:|-----:|-----------:|------:|
| 200.10.2.0 |  /24 |    0.0.0.0 |    e0 |
|  120.9.0.0 |  /16 | 200.10.2.1 |    e0 |
|    0.0.0.0 |   /0 |  140.2.0.1 |    e1 |


Remenber
--------

* The default gateway is usually located at the end of the *routing table*, but it is not
  mandatory.
* A routing table can not contains more than one *default router* row.


References
----------

* <http://en.wikipedia.org/wiki/Default_gateway>
* <http://www.ietf.org/rfc/rfc1519.txt>
