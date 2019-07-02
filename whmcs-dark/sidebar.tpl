{if $sidebar eq "home"}

<span class="header"><img src="images/icons/linktracking.png" class="absmiddle" width="16" height="16" /> {$_ADMINLANG.global.shortcuts}</span>
<ul class="menu">
    <li><a href="clientsadd.php"><img src="images/icons/clientsadd.png" class="absmiddle" width="16" height="16" /> {$_ADMINLANG.clients.addnew}</a></li>
    <li><a href="ordersadd.php"><img src="images/icons/ordersadd.png" class="absmiddle" width="16" height="16" /> {$_ADMINLANG.orders.addnew}</a></li>
    <li><a href="quotes.php?action=manage"><img src="images/icons/quotes.png" class="absmiddle" width="16" height="16" /> {$_ADMINLANG.quotes.createnew}</a></li>
    <li><a href="todolist.php"><img src="images/icons/todolist.png" class="absmiddle" width="16" height="16" /> {$_ADMINLANG.utilities.todolistcreatenew}</a></li>
    <li><a href="supporttickets.php?action=open"><img src="images/icons/tickets.png" class="absmiddle" width="16" height="16" /> {$_ADMINLANG.support.opennewticket}</a></li>
    <li><a href="whois.php"><img src="images/icons/domains.png" class="absmiddle" width="16" height="16" /> {$_ADMINLANG.utilities.whois}</a></li>
    <li><a href="#" data-toggle="modal" data-target="#modalGenerateInvoices"><img src="images/icons/invoices.png" class="absmiddle" width="16" height="16" /> {$_ADMINLANG.invoices.geninvoices}</a></li>
    <li><a href="#" data-toggle="modal" data-target="#modalCreditCardCapture"><img src="images/icons/offlinecc.png" class="absmiddle" width="16" height="16" /> {$_ADMINLANG.invoices.attemptcccaptures}</a></li>
</ul>

<span class="header"><img src="images/icons/home.png" class="absmiddle" width="16" height="16" /> {$_ADMINLANG.global.systeminfo}</span>
<div class="smallfont">{$_ADMINLANG.license.regto}: {$licenseinfo.registeredname}<br />{$_ADMINLANG.license.type}: {$licenseinfo.productname}<br />{$_ADMINLANG.license.expires}: {$licenseinfo.expires}<br />{$_ADMINLANG.global.version}: {$licenseinfo.currentversion}{if $licenseinfo.updateavailable}<br /><span class="textred"><b>{$_ADMINLANG.license.updateavailable}</b></span>{/if}<br /><br /></div>

{elseif $sidebar eq "clients"}

<span class="header"><img src="images/icons/clients.png" class="absmiddle" alt="Clients" width="16" height="16" /> {$_ADMINLANG.clients.title}</span>
<ul class="menu">
    <li><a href="clients.php">{$_ADMINLANG.clients.viewsearch}</a></li>
    <li><a href="clientsadd.php">{$_ADMINLANG.clients.addnew}</a></li>
</ul>

<span class="header"><img src="images/icons/products.png" alt="Products/Services" width="16" height="16" class="absmiddle" /> {$_ADMINLANG.services.title}</span>
<ul class="menu">
    <li><a href="clientshostinglist.php">{$_ADMINLANG.services.listall}</a></li>
    <li><a href="clientshostinglist.php?listtype=hostingaccount">- {$_ADMINLANG.services.listhosting}</a></li>
    <li><a href="clientshostinglist.php?listtype=reselleraccount">- {$_ADMINLANG.services.listreseller}</a></li>
    <li><a href="clientshostinglist.php?listtype=server">- {$_ADMINLANG.services.listservers}</a></li>
    <li><a href="clientshostinglist.php?listtype=other">- {$_ADMINLANG.services.listother}</a></li>
    <li><a href="clientsaddonslist.php">{$_ADMINLANG.services.listaddons}</a></li>
    <li><a href="clientsdomainlist.php">{$_ADMINLANG.services.listdomains}</a></li>
    <li><a href="cancelrequests.php">{$_ADMINLANG.clients.cancelrequests}</a></li>
</ul>

<span class="header"><img src="images/icons/affiliates.png" alt="Affiliates" width="16" height="16" class="absmiddle" /> {$_ADMINLANG.affiliates.title}</span>
<ul class="menu">
    <li><a href="affiliates.php">{$_ADMINLANG.affiliates.manage}</a></li>
</ul>

{elseif $sidebar eq "orders"}

<span class="header"><img src="images/icons/orders.png" alt="Affiliates" width="16" height="16" class="absmiddle" /> {$_ADMINLANG.orders.title}</span>
<ul class="menu">
    <li><a href="orders.php">{$_ADMINLANG.orders.listall}</a></li>
    <li><a href="orders.php?status=Pending">- {$_ADMINLANG.orders.listpending}</a></li>
    <li><a href="orders.php?status=Active">- {$_ADMINLANG.orders.listactive}</a></li>
    <li><a href="orders.php?status=Fraud">- {$_ADMINLANG.orders.listfraud}</a></li>
    <li><a href="orders.php?status=Cancelled">- {$_ADMINLANG.orders.listcancelled}</a></li>
    <li><a href="ordersadd.php">{$_ADMINLANG.orders.addnew}</a></li>
</ul>

{elseif $sidebar eq "billing"}

<span class="header"><img src="images/icons/transactions.png" class="absmiddle" width="16" height="16" /> {$_ADMINLANG.billing.title}</span>
<ul class="menu">
    <li><a href="transactions.php">{$_ADMINLANG.billing.transactionslist}</a></li>
    <li><a href="gatewaylog.php">{$_ADMINLANG.billing.gatewaylog}</a></li>
    <li><a href="offlineccprocessing.php">{$_ADMINLANG.billing.offlinecc}</a></li>
</ul>

<span class="header"><img src="images/icons/invoices.png" class="absmiddle" width="16" height="16" /> {$_ADMINLANG.invoices.title}</span>
<ul class="menu">
    <li><a href="invoices.php">{$_ADMINLANG.invoices.listall}</a></li>
    <li><a href="invoices.php?status=Paid">- {$_ADMINLANG.status.paid}</a></li>
    <li><a href="invoices.php?status=Draft">- {$_ADMINLANG.status.draft}</a></li>
    <li><a href="invoices.php?status=Unpaid">- {$_ADMINLANG.status.unpaid}</a></li>
    <li><a href="invoices.php?status=Overdue">- {$_ADMINLANG.status.overdue}</a></li>
    <li><a href="invoices.php?status=Cancelled">- {$_ADMINLANG.status.cancelled}</a></li>
    <li><a href="invoices.php?status=Refunded">- {$_ADMINLANG.status.refunded}</a></li>
    <li><a href="invoices.php?status=Collections">- {$_ADMINLANG.status.collections}</a></li>
</ul>

<span class="header"><img src="images/icons/billableitems.png" class="absmiddle" width="16" height="16" /> {$_ADMINLANG.billableitems.title}</span>
<ul class="menu">
    <li><a href="billableitems.php">{$_ADMINLANG.billableitems.listall}</a></li>
    <li><a href="billableitems.php?status=Uninvoiced">- {$_ADMINLANG.billableitems.uninvoiced}</a></li>
    <li><a href="billableitems.php?status=Recurring">- {$_ADMINLANG.billableitems.recurring}</a></li>
    <li><a href="billableitems.php?action=manage">{$_ADMINLANG.billableitems.addnew}</a></li>
</ul>

<span class="header"><img src="images/icons/quotes.png" class="absmiddle" width="16" height="16" /> {$_ADMINLANG.quotes.title}</span>
<ul class="menu">
    <li><a href="quotes.php">{$_ADMINLANG.quotes.listall}</a></li>
    <li><a href="quotes.php?validity=Valid">- {$_ADMINLANG.status.valid}</a></li>
    <li><a href="quotes.php?validity=Expired">- {$_ADMINLANG.status.expired}</a></li>
    <li><a href="quotes.php?action=manage">{$_ADMINLANG.quotes.createnew}</a></li>
</ul>

{elseif $sidebar eq "support"}

{if $inticket}

<span class="header"><img src="images/icons/support.png" alt="Support Center" width="16" height="16" class="absmiddle" /> {$_ADMINLANG.support.ticketinfo}</span>

<span class="ticketheader">{$_ADMINLANG.fields.client}</span>
<div class="ticketinfo smallfont">
    {if $userid}
        <a href="clientssummary.php?userid={$userid}"{if $clientgroupcolour} style="background-color:{$clientgroupcolour}"{/if} target="_blank">
            {$clientname}
        </a>
        {if $contactid}
            (<a href="clientscontacts.php?userid={$userid}&contactid={$contactid}"{if $clientgroupcolour} style="background-color:{$clientgroupcolour}"{/if} target="_blank">{$contactname}</a>)
        {/if}
    {else}
        <a href="{$SCRIPT_NAME}?email={$email|urlencode}">{$name}</a><br />
        {$email}
    {/if}
</div>

<span class="ticketheader">{$_ADMINLANG.support.department}</span>
<div class="ticketinfo">
<input type="hidden" id="currentdeptid" value="{$deptid}" />
<select id="deptid" data-update-type="deptid" class="form-control input-sm sidebar-ticket-ajax">
{foreach from=$departments item=department}
<option value="{$department.id}"{if $department.id eq $deptid} selected{/if}>{$department.name}</option>
{/foreach}
</select>
</div>

<span class="ticketheader">{$_ADMINLANG.support.assignedto}</span>
<div class="ticketinfo">
<input type="hidden" id="currentflagto" value="{$flag}" />
<select id="flagto" data-update-type="flagto" class="form-control input-sm select-assignto sidebar-ticket-ajax">
<option value="0">{$_ADMINLANG.global.none}</option>
{foreach from=$staff item=staffmember}
<option value="{$staffmember.id}"{if $staffmember.id eq $flag} selected{/if}>{$staffmember.name}</option>
{/foreach}
</select> <a href="#" onclick="$('#flagto').val({$adminid});$('#flagto').trigger('change');return false">{$_ADMINLANG.support.me}</a>
</div>

<span class="ticketheader">{$_ADMINLANG.support.priority}</span>
<div class="ticketinfo">
<input type="hidden" id="currentpriority" value="{$priority}" />
<select id="priority" data-update-type="priority" class="form-control input-sm sidebar-ticket-ajax">
<option value="High"{if $priority eq "High"} selected{/if}>{$_ADMINLANG.status.high}</option>
<option value="Medium"{if $priority eq "Medium"} selected{/if}>{$_ADMINLANG.status.medium}</option>
<option value="Low"{if $priority eq "Low"} selected{/if}>{$_ADMINLANG.status.low}</option>
</select>
</div>

<span class="ticketheader">{$_ADMINLANG.support.staffparticipants}</span>
<div class="ticketinfo smallfont">
{foreach from=$staffinvolved item=staffname}
{$staffname}<br />
{foreachelse}
No Replies Yet
{/foreach}
</div>

<span class="ticketheader">{$_ADMINLANG.support.tags}</span>
<div class="ticketinfo">
    <input id="ticketTags" value="{$tags|implode:','}" class="selectize-tags" placeholder="{lang key='support.addTag'}" />
</div>

<div class="watch-ticket">
    {if $watchingTicket}
        <button class="btn btn-danger btn-block btn-sm" id="watch-ticket" type="button" data-admin-full-name="{$adminFullName}" data-admin-id="{$adminid}" data-ticket-id="{$ticketid}" data-type="unwatch">
            {lang key="support.unwatchTicket"}
        </button>
    {else}
        <button class="btn btn-info btn-block btn-sm" id="watch-ticket" type="button" data-admin-full-name="{$adminFullName}" data-admin-id="{$adminid}" data-ticket-id="{$ticketid}" data-type="watch">
            {lang key="support.watchTicket"}
        </button>
    {/if}
</div>

<span class="header">
    <img src="images/icons/find.png" alt="{$_ADMINLANG.support.ticketWatchers}" width="16" height="16" class="absmiddle" /> {$_ADMINLANG.support.ticketWatchers}
</span>
<ul class="menu smallfont" id="ticketWatchers">
    {foreach $ticketWatchers as $k => $ticketWatcher}
        <li id="ticket-watcher-{$k}">{$ticketWatcher}</li>
    {/foreach}
    <li id="ticket-watcher-0"{if $ticketWatchers} class="hidden"{/if}>{$_ADMINLANG.global.none}</li>
</ul>

{else}

<span class="header"><img src="images/icons/support.png" alt="Support Center" width="16" height="16" class="absmiddle" /> {$_ADMINLANG.support.title}</span>
<ul class="menu">
    <li><a href="supportannouncements.php">{$_ADMINLANG.support.announcements}</a></li>
    <li><a href="supportdownloads.php">{$_ADMINLANG.support.downloads}</a></li>
    <li><a href="supportkb.php">{$_ADMINLANG.support.knowledgebase}</a></li>
    <li><a href="supporttickets.php?action=open">{$_ADMINLANG.support.opennewticket}</a></li>
    <li><a href="supportticketpredefinedreplies.php">{$_ADMINLANG.support.predefreplies}</a></li>
</ul>

{/if}

<span class="header"><img src="images/icons/tickets.png" alt="Filter Tickets" width="16" height="16" class="absmiddle" /> {$_ADMINLANG.support.filtertickets}</span>

<form method="post" action="supporttickets.php">
<span class="ticketheader">{$_ADMINLANG.fields.status}</span>
<select name="view" class="form-control input-sm">
    <option value="any">- Any -</option>
    <option value=""{if $ticketfilterdata.view eq ""} selected{/if}>{$_ADMINLANG.support.awaitingreply} ({$ticketsawaitingreply})</option>
    <option value="flagged"{if $ticketfilterdata.view eq "flagged"} selected{/if}>{$_ADMINLANG.support.flagged} ({$ticketsflagged})</option>
    <option value="active"{if $ticketfilterdata.view eq "active"} selected{/if}>{$_ADMINLANG.support.allactive} ({$ticketsallactive})</option>
{foreach from=$ticketstatuses item=status}
    <option value="{$status.title}"{if $status.title eq $ticketfilterdata.view} selected{/if}>{$status.title} ({$status.count})</option>
{/foreach}
</select>
<span class="ticketheader">{$_ADMINLANG.support.department}</span>
<select name="deptid" class="form-control input-sm">
    <option value="">- Any -</option>
{foreach from=$ticketdepts item=dept}
    <option value="{$dept.id}"{if $dept.id eq $ticketfilterdata.deptid} selected{/if}>{$dept.name}</option>
{/foreach}
</select>
<span class="ticketheader">{$_ADMINLANG.support.subjectmessage}</span>
<input type="text" name="subject" value="{$ticketfilterdata.subject}" class="form-control input-sm" />
<span class="ticketheader">{$_ADMINLANG.fields.email}</span>
<input type="text" name="email" value="{$ticketfilterdata.email}" class="form-control input-sm" />
<input type="submit" value="{$_ADMINLANG.global.filter}  &raquo;" class="btn btn-sm btn-block top-margin-5" />
</form>

<br />

{if $inticketlist}

<span class="header"><img src="images/icons/tickets.png" alt="Tag Cloud" width="16" height="16" class="absmiddle" /> {$_ADMINLANG.support.tagcloud}</span>

<div class="tagcloud">{$tagcloud}</div>

{/if}

{if !$inticket}

<span class="header"><img src="images/icons/networkissues.png" alt="Network Issues" width="16" height="16" class="absmiddle" /> {$_ADMINLANG.networkissues.title}</span>
<ul class="menu">
    <li><a href="networkissues.php">- {$_ADMINLANG.networkissues.open}</a></li>
    <li><a href="networkissues.php?view=scheduled">- {$_ADMINLANG.networkissues.scheduled}</a></li>
    <li><a href="networkissues.php?view=resolved">- {$_ADMINLANG.networkissues.resolved}</a></li>
    <li><a href="networkissues.php?action=manage">{$_ADMINLANG.networkissues.addnew}</a></li>
</ul>

{/if}

{elseif $sidebar eq "reports"}

<span class="header"><img src="images/icons/reports.png" class="absmiddle" width="16" height="16" /> {$_ADMINLANG.reports.title}</span>
<ul class="menu">
    {foreach from=$text_reports key=filename item=reporttitle}
        {if !in_array($filename, $denied_reports)}
            <li><a href="reports.php?report={$filename}">{$reporttitle}</a></li>
        {/if}
    {/foreach}
</ul>

{elseif $sidebar eq "utilities"}

<span class="header"><img src="images/icons/utilities.png" class="absmiddle" width="16" height="16" /> {$_ADMINLANG.utilities.title}</span>
<ul class="menu">
    {if in_array("View Module Queue", $admin_perms)}
        <li><a href="modulequeue.php">{$_ADMINLANG.utilities.moduleQueue}</a></li>
    {/if}
    <li><a href="utilitiesemailmarketer.php">{$_ADMINLANG.utilities.emailmarketer}</a></li>
    <li><a href="utilitieslinktracking.php">{$_ADMINLANG.utilities.linktracking}</a></li>
    <li><a href="calendar.php">{$_ADMINLANG.utilities.calendar}</a></li>
    <li><a href="todolist.php">{$_ADMINLANG.utilities.todolist}</a></li>
    <li><a href="whois.php">{$_ADMINLANG.utilities.whois}</a></li>
    <li><a href="utilitiesresolvercheck.php">{$_ADMINLANG.utilities.domainresolver}</a></li>
    <li><a href="systemintegrationcode.php">{$_ADMINLANG.utilities.integrationcode}</a></li>
    <li><a href="whmimport.php">{$_ADMINLANG.utilities.cpanelimport}</a></li>
    <li><a href="systemdatabase.php">{$_ADMINLANG.utilities.dbstatus}</a></li>
    <li><a href="systemcleanup.php">{$_ADMINLANG.utilities.syscleanup}</a></li>
    <li><a href="systemphpinfo.php">{$_ADMINLANG.utilities.phpinfo}</a></li>
    <li><a href="{routePath('admin-utilities-system-phpcompat')}">{$_ADMINLANG.utilities.phpcompat}</a></li>
</ul>

<span class="header"><img src="images/icons/logs.png" class="absmiddle" width="16" height="16" /> {$_ADMINLANG.utilities.logs}</span>
<ul class="menu">
    <li><a href="systemactivitylog.php">{$_ADMINLANG.utilities.activitylog}</a></li>
    <li><a href="systemadminlog.php">{$_ADMINLANG.utilities.adminlog}</a></li>
    <li><a href="systemmodulelog.php">{$_ADMINLANG.utilities.modulelog}</a></li>
    <li><a href="systememaillog.php">{$_ADMINLANG.utilities.emaillog}</a></li>
    <li><a href="systemmailimportlog.php">{$_ADMINLANG.utilities.ticketmaillog}</a></li>
    <li><a href="systemwhoislog.php">{$_ADMINLANG.utilities.whoislog}</a></li>
</ul>

{elseif $sidebar eq "addonmodules"}

{$addon_module_sidebar}

<span class="header"><img src="images/icons/addonmodules.png" class="absmiddle" width="16" height="16" /> {$_ADMINLANG.utilities.addonmodules}</span>
<ul class="menu">
    {foreach from=$addon_modules key=filename item=addontitle}
    <li><a href="addonmodules.php?module={$filename}">{$addontitle}</a></li>
    {/foreach}
</ul>

{elseif $sidebar eq "config"}

<span class="header"><img src="images/icons/config.png" class="absmiddle" width="16" height="16" /> {$_ADMINLANG.setup.config}</span>
<ul class="menu">
    <li><a href="configgeneral.php">{$_ADMINLANG.setup.general}</a></li>
    <li><a href="configauto.php">{$_ADMINLANG.setup.automation}</a></li>
    <li><a href="configapplinks.php">{$_ADMINLANG.setup.applicationLinks}</a></li>
    <li><a href="configopenid.php">{$_ADMINLANG.setup.openIdConnect}</a></li>
    <li><a href="configemailtemplates.php">{$_ADMINLANG.setup.emailtpls}</a></li>
    <li><a href="configaddonmods.php">{$_ADMINLANG.setup.addonmodules}</a></li>
    <li><a href="configclientgroups.php">{$_ADMINLANG.setup.clientgroups}</a></li>
    <li><a href="configfraud.php">{$_ADMINLANG.setup.fraud}</a></li>
</ul>

<span class="header"><img src="images/icons/admins.png" class="absmiddle" width="16" height="16" /> {$_ADMINLANG.setup.staff}</span>
<ul class="menu">
    <li><a href="configadmins.php">{$_ADMINLANG.setup.admins}</a></li>
    <li><a href="configadminroles.php">{$_ADMINLANG.setup.adminroles}</a></li>
    <li><a href="configtwofa.php">{$_ADMINLANG.setup.twofa}</a></li>
    <li><a href="configapicredentials.php">{$_ADMINLANG.setup.apicredentials}</a></li>
</ul>

<span class="header"><img src="images/icons/income.png" class="absmiddle" width="16" height="16" /> {$_ADMINLANG.setup.payments}</span>
<ul class="menu">
    <li><a href="configcurrencies.php">{$_ADMINLANG.setup.currencies}</a></li>
    <li><a href="configgateways.php">{$_ADMINLANG.setup.gateways}</a></li>
    <li><a href="configtax.php">{$_ADMINLANG.setup.tax}</a></li>
    <li><a href="configpromotions.php">{$_ADMINLANG.setup.promos}</a></li>
</ul>

<span class="header"><img src="images/icons/products.png" class="absmiddle" width="16" height="16" /> {$_ADMINLANG.setup.products}</span>
<ul class="menu">
    <li><a href="configproducts.php">{$_ADMINLANG.setup.products}</a></li>
    <li><a href="configproductoptions.php">{$_ADMINLANG.setup.configoptions}</a></li>
    <li><a href="configaddons.php">{$_ADMINLANG.setup.addons}</a></li>
    <li><a href="configbundles.php">{$_ADMINLANG.setup.bundles}</a></li>
    <li><a href="configdomains.php">{$_ADMINLANG.setup.domainpricing}</a></li>
    <li><a href="configregistrars.php">{$_ADMINLANG.setup.registrars}</a></li>
    <li><a href="configservers.php">{$_ADMINLANG.setup.servers}</a></li>
</ul>

<span class="header"><img src="images/icons/support.png" class="absmiddle" width="16" height="16" /> {$_ADMINLANG.support.title}</span>
<ul class="menu">
    <li><a href="configticketdepartments.php">{$_ADMINLANG.setup.supportdepartments}</a></li>
    <li><a href="configticketstatuses.php">{$_ADMINLANG.setup.ticketstatuses}</a></li>
    <li><a href="configticketescalations.php">{$_ADMINLANG.setup.escalationrules}</a></li>
    <li><a href="configticketspamcontrol.php">{$_ADMINLANG.setup.spam}</a></li>
</ul>

<span class="header"><img src="images/icons/configother.png" class="absmiddle" width="16" height="16" /> {$_ADMINLANG.setup.other}</span>
<ul class="menu">
    <li><a href="configcustomfields.php">{$_ADMINLANG.setup.customclientfields}</a></li>
    <li><a href="configorderstatuses.php">{$_ADMINLANG.setup.orderstatuses}</a></li>
    <li><a href="configsecurityqs.php">{$_ADMINLANG.setup.securityqs}</a></li>
    <li><a href="configbannedips.php">{$_ADMINLANG.setup.bannedips}</a></li>
    <li><a href="configbannedemails.php">{$_ADMINLANG.setup.bannedemails}</a></li>
    <li><a href="configbackups.php">{$_ADMINLANG.setup.backups}</a></li>
</ul>

{/if}

<span class="header"><img src="images/icons/search.png" alt="" width="16" height="16" class="absmiddle" /> {$_ADMINLANG.global.advancedsearch}</span>
<div class="smallfont">

<form method="get" action="search.php">
    <select name="type" id="searchtype" onchange="populate(this)" class="form-control input-sm">
      <option value="clients">Clients </option>
      <option value="orders">Orders </option>
      <option value="services">Services </option>
      <option value="domains">Domains </option>
      <option value="invoices">Invoices </option>
      <option value="tickets">Tickets </option>
    </select>
    <select name="field" id="searchfield" class="form-control input-sm">
      <option>Client ID</option>
      <option selected="selected">Client Name</option>
      <option>Company Name</option>
      <option>Email Address</option>
      <option>Address 1</option>
      <option>Address 2</option>
      <option>City</option>
      <option>State</option>
      <option>Postcode</option>
      <option>Country</option>
      <option>Phone Number</option>
      <option>CC Last Four</option>
    </select>
    <div class="input-group input-group-sm">
        <input type="text" name="q" class="form-control" />
        <div class="input-group-btn">
            <input type="submit" value="{$_ADMINLANG.global.search}" class="btn btn-default" />
        </div>
    </div>
  </form>

</div>

<br />

<span class="header"><img src="images/icons/admins.png" alt="" width="16" height="16" class="absmiddle" /> {$_ADMINLANG.global.staffonline}</span>
<div class="smallfont">{$adminsonline}</div>

<div class="controls"><a href="#" onclick="sidebarClose();return false">&laquo; Minimise Sidebar</a></div>
