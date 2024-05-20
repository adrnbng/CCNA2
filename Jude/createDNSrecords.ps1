Install-WindowsFeature  -name dns  -includeManagementTools
Add-DnsServerPrimaryZone -Name "ngcp12.ph" -ZoneFile "ngcp12.ph.dns"
add-DnsServerResourceRecord -zonename ngcp12.ph -A -name ns -ipv4address 10.12.1.10
add-DnsServerResourceRecord -zonename ngcp12.ph -Cname -name www -hostname ns.ngcp12.ph
add-DnsServerResourceRecord -zonename ngcp12.ph -Cname -name imap -hostname ns.ngcp12.ph
add-DnsServerResourceRecord -zonename ngcp12.ph -Cname -name pop -hostname ns.ngcp12.ph
add-DnsServerResourceRecord -zonename ngcp12.ph -Cname -name smtp -hostname ns.ngcp12.ph
#### FOR CISCO DEVICES DNS RECORDS;
add-DnsServerResourceRecord -zonename ngcp12.ph -A -name cb -ipv4address 10.12.1.4
add-DnsServerResourceRecord -zonename ngcp12.ph -A -name ct -ipv4address 10.12.1.2
add-DnsServerResourceRecord -zonename ngcp12.ph -A -name cm -ipv4address 10.12.100.8
add-DnsServerResourceRecord -zonename ngcp12.ph -A -name ed -ipv4address 10.12.12.1
add-DnsServerResourceRecord -zonename ngcp12.ph -A -name p1 -ipv4address 10.12.100.101
add-DnsServerResourceRecord -zonename ngcp12.ph -A -name p2 -ipv4address 10.12.100.102
add-DnsServerResourceRecord -zonename ngcp12.ph -A -name c1 -ipv4address 10.12.50.6
add-DnsServerResourceRecord -zonename ngcp12.ph -A -name c2 -ipv4address 10.12.50.8
add-DnsServerResourceRecord -zonename ngcp12.ph -A -name ap -ipv4address 10.12.10.3