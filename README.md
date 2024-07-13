# anydig
Get as many DNS records as possible for a domain.

## Requirements
Uses `dig` for lookups.

## Examples
Query records for `discord.com`:
```
$ adig discord.com
discord.com.            2400    IN      SOA     gabe.ns.cloudflare.com. dns.cloudflare.com. 2346120478 10000 2400 604800 1800
discord.com.            4465    IN      NS      sima.ns.cloudflare.com.
discord.com.            4465    IN      NS      gabe.ns.cloudflare.com.
discord.com.            27      IN      A       162.159.136.232
discord.com.            27      IN      A       162.159.137.232
discord.com.            27      IN      A       162.159.138.232
discord.com.            27      IN      A       162.159.135.232
discord.com.            27      IN      A       162.159.128.233
discord.com.            2400    IN      MX      10 aspmx3.googlemail.com.
discord.com.            2400    IN      MX      1 aspmx.l.google.com.
discord.com.            2400    IN      MX      5 alt2.aspmx.l.google.com.
discord.com.            2400    IN      MX      5 alt1.aspmx.l.google.com.
discord.com.            2400    IN      MX      10 aspmx2.googlemail.com.
discord.com.            2400    IN      TXT     "google-site-verification=AkZq_nCggw5fS3x2crQxF9I_9MEdqqWIVB-mutOiFzw"
discord.com.            2400    IN      TXT     "google-site-verification=uv4vY9gTOxCxIHlq_V75SMEEvcU44ATbkPcmV0Cpvus"
discord.com.            2400    IN      TXT     "docusign=90632817-c176-45ac-9297-96916059c0c5"
discord.com.            2400    IN      TXT     "google-site-verification=4lTw99D7TJimzNkaj9WtUoOpZoXad73hmD4WgR7COH4"
discord.com.            2400    IN      TXT     "apple-domain-verification=UP89cBit9taWldL9"
discord.com.            2400    IN      TXT     "atlassian-domain-verification=JNe2Ze7P8p623k8f7xRaHDyQWb6VzLxjFga1tu8M7lmVXC0bo1XgdnEsYuGIRFHv"
discord.com.            2400    IN      TXT     "google-site-verification=P3cQmz_2xQ17u5qOBHf7JIAYGq3HzDq0UtEkbOR6ZjQ"
discord.com.            2400    IN      TXT     "google-site-verification=_kQ_IPg2B1pYFXLv22nmgWshupdp4rK3xBnMQEvY88s"
discord.com.            2400    IN      TXT     "v=spf1 include:_spf.google.com include:mail.zendesk.com include:sendgrid.net include:3885857.spf06.hubspotemail.net ip4:198.2.180.60 -all"
discord.com.            2400    IN      TXT     "google-site-verification=Xos4rv9-rY3aGpQ6FtxhUC_Buhef0wF88_4rB4HmTZI"
discord.com.            4466    IN      DS      2371 13 2 0D240ED360C96E24E86DE7D23A00F4AD848D1DABF093CFE2B43EF144 3C347D20
discord.com.            2400    IN      NSEC    \000.discord.com. A NS SOA HINFO MX TXT AAAA LOC SRV NAPTR CERT SSHFP RRSIG NSEC DNSKEY TLSA SMIMEA HIP CDS CDNSKEY OPENPGPKEY SVCB HTTPS URI CAA
discord.com.            2614    IN      DNSKEY  257 3 13 mdsswUyr3DPW132mOi8V9xESWE8jTo0dxCjjnopKl+GqJxpVXckHAeF+ KkxLbxILfDLUT0rAK9iUzy1L53eKGQ==
discord.com.            2614    IN      DNSKEY  256 3 13 oJMRESz5E4gYzS/q6XDrvU1qMPYIjCWzJaOau8XNEZeqCYKD5ar0IRd8 KqXXFJkqmVfRvMGPmM1x8fGAa2XhSA==
discord.com.            867     IN      CDS     2371 13 2 0D240ED360C96E24E86DE7D23A00F4AD848D1DABF093CFE2B43EF144 3C347D20
discord.com.            867     IN      CDNSKEY 257 3 13 mdsswUyr3DPW132mOi8V9xESWE8jTo0dxCjjnopKl+GqJxpVXckHAeF+ KkxLbxILfDLUT0rAK9iUzy1L53eKGQ==
discord.com.            2400    IN      HTTPS   1 . alpn="h3,h2" ipv4hint=162.159.128.233,162.159.135.232,162.159.136.232,162.159.137.232,162.159.138.232
```

Query records for `dns.google` from `1.1.1.1`:
```
$ adig dns.google @1.1.1.1
dns.google.             21600   IN      SOA     ns1.zdns.google. cloud-dns-hostmaster.google.com. 1 21600 3600 259200 300
dns.google.             14807   IN      NS      ns1.zdns.google.
dns.google.             14807   IN      NS      ns2.zdns.google.
dns.google.             14807   IN      NS      ns3.zdns.google.
dns.google.             14807   IN      NS      ns4.zdns.google.
dns.google.             868     IN      A       8.8.8.8
dns.google.             868     IN      A       8.8.4.4
dns.google.             831     IN      AAAA    2001:4860:4860::8844
dns.google.             831     IN      AAAA    2001:4860:4860::8888
dns.google.             300     IN      TXT     "v=spf1 -all"
dns.google.             300     IN      TXT     "https://xkcd.com/1361/"
dns.google.             41      IN      DS      56044 8 2 1B0A7E90AA6B1AC65AA5B573EFC44ABF6CB2559444251B997103D2E4 0C351B08
dns.google.             300     IN      RRSIG   DNSKEY 8 2 300 20240802035555 20240711035555 56044 dns.google. SDOc4xqABE9uptJyx3KMAnFvNGgmJZBhsQq+/HagjvQiQj2FQZjHrhW6 hHGytAl6MNBaSP6Ee4Zwxag0K3YAR3qfHyaq+RqYyv6euFXhxdWNuY/f gbPJpZlzwlRo2D9OFL09JMByGuyV+ytmk8S/IKaqZsWXKRV4FiSTa9Kb dBppoYMhBWbFUtY0ABKq4/kQzj2Fa5ELlxbuLpL0jYijJq1eNfnYTVoM 1bKVOBhVuEcEKLDmzpfMz4A+SX8cLD1Vf2ulPLalnofq3oXxRUR3K+tL /nx8Gt7ARqx9dl8mjlKU0W1OMAoqV7u7gPFT8HwAMAjd3QjVYMXWGvMY 20fghg==
dns.google.             900     IN      RRSIG   AAAA 8 2 900 20240802035555 20240711035555 16204 dns.google. G14HszWkjSStcopuFDIlwd0Zm8eTwv7h0mrn8WeHzUeSne+RaRW2gzRo rTYEswnaJkLHCLC5zicGwxMVeV/MHyWwzy7Akivl/6NKDGAX1fzwcOhj uPy//vsjBW30B1r5A4TU1iHHPoFFwvDqyyvD38w/Veq9vwyYAHTvq6aV gjc=
dns.google.             21600   IN      RRSIG   NS 8 2 21600 20240802035555 20240711035555 16204 dns.google. GExcVCZVCDOY0ULtU5gBSPSSB1KugyZPPalxkkoeua4Ql8yLekUoQHei kQTAUjBpzHSd7UgYOnCTexbKm+gDAEfzQue/MvlMT8HWspCz+QwZk4GX DVpUTQgT9Pd+4KZT/0fHM/bbbIHdKZRqYS5fe78koiyrl7SETqASM2ac XzI=
dns.google.             300     IN      RRSIG   NSEC 8 2 300 20240802035555 20240711035555 16204 dns.google. XvY5f1/Jag8/EdeSGX2fvPhQpReMKPLK2eEM7aXIWGAabwWH39Le4Tiu hOYFgxyFMltxVxHiBVDy3VN8+Y2VtdWOekAu5ctTbM+Mbz3Hz6PtWOpm hk1vxpywsvIw27bOZdRT5yy0VLnD6i2FsYPF5qmjE71AkcfJh/U/gEU4 oPU=
dns.google.             21600   IN      RRSIG   SOA 8 2 21600 20240802035555 20240711035555 16204 dns.google. cch+J00Lxmev1JDS2Fedr9OYrK7iAqaZGAkIzq91xoN+94LvtfMuw4Qx GOJQoR5nt0xEzarYmTTvDNati78uMn8wkgqWYViBVEkvQI5gx9CdK1rF BAVuc8E0eorJ4VC/VGj7pMoXn2bdmH/2L9fDqHPhvEqc4CuwLYh7z/9J YKk=
dns.google.             300     IN      RRSIG   TXT 8 2 300 20240802035555 20240711035555 16204 dns.google. VK7fiYW4ZTfryxWcsQY5IK+lSHJvUjK6TKVtXkM6RTghlf5KsECh3atH 0qmCQNUKWKNtvwm92N5Knj/Pq5jx8+RBJJ0onX/WqL2a9auHhtAtDWK+ bee8tAT0Rh+4wSKmreK0t36Z5XNfh/lVx9MPcH1MsM7KdbE/gkUN3e5J wio=
dns.google.             900     IN      RRSIG   A 8 2 900 20240802035555 20240711035555 16204 dns.google. Kk2y5x7KVmvB1jHu7rAmLwvCXk8dFRp9jdVPzE4z820IP+Wja4BDGUdN v4mGgth/9W6+rQ2SXFGzE7J4LVo3v6VPjqPceGLs9BUO30G2BbOV4i2/ cGZpDc4xlifWZvTp+2viafzxIe1aoU1kKqNcIFPjWMC1zBuDkvAuxans A+c=
dns.google.             86400   IN      RRSIG   CAA 8 2 86400 20240802035555 20240711035555 16204 dns.google. aMVb6hdSKCvl9Bj6O19xr7MocPbePMeEgwQz/n9+SxjJYCHZK5TAPKuw 4bchSY9NYZAKGl22mTNhNerA1xLolwW0FlP4VU0TYsiVYGGfPcDetx3C J2dOafy3TXs9kg3IfPQ2J70zSjcMrSFvsUVMfzCbyQAuP9bRakaBk3he bAE=
dns.google.             300     IN      RRSIG   CDS 8 2 300 20240802035555 20240711035555 56044 dns.google. BTdvOHNRUlw2CxIAyan7qjfnx/xXFL9rW7DvwcIo6hZgPZX5w6pAyaF5 BjEx45Tu7NpbpiE28hWgodhU6S/0k5pk4hWo5pCGosmGwai4BEPOHfBH muj6wQL8W8XlaZTONJkAETQdE42kVRdq7FOBunZU+JP4dYHmggKkNQGb 8VLwgkpb/oP2fxexVe1nAZeFMp6X7CdEyllurme9FeqdOnOlXTgTfuZ8 ZeB5t2TqecRF2Bbw955314lUpBsX6Ndw9CX0K/khLCweMKo/RpQXutB/ ZSMxCTbnGfzPwxhKaVVYG1Xr7LjXvzKE+dlSUMStB4qM6SEdGwxjrBiY hP0VBQ==
dns.google.             300     IN      NSEC    _dmarc.dns.google. A NS SOA TXT AAAA RRSIG NSEC DNSKEY CDS CAA
dns.google.             279     IN      DNSKEY  256 3 8 AwEAAaQeALYwqt9E1UAZDZ0VAB+xpGYv8aOgp+KU888l8hem9e1oXzYM sDXwj0vKRrKCJuDUkBM2WIz4htwqNyYpihMC5TCUEnFUkKMxXBDV2EzD 0BoCQP3IgbIhH3YhqAC2+8QsI1ZUaStM6Ggy1VGvF29zievyltFe+3R7 Y4RVg+fF
dns.google.             279     IN      DNSKEY  257 3 8 AwEAAbwcDvL6jj3SGrhFmpiqahBVGlEIrt5OoVmgCINPJozYpXozSsb0 yVkK86vOGcaYZXFoaUisWp0s3GJ5pYD74CyHc1s0CIbGdzNOXthhH2rA hR2YgsnKJUmv8Odo1bFbTy9vzrWd3qQ/Mgp9fOFTE7Dkys2c9bpJmvw0 WScdW4xIxTXHilwIhqmrxeNjyRlgb3C8r2NWxjj4sqcATN9BSgk4fLvv B7UneWqWgM8kSd29bdL907nsg7eSuzETwTAHkU2mGHdC5i3kvRDgTqPC 2zwk+tF5Rau6x78XkZJm5pcyD0AYsmusJqjGa60FFe759CZQ0Y8K7cZP vom/cozR3lM=
dns.google.             300     IN      CDS     56044 8 2 1B0A7E90AA6B1AC65AA5B573EFC44ABF6CB2559444251B997103D2E4 0C351B08
dns.google.             86400   IN      CAA     0 issue "pki.goog"
dns.google.             86400   IN      CAA     128 issue "pki.goog"
```
