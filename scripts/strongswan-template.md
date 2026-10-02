# strongSwan Configuration Template

This is intentionally sanitized and contains no real public IPs, PSKs, or credentials.

```text
conn azure-capstone
    type=tunnel
    keyexchange=ikev2
    authby=psk
    left=%defaultroute
    leftsubnet=<ON_PREM_ADDRESS_SPACE>
    right=<AZURE_VPN_GATEWAY_PUBLIC_IP>
    rightsubnet=<AZURE_ADDRESS_SPACE>
    auto=start
```

Never commit `/etc/ipsec.secrets` to a public repository.
