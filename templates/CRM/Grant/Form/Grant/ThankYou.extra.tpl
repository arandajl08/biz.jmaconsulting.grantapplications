
{if $files}
    {literal}
	<script type='text/javascript'>
    {/literal}
	    {foreach from=$files item=values key=id}
	    	{literal}
			var noDisplay = '';
			var id = {/literal}'{$id}'{literal};
			var displayURL = {/literal}'{$values.displayURL}'{literal};
			var fileURL = {/literal}'{$values.fileURL}'{literal};
			var fileName = {/literal}'{$values.fileName}'{literal};
			var fid = {/literal}'{$values.fileID}'{literal};
			{/literal}{if $values.noDisplay}{literal}
			var noDisplay = {/literal}'{$values.noDisplay}'{literal};
			{/literal}{/if}{literal}

			if (displayURL != '') {
		          cj('#'+id).replaceWith('<a href='+displayURL+' class=crm-image-popup><img src='+displayURL+' height="100" width="100"></a>');
                	}
		        else if (noDisplay == '') {
		          cj('#'+id).replaceWith('<a href='+fileURL+'>'+fileName+'</a>');
                        }
			 if (noDisplay != '') {
			  cj('#'+id).replaceWith('');
			}
        	{/literal}
    	    {/foreach}
    {literal}
	</script>
    {/literal}
{/if}