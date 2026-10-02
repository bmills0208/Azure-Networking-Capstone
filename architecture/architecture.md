# Architecture Notes

The lab used a hub-and-spoke design with centralized routing and security.

## Core Components
- Hub VNet
- Azure Firewall
- AVD Spoke
- Web Spoke
- Azure VPN Gateway
- Ubuntu strongSwan VM as simulated on-prem
- Standard Load Balancer
- Application Gateway WAF_v2
- Log Analytics
- Azure Monitor / Action Group
