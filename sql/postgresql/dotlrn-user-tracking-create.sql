--  This file is part of dotLRN.
--
--  dotLRN is free software; you can redistribute it and/or modify it under the
--  terms of the GNU General Public License as published by the Free Software
--  Foundation; either version 2 of the License, or (at your option) any later
--  version.
--
--  dotLRN is distributed in the hope that it will be useful, but WITHOUT ANY
--  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
--  FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
--  details.
--
-- The UserTracking applet for dotLRN
--
-- @author David Ortega (doa@tid.es)
-- @creation-date 2004-10-25
--

-- create the implementation
select acs_sc_impl__new (
		'dotlrn_applet',
		'dotlrn_user_tracking',
		'dotlrn_user_tracking'
);

-- add all the hooks

-- GetPrettyName
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_user_tracking',
	       'GetPrettyName',
	       'dotlrn_user_tracking::get_pretty_name',
	       'TCL'
);

-- AddApplet
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_user_tracking',
	       'AddApplet',
	       'dotlrn_user_tracking::add_applet',
	       'TCL'
);

-- RemoveApplet
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_user_tracking',
	       'RemoveApplet',
	       'dotlrn_user_tracking::remove_applet',
	       'TCL'
);

-- AddAppletToCommunity
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_user_tracking',
	       'AddAppletToCommunity',
	       'dotlrn_user_tracking::add_applet_to_community',
	       'TCL'
);

-- RemoveAppletFromCommunity
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_user_tracking',
	       'RemoveAppletFromCommunity',
	       'dotlrn_user_tracking::remove_applet_from_community',
	       'TCL'
);

-- AddUser
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_user_tracking',
	       'AddUser',
	       'dotlrn_user_tracking::add_user',
	       'TCL'
);

-- RemoveUser
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_user_tracking',
	       'RemoveUser',
	       'dotlrn_user_tracking::remove_user',
	       'TCL'
);

-- AddUserToCommunity
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_user_tracking',
	       'AddUserToCommunity',
	       'dotlrn_user_tracking::add_user_to_community',
	       'TCL'
);

-- RemoveUserFromCommunity
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_user_tracking',
	       'RemoveUserFromCommunity',
	       'dotlrn_user_tracking::remove_user_from_community',
	       'TCL'
);

-- AddPortlet
select acs_sc_impl_alias__new (
        'dotlrn_applet',
        'dotlrn_user_tracking',
        'AddPortlet',
        'dotlrn_user_tracking::add_portlet',
        'TCL'
    );

-- RemovePortlet
select acs_sc_impl_alias__new (
        'dotlrn_applet',
        'dotlrn_user_tracking',
        'RemovePortlet',
        'dotlrn_user_tracking::remove_portlet',
        'TCL'
);

-- Clone
select acs_sc_impl_alias__new (
        'dotlrn_applet',
        'dotlrn_user_tracking',
        'Clone',
        'dotlrn_user_tracking::clone',
        'TCL'
);

select acs_sc_impl_alias__new (
        'dotlrn_applet',
        'dotlrn_user_tracking',
        'ChangeEventHandler',
        'dotlrn_user_tracking::change_event_handler',
        'TCL'
);

-- Add the binding
select acs_sc_binding__new (
	    'dotlrn_applet',
	    'dotlrn_user_tracking'
);
