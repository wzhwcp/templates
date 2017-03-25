<?xml version="1.0"?>
<globals>
	
	<global id="activityClass" value="${moduleClass}Activity" />
	<global id="mvpPresenterName" value="${moduleClass}MvpPresenter" />
	<global id="mvpViewName" value="${moduleClass}MvpView" />
	<global id="presenterName" value="${moduleClass}Presenter" />
	

    <global id="hasNoActionBar" type="boolean" value="false" />
    <global id="parentActivityClass" value="" />
    <global id="simpleLayoutName" value="${layoutName}" />
    <global id="excludeMenu" type="boolean" value="true" />
    <global id="generateActivityTitle" type="boolean" value="false" />
    <#include "../common/common_globals.xml.ftl" />
	
 </globals>