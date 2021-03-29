AWS Turbo disk controller board

This is a reverse engineering project.
The AWS was an 8088/8086 based computer made by Convergent Technologies in
the mid 1980's.  Some models had the AWS Turbo disk controller.
This handled a 5.25 inch floppy and an MFM hard drive.

It was based on a Signetics N8x300 processor.
This project is fundamentally a disassembly and analysis of the firmware
for this processor.  The purpose of this is a deeper understanding of the
AWS hard drive controller, along with general fun and games.

The bulk of the "action" is aws.dis.  This is a disassembly, heavily annotated
by comments am adding as I work to understand the firmware.  I update this
regularly as I study and learn more.

-----

The AWS itself had 3 major boards.  A so called "motherboard" which mostly did
signal routing, a CPU board (2 versions, one with an 8088, the other with an 8086),
and a disk controller board (either a FDC controller, or the HDC controller we
are studying in detail here).  Note that the HDC controller also handled a floppy.

Schematics are available for all of these boards in the technical manual.
Not for the motherboard though, you just get tables of wire lists.

P13 was the MFM disk connector (actually a pair of connectors) for the hard drive.
P11 and P12 were the connectors to floppy drives (you could have two).

The HDC controller had 2 big edge connectors.  P10 was a 50 pin connector and
was a sort of bus between it and the CPU card.  P9 was an 80 pin connector and
carried most (but not all) of the drive signals.
