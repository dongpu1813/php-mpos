        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="{$smarty.server.SCRIPT_NAME}">{$GLOBAL.website.name}</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
				{if $smarty.session.AUTHENTICATED|default:"0" == 1 && $GLOBAL.lastnotifications|@count != 0}
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-bell fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-alerts">
                    

{section notification $GLOBAL.lastnotifications}
                        <li>
                            <a href="#">
                                <div>
                                    {if $GLOBAL.lastnotifications[notification].type == new_block}<i class="fa fa-th-large fa-fw"></i> New Block
                                    {else if $GLOBAL.lastnotifications[notification].type == auto_payout}<i class="fa fa-money fa-fw"></i> Auto Payout
                                    {else if $GLOBAL.lastnotifications[notification].type == payout}<i class="fa fa-money fa-fw"></i> Manual Payout
                                    {else if $GLOBAL.lastnotifications[notification].type == idle_worker}<i class="fa fa-desktop fa-fw"></i> IDLE Worker
                                    {else if $GLOBAL.lastnotifications[notification].type == manual_payout}<i class="fa fa-money fa-fw"></i> Manual Payout
                                    {else if $GLOBAL.lastnotifications[notification].type == success_login}<i class="fa fa-sign-in fa-fw"></i> Successful Login
                                    {/if}
                                    <span class="pull-right text-muted small">{$GLOBAL.lastnotifications[notification].time|relative_date}</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
{/section}

                        <li>
                            <a class="text-center" href="{$smarty.server.SCRIPT_NAME}?page=account&action=notifications">
                                <strong>See All Notifications</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-alerts -->
                </li>
                {/if}
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i> {if $GLOBAL.userdata.username|default}{$smarty.session.USERDATA.username|escape}{else}Guest{/if} <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                    	{if $smarty.session.AUTHENTICATED|default:"0" == 1}
                        <li><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=edit"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        <li><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=workers"><i class="fa fa-desktop fa-fw"></i> Workers</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="{$smarty.server.SCRIPT_NAME}?page=logout"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                        {else}
                        <li><a href="{$smarty.server.SCRIPT_NAME}?page=login"><i class="fa fa-sign-in fa-fw"></i> Login</a>
                        <li><a href="{$smarty.server.SCRIPT_NAME}?page=register"><i class="fa fa-pencil fa-fw"></i> Sign Up</a>
                        </li>
                        {/if}
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

        </nav>
        <!-- /.navbar-static-top -->