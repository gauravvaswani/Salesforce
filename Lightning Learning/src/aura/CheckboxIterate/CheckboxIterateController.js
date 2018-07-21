({
   
    selectoptionvalue: function(component, event, helper) {
        
        var click = event.target.id;
        var selected = component.get("v.selectedCities");
       
         
        if(document.getElementById(click).checked)
            selected.push(click);
        else
             selected.pop(click);
        
        component.set("v.selectedCities", selected);
        
    },
    
    doInit : function(component){
        var obj = {
             "result": {               
                "item": [
                    {
					    "service": 'amazonPrime',
                        "phone": "true",
                        "email": "false",
						"telegram" : "false"
                    } ,
					{
					    "service": 'amazonNow',
                        "phone": "true",
                        "email": "false",
						"telegram" : "false"
                    } ,
					{
					    "service": 'amazonNext',
                        "phone": "false",
                        "email": "false",
						"telegram" : "true"
                    } 
                    
                ]

            }
        } 
        
       
        var selected = [];
        for(var itm in obj.result.item)
        {
            console.log(obj.result.item[itm].service +'====='+ obj.result.item[itm].phone);
            var email = obj.result.item[itm].email;
            var phone = obj.result.item[itm].phone;
            var telegram = obj.result.item[itm].telegram;
              if(phone == 'true')
                selected.push(obj.result.item[itm].service+'-'+'phone');
             if(email == 'true')
                selected.push(obj.result.item[itm].service+'-'+'email');            
             if(telegram == 'true')
                selected.push(obj.result.item[itm].service+'-'+'telegram');
            
           
                
        }
         component.set("v.selectedCities", selected); 
        
        component.set("v.datares",obj);
    }
    
    
})