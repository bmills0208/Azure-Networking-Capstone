# Troubleshooting & Lessons Learned

## NSG and subnet associations
Connectivity testing exposed missing NSG/subnet associations.

## Route-table next hop
A connectivity issue looked like an NSG problem, but Network Watcher showed the route table did not have the required next hop. After correcting the UDR, connectivity worked without the temporary outbound NSG rule.

## StrongSwan / IPsec
The simulated on-prem VPN required troubleshooting StrongSwan syntax and IPsec proposal compatibility before the tunnel established.

## Application Gateway health probes
The custom probe required the correct host/port/path behavior for the IIS backend configuration.

## Backend failover
One IIS backend was stopped. Application Gateway marked it unhealthy while the site remained available through the surviving backend. After recovery, both backends returned to healthy state.

## WAF Prevention mode
A harmless XSS-style test request was blocked with HTTP 403, and `AGWFirewallLogs` showed matching and blocked WAF rules.

## Monitoring and alerting
Application Gateway diagnostics were sent to Log Analytics. KQL queries verified access and WAF events, and an Azure Monitor alert triggered email and SMS notifications.
