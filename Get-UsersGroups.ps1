function Get-UsersGroups
{
    [CmdletBinding()]
    [Alias()]
    [OutputType([int])]
    Param
    (
        # Param1 help description
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=0)]
        [string]$Account
    )

    Begin
    {
    }
    Process
    {
    #Get the groups a user is a member of.
    $User = Get-ADUser -Identity $Account -Properties *;
    $GroupMembership = ($user.memberof | % { (Get-ADGroup $_).Name; })
    $GroupMembership
    }
    End
    {
    }
}