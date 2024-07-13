# See: https://www.iana.org/assignments/dns-parameters/dns-parameters.xhtml

# Get all Resource Record (RR) TYPEs:
# curl 'https://www.iana.org/assignments/dns-parameters/dns-parameters-4.csv' \
# |grep -Eiv 'obsolete|deprecated|reserved|unassigned|private|\*|xfr' \
# |awk -F ',' '{print $2, "\t# "$1}' | grep -E '^[0-9]'

# Remove/comment any types you don't need to avoid unnecessary lookups
RRTYPES=(
    6       # SOA
    2       # NS
    1       # A
    28      # AAAA
    5       # CNAME
    7       # MB
    8       # MG
    9       # MR
    10      # NULL
    11      # WKS
    12      # PTR
    13      # HINFO
    14      # MINFO
    15      # MX
    16      # TXT
    17      # RP
    18      # AFSDB
    19      # X25
    20      # ISDN
    21      # RT
    24      # SIG
    25      # KEY
    26      # PX
    27      # GPOS
    29      # LOC
    31      # EID
    32      # NIMLOC
    33      # SRV
    34      # ATMA
    35      # NAPTR
    36      # KX
    37      # CERT
    39      # DNAME
    40      # SINK
    41      # OPT
    42      # APL
    43      # DS
    44      # SSHFP
    45      # IPSECKEY
    46      # RRSIG
    47      # NSEC
    48      # DNSKEY
    49      # DHCID
    50      # NSEC3
    51      # NSEC3PARAM
    52      # TLSA
    53      # SMIMEA
    55      # HIP
    56      # NINFO
    57      # RKEY
    58      # TALINK
    59      # CDS
    60      # CDNSKEY
    61      # OPENPGPKEY
    62      # CSYNC
    63      # ZONEMD
    64      # SVCB
    65      # HTTPS
    99      # SPF
    104     # NID
    105     # L32
    106     # L64
    107     # LP
    108     # EUI48
    109     # EUI64
    249     # TKEY
    250     # TSIG
    253     # MAILB
    256     # URI
    257     # CAA
    258     # AVC
    259     # DOA
    260     # AMTRELAY
    261     # RESINFO
    262     # WALLET
    32768   # TA
)
