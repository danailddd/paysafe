$today = get-date
$getHolidays = Invoke-WebRequest -Uri "https://www.gov.uk/bank-holidays.json"
$holidaysSchedule = ConvertFrom-Json $getHolidays.content
$england = $holidaysSchedule.'england-and-wales'

#$england.events


ForEach ( $date in $england.events ) {
    if ([datetime]::today -lt $date.date)
    { 
        $dateFormateed = Get-Date $date.date -Format "MM/dd/yyyy" 
        "$($date.title) $dateFormateed"
        break
    } 
    
}

$scotland = $holidaysSchedule.'scotland'


ForEach ( $date in $scotland.events ) {
    if ([datetime]::today -lt $date.date)
    { 
        $dateFormateed = Get-Date $date.date -Format "MM/dd/yyyy" 
        "$($date.title) $dateFormateed"
        break
    } 
    
}

$northernIreland = $holidaysSchedule.'northern-ireland'


ForEach ( $date in $northernIreland.events ) {
    if ([datetime]::today -lt $date.date)
    { 
        $dateFormateed = Get-Date $date.date -Format "MM/dd/yyyy" 
        "$($date.title) $dateFormateed"
        break
    } 
    
}
