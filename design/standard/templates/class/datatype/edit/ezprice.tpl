<div class="block">
<label>VAT type:</label><div class="labelbreak"></div>
<select name="ContentClass_ezprice_vat_id_{$class_attribute.id}">
{*<option value="2" {section show=eq($class_attribute.data_int1,2)}selected{/section}>2</option>*}
{section name=VatTypeList loop=$class_attribute.content.vat_type}
<option value="{$VatTypeList:item.id}" 
          {switch match=$VatTypeList:item.id}
            {case match=$class_attribute.data_float1}
	       selected
            {/case}
	  {/switch} >{$VatTypeList:item.name}, {$VatTypeList:item.percentage}%</option>
{/section}
</select>
</div>
<div class="block">
<input type = "radio" name = "ContentClass_ezprice_include_vat_{$class_attribute.id}" value="1" {section show=eq($class_attribute.data_int1,1)}checked{/section} >
<label>Price inc. VAT</label>
<input type = "radio" name = "ContentClass_ezprice_include_vat_{$class_attribute.id}" value="2" {section show=eq($class_attribute.data_int1,2)}checked{/section}>
<label>Price ex. VAT</label>
</div>
