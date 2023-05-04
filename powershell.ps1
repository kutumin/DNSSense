curl -O blackbook.txt https://raw.githubusercontent.com/stamparm/blackbook/master/blackbook.txt
foreach($line in Get-Content .\blackbook.txt) {
    if($line -match $regex){
       curl $line
    }
}
