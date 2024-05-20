Install-WindowsFeature  -name Web-Server  -includeManagementTools
New-Website -name "ngcp12.ph" -hostheader "www.ngcp12.ph" -physicalpath "d:\webs\datingbiz"