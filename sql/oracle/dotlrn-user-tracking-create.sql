

declare
	v_impl_id acs_sc_impls.impl_id%TYPE;
	v_impl_alias_id acs_sc_impl_aliases.impl_id%TYPE;
begin

-- create the implementation
	v_impl_id := acs_sc_impl.new (
                impl_contract_name	=> 'dotlrn_applet',
                impl_name			=> 'dotlrn_user_tracking',
				impl_pretty_name	=> 'User Tracking applet',
                impl_owner_name		=> 'dotlrn_user_tracking'
	);

-- add all the hooks

-- GetPrettyName
	v_impl_alias_id := acs_sc_impl_alias.new (
               impl_contract_name	=> 'dotlrn_applet',
               impl_name			=> 'dotlrn_user_tracking',
               impl_operation_name	=> 'GetPrettyName',
               impl_alias			=> 'dotlrn_user_tracking::get_pretty_name',
               impl_pl				=> 'TCL'
	);

-- AddApplet
	v_impl_alias_id := acs_sc_impl_alias.new (
               impl_contract_name	=> 'dotlrn_applet',
               impl_name			=> 'dotlrn_user_tracking',
               impl_operation_name	=> 'AddApplet',
               impl_alias			=> 'dotlrn_user_tracking::add_applet',
               impl_pl				=> 'TCL'
	);

-- RemoveApplet
	v_impl_alias_id := acs_sc_impl_alias.new (
               impl_contract_name	=> 'dotlrn_applet',
               impl_name			=> 'dotlrn_user_tracking',
               impl_operation_name	=> 'RemoveApplet',
               impl_alias			=> 'dotlrn_user_tracking::remove_applet',
               impl_pl				=> 'TCL'
	);

-- AddAppletToCommunity
	v_impl_alias_id := acs_sc_impl_alias.new (
               impl_contract_name	=> 'dotlrn_applet',
               impl_name			=> 'dotlrn_user_tracking',
               impl_operation_name	=> 'AddAppletToCommunity',
               impl_alias			=> 'dotlrn_user_tracking::add_applet_to_community',
               impl_pl				=> 'TCL'
	);

-- RemoveAppletFromCommunity
	v_impl_alias_id := acs_sc_impl_alias.new (
               impl_contract_name	=> 'dotlrn_applet',
               impl_name			=> 'dotlrn_user_tracking',
               impl_operation_name	=> 'RemoveAppletFromCommunity',
               impl_alias			=> 'dotlrn_user_tracking::remove_applet_from_community',
               impl_pl				=> 'TCL'
	);

-- AddUser
	v_impl_alias_id := acs_sc_impl_alias.new (
               impl_contract_name	=> 'dotlrn_applet',
               impl_name			=> 'dotlrn_user_tracking',
               impl_operation_name	=> 'AddUser',
               impl_alias			=> 'dotlrn_user_tracking::add_user',
               impl_pl				=> 'TCL'
	);

-- RemoveUser
	v_impl_alias_id := acs_sc_impl_alias.new (
               impl_contract_name	=> 'dotlrn_applet',
               impl_name			=> 'dotlrn_user_tracking',
               impl_operation_name	=> 'RemoveUser',
               impl_alias			=> 'dotlrn_user_tracking::remove_user',
               impl_pl				=> 'TCL'
	);

-- AddUserToCommunity
	v_impl_alias_id := acs_sc_impl_alias.new (
               impl_contract_name	=> 'dotlrn_applet',
               impl_name			=> 'dotlrn_user_tracking',
               impl_operation_name	=> 'AddUserToCommunity',
               impl_alias			=> 'dotlrn_user_tracking::add_user_to_community',
               impl_pl				=> 'TCL'
	);

-- RemoveUserFromCommunity
	v_impl_alias_id := acs_sc_impl_alias.new (
               impl_contract_name	=> 'dotlrn_applet',
               impl_name			=> 'dotlrn_user_tracking',
               impl_operation_name	=> 'RemoveUserFromCommunity',
               impl_alias			=> 'dotlrn_user_tracking::remove_user_from_community',
               impl_pl				=> 'TCL'
	);

-- AddPortlet
	v_impl_alias_id := acs_sc_impl_alias.new (
        impl_contract_name	=> 'dotlrn_applet',
        impl_name			=> 'dotlrn_user_tracking',
        impl_operation_name	=> 'AddPortlet',
        impl_alias			=> 'dotlrn_user_tracking::add_portlet',
        impl_pl				=> 'TCL'
    );

-- RemovePortlet
	v_impl_alias_id := acs_sc_impl_alias.new (
        impl_contract_name	=> 'dotlrn_applet',
        impl_name			=> 'dotlrn_user_tracking',
        impl_operation_name	=> 'RemovePortlet',
        impl_alias			=> 'dotlrn_user_tracking::remove_portlet',
        impl_pl				=> 'TCL'
	);

-- Clone
	v_impl_alias_id := acs_sc_impl_alias.new (
        impl_contract_name	=> 'dotlrn_applet',
        impl_name			=> 'dotlrn_user_tracking',
        impl_operation_name	=> 'Clone',
        impl_alias			=> 'dotlrn_user_tracking::clone',
        impl_pl				=> 'TCL'
	);

	v_impl_alias_id := acs_sc_impl_alias.new (
        impl_contract_name	=> 'dotlrn_applet',
        impl_name			=> 'dotlrn_user_tracking',
        impl_operation_name	=> 'ChangeEventHandler',
        impl_alias			=> 'dotlrn_user_tracking::change_event_handler',
        impl_pl				=> 'TCL'
	);

-- Add the binding
	acs_sc_binding.new (
            contract_name 	=> 'dotlrn_applet',
            impl_name		=> 'dotlrn_user_tracking'
	);
end;
/
show errors
