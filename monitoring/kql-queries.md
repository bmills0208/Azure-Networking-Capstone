# KQL Queries

## Application Gateway access traffic
```kusto
AGWAccessLogs
| order by TimeGenerated desc
| project TimeGenerated, ClientIp, RequestUri, HttpStatus, BackendPoolName
| take 50
```

## WAF events
```kusto
AGWFirewallLogs
| order by TimeGenerated desc
| project TimeGenerated, ClientIp, RequestUri, Action, RuleId, Message
| take 50
```

## Blocked WAF requests
```kusto
AGWFirewallLogs
| where Action =~ "Blocked"
| project TimeGenerated, ClientIp, RequestUri, Action, RuleId, Message
| order by TimeGenerated desc
```
