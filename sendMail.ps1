param 
( 
    [string]$key = "key", 
    [string]$ToEmail = "ToEmail",
	[string]$Template = "Template",
	[string]$Subject = "Subject"
)


#$enc = [System.Text.Encoding]::Unicode
#$enccSubject= $enc.GetString($Subject)
#$Subject = Get-Content -Encoding UTF8 $Subject

$json = @{"key"="Vwsa3zPspMu6Yrlv0jr4Lg";
 "id"="bd7b30d0539e415b9685abd2898c7985";
 }|ConvertTo-Json
 
 
 $json = @"
 {
    "key": "Vwsa3zPspMu6Yrlv0jr4Lg",
    "template_name": "AdikaStyle",
    "template_content": [
        {
            "name": "Adikastyle",
            "content": "example content"
        }
    ],
    "message": {
        "subject": "$Subject",
        "from_email": "info@adikastyle.com",
        "from_name": "Example Name",
        "to": [
            {
                "email": "$ToEmail",
                "name": "Nati",
                "type": "to"
            }
        ],
        "merge_vars": [
            {
                "rcpt": "nati@adikastyle.com",
                "vars": [
                    {
                        "name": "merge2",
                        "content": "merge2 content"
                    }
                ]
            }
        ]
    },
    "async": false,
    "ip_pool": "Main Pool",
    "send_at": "2018-01-01 00:00:00"
}
"@
 
 
Invoke-RestMethod -Uri  mandrillapp.com/api/1.0/messages/send.json -Method POST -Body $json -ContentType "application/json"
write-host "Press any key to continue..."
[void][System.Console]::ReadKey($true)
