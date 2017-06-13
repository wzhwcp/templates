<?xml version="1.0"?>
<globals>
	
	<#if isActivity>
		<global id="activityClass" value="${moduleClass}Activity" />
	<#else>
		<global id="activityClass" value="${moduleClass}Fragment" />
	</#if>

	<global id="mvpPresenterName" value="${moduleClass}MvpPresenter" />
	<global id="mvpViewName" value="${moduleClass}MvpView" />
	<global id="presenterName" value="${moduleClass}Presenter" />
	

    <global id="hasNoActionBar" type="boolean" value="false" />
    <global id="parentActivityClass" value="" />
	
	<#if isActivity>
		<global id="simpleLayoutName" value="${layoutName01}" />
	<#else>
		<global id="simpleLayoutName" value="${layoutName02}" />
	</#if>
	
    <global id="excludeMenu" type="boolean" value="true" />
    <global id="generateActivityTitle" type="boolean" value="false" />
    <#include "../common/common_globals.xml.ftl" />
	
 </globals>