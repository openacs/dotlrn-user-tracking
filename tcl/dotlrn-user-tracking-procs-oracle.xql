<?xml version="1.0"?>

<queryset>

  <rdbms><type>oracle</type><version>8.1.6</version></rdbms>

  <fullquery name="dotlrn_user_tracking::clone.call_user_tracking_clone">
	<querytext>
	  select user_tracking.clone ( 
	    :old_package_id,
	    :new_package_id
      );
	</querytext>
  </fullquery>

</queryset>