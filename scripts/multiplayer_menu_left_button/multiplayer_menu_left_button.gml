if ready[argument0]==0
{
    switch selectchar[argument0]
    {
        case 0:
        selectchar[argument0]=5 break;
        case 1:
        selectchar[argument0]=0 break;
        case 2:
        selectchar[argument0]=1 break;
        case 3:
        selectchar[argument0]=2 break;
        case 4:
        selectchar[argument0]=3 break;
        case 5:
        selectchar[argument0]=4 break;            
    }
}
if ready[argument0]==1
{
    if readymenuselect[argument0]==1
    {
        playerhandicap[argument0]-=1
        if playerhandicap[argument0]==-1
            playerhandicap[argument0]=2
    }
    else if readymenuselect[argument0]==2
    {
        if palette[argument0]>0
            palette[argument0]-=1
    }
}
