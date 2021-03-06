<?xml version="1.0"?>

<queryset>

<fullquery name="dotlrn_user_tracking::clone.call_user_tracking_clone">
  <querytext>
    select user_tracking__clone ( 
        :old_package_id,
        :new_package_id
      );
  </querytext>
</fullquery>

<fullquery name="dotlrn_user_tracking::remove_applet.delete_applet_from_communities">
  <querytext>

	delete from dotlrn_community_applets where applet_id = :applet_id
    
  </querytext>
</fullquery>

<fullquery name="dotlrn_user_tracking::remove_applet.delete_applet">
  <querytext>

	delete from dotlrn_applets where applet_id = :applet_id
    
  </querytext>
</fullquery>


</queryset>
