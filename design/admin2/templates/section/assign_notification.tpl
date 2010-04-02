{* DO NOT EDIT THIS FILE! Use an override template instead. *}

<div class="context-block">
{* DESIGN: Header START *}<div class="box-header"><div class="box-ml">

<h1 class="context-title">{'Assign section notification'|i18n( 'design/admin/section/assign_notification')}</h1>

{* DESIGN: Mainline *}<div class="header-mainline"></div>

{* DESIGN: Header END *}</div></div>

{* DESIGN: Content START *}<div class="box-ml"><div class="box-mr"><div class="box-content">

<div class="message-warning">
{switch match=$error_number}
{case match=1}
<h3>
{"The section < %1 > was not assigned to the nodes listed below because of insufficient permission:"|i18n( 'design/admin/section/assign_notification', '', hash( '%1', $section_name ) )}
</h3><p>
{foreach $denied_node_list as $node}
{delimiter}<br />{/delimiter}
 - {$node.name}
{/foreach}</p>
{/case}
{case match=2}
<h3>
{"There are no objects in the system that you could assign the section < %1 > to."|i18n( 'design/admin/section/assign_notification', '', hash( '%1', $section_name ) )}
</h3>
{/case}
{case match=3}
<h3>
{"You do not have permission to assign the section < %1 > to any object."|i18n( 'design/admin/section/assign_notification', '', hash( '%1', $section_name ) )}
<h3/>
{/case}
{/switch}
</h3>
</div>

{* DESIGN: Content END *}</div></div></div>

<form action={"/section/list"|ezurl} method="post">

<div class="controlbar">
{* DESIGN: Control bar START *}<div class="box-bc"><div class="box-ml">
<div class="block">
    <input class="button" type="submit" value="{'OK'|i18n( 'design/admin/section/assign_notification' )}" />
</div>
{* DESIGN: Control bar END *}</div></div>
</div>

</form>
</div>