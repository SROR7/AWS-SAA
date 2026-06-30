Import-Module AWS.Tools.S3

$region = "eu-north-1"
$BucketName = read-Host -promot "Enter The Bucket Name Here: "

Write-host "AWS region : $region" 
Write-host "AWS Bucket : $BucketName"

function BucketExist {
    $Bucket = Get-S3Bucket -BucketName $BucketName -ErrorAction SilentlyContinue
    return $null -ne $Bucket
}

if (-not (BucketExist) ){
    Write-host "Bucket Does Not Exist..."
    New-S3Bucket -BucketName $BucketName -Region $region

}else{
    Write-host "Bucket Already Exists..."
}

$FILE= "Newfile.txt"
$CONTENT= "Hello Bucket"


Set-Content -path $FILE -value $CONTENT

Write-S3Object -BucketName $BucketName -File $FILE -Key $FILE