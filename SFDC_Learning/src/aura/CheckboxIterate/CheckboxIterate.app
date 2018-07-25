<aura:application extends="force:slds">
    <aura:attribute name="allaccounts" type="List" default="[ { BillingCity: 'Denver' }, { BillingCity: 'Ontario' }, { BillingCity: 'San Francisco' } ]" />
    <aura:attribute name="datares" type="Map" />
    <aura:attribute name="selectedCities" type="List" default="[]" />
    <aura:handler name="init" value="{!this}" action="{!c.doInit}"/>
    
    
    
    <table>
        <tr>
            <td></td>
            
            <td>
                <strong>Mobile</strong>
            </td>
            <td>
            	E-mail
            </td>
            <td>
            	<strong>Telegram</strong>
            </td>
            
        </tr>
        
        <aura:iteration var="a" items="{!v.datares.result.item}" indexVar="indx">
            <tr>
                <td>{!a.service} </td>
                
                <td> 
                   <input id="{!a.service+'-phone'}" type="checkbox" name="{!indx}" checked="{!a.phone}" onchange="{!c.selectoptionvalue}"/>
                </td>
                <td>
                   <input id="{!a.service+'-email'}" type="checkbox" name="{!indx}" checked="{!a.email}" onchange="{!c.selectoptionvalue}"/>
                </td>
                <td>
                	<input id="{!a.service+'-telegram'}" type="checkbox" name="{!indx}" checked="{!a.telegram}" onchange="{!c.selectoptionvalue}"/>
                </td>
            </tr>
            
           
        </aura:iteration>
        
    </table>
    
    <span> </span>
    
    
    <hr />
    
    Selections: {!join(',',v.selectedCities)}
    
</aura:application>