<% if $IncludeFormTag %>
<form $AttributesHTML>
<% end_if %>
    <% if $Message %>
    <div id="{$FormName}_error" class="message alert alert-<% if $MessageType == "good" %>success<% end_if %><% if $MessageType == "error" || $MessageType == "required" %>danger<% end_if %>">$Message</div>
    <% else %>
    <div id="{$FormName}_error" class="message alert $MessageType" style="display: none"></div>
    <% end_if %>

    <fieldset>
        <% if $Legend %><legend>$Legend</legend><% end_if %>
        <% loop $Fields %>
            $FieldHolder
        <% end_loop %>
        <div class="clear"><!-- --></div>
    </fieldset>

    <% if $Actions %>
    <div class="btn-toolbar">
        <% loop $Actions %>
            $Field
        <% end_loop %>
    </div>
    <% end_if %>
<% if $IncludeFormTag %>
</form>
<% end_if %>
