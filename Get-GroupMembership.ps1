function Get-GroupMembership
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
        [string]$Group
    )

    Begin
    {
    }
    Process
    {
    #Get the users of a group.
    Get-ADGroupMember -identity $Group -Recursive | select name,objectclass
    }
    End
    {
    }
}