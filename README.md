## Server Blacklist

This repository contains a `blacklist.txt` of XMPP domains that are used by
spammers and do not react to abuse complaints. Servers are added and removed
according to the following rules. The track record leading to addition or
removal is documented in the respective git commit.

### Addition to Blacklist

A server is added to the blacklist after the following steps were performed
and did not lead to a reduction of spam traffic from the server:

1. Contact the server operator directly (via XEP-0157 contact or info from
   server website), and wait 7 days for an appropriate reaction. *Skip this
   step if no public contact information can be found.*

2. If the server operator does not react or ceases to stop the spam: contact
   the hosting ISP abuse department (via Whois or contact from ISP website),
   and wait 14 days for an appropriate reaction.

3. If the ISP does not react or ceases to stop the spam: add the server to the
   blacklist with a documentation of the steps taken.

### Removal from Blacklist

A server operator can ask for removal from the blacklist by opening an issue
or PR on this repository. The following conditions must be met to de-list a
server:

* The server must deploy
  [XEP-0157: Contact Addresses for XMPP Services][XEP-0157].
* The operator must react to incoming abuse reports in a timely fashion.
* The total amount of spam from that server must be insignificant for a watch
  period of 14 days.

If the conditions are met, the server will be removed from the blacklist after
the watch period. If a server fails to fulfill these conditions, it will not
be removed. If the server ceases to fulfill the conditions after removal, it
may be re-listed immediately.


[XEP-0157]: https://xmpp.org/extensions/xep-0157.html
