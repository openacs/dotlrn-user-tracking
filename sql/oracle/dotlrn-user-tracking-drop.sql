

declare
	v_impl_id acs_sc_impls.impl_id%TYPE;
begin

	acs_sc_impl.del(
		impl_contract_name	=> 'dotlrn_applet',
		impl_name			=> 'dotlrn_user_tracking'
	);


-- add all the hooks

-- GetPrettyName
	v_impl_id := acs_sc_impl_alias.del (
		impl_contract_name	=> 'dotlrn_applet',
		impl_name			=> 'dotlrn_user_tracking',
		impl_operation_name	=> 'GetPrettyName'
	);

-- AddApplet
	v_impl_id := acs_sc_impl_alias.del (
		impl_contract_name	=> 'dotlrn_applet',
        impl_name			=> 'dotlrn_user_tracking',
        impl_operation_name	=> 'AddApplet'
	);

-- RemoveApplet
	v_impl_id := acs_sc_impl_alias.del (
               impl_contract_name	=> 'dotlrn_applet',
               impl_name			=> 'dotlrn_user_tracking',
               impl_operation_name	=> 'RemoveApplet'
	);

-- AddAppletToCommunity
	v_impl_id := acs_sc_impl_alias.del (
               impl_contract_name	=> 'dotlrn_applet',
               impl_name			=> 'dotlrn_user_tracking',
               impl_operation_name	=> 'AddAppletToCommunity'
	);

-- RemoveAppletFromCommunity
	v_impl_id := acs_sc_impl_alias.del (
               impl_contract_name	=> 'dotlrn_applet',
               impl_name			=> 'dotlrn_user_tracking',
               impl_operation_name	=> 'RemoveAppletFromCommunity'
	);

-- AddUser
	v_impl_id := acs_sc_impl_alias.del (
               impl_contract_name	=> 'dotlrn_applet',
               impl_name			=> 'dotlrn_user_tracking',
               impl_operation_name	=> 'AddUser'
	);

-- RemoveUser
	v_impl_id := acs_sc_impl_alias.del (
               impl_contract_name	=> 'dotlrn_applet',
               impl_name			=> 'dotlrn_user_tracking',
               impl_operation_name	=> 'RemoveUser'
	);

-- AddUserToCommunity
	v_impl_id := acs_sc_impl_alias.del (
               impl_contract_name	=> 'dotlrn_applet',
               impl_name			=> 'dotlrn_user_tracking',
               impl_operation_name	=> 'AddUserToCommunity'
	);

-- RemoveUserFromCommunity
	v_impl_id := acs_sc_impl_alias.del (
               impl_contract_name	=> 'dotlrn_applet',
               impl_name			=> 'dotlrn_user_tracking',
               impl_operation_name	=> 'RemoveUserFromCommunity'
	);

-- AddPortlet
	v_impl_id := acs_sc_impl_alias.del (
        impl_contract_name	=> 'dotlrn_applet',
        impl_name			=> 'dotlrn_user_tracking',
        impl_operation_name	=> 'AddPortlet'
    );

-- RemovePortlet
	v_impl_id := acs_sc_impl_alias.del (
        impl_contract_name	=> 'dotlrn_applet',
        impl_name			=> 'dotlrn_user_tracking',
        impl_operation_name	=> 'RemovePortlet'
	);

-- Clone
	v_impl_id := acs_sc_impl_alias.del (
        impl_contract_name	=> 'dotlrn_applet',
        impl_name			=> 'dotlrn_user_tracking',
        impl_operation_name	=> 'Clone'
	);


-- Add the binding
	acs_sc_binding.del (
            contract_name	=> 'dotlrn_applet',
            impl_name		=> 'dotlrn_user_tacking'
	);
end;
/
show errors
