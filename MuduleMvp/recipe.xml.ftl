<?xml version="1.0"?>
<recipe>

	<#if generateLayout>
		<#include "../common/recipe_simple.xml.ftl" />
		<#if isActivity>
			<open file="${escapeXmlAttribute(resOut)}/layout/${layoutName01}.xml" />
		<#else>
			<open file="${escapeXmlAttribute(resOut)}/layout/${layoutName02}.xml" />
		</#if>
	</#if>
	<#if isActivity>
		<#include "../common/recipe_manifest.xml.ftl" />
		<instantiate from="root/src/app_package/SimpleActivity.java.ftl"
					   to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
	<#else>
		<instantiate from="root/src/app_package/SimpleFragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
	</#if>    

    <instantiate from="root/src/app_package/SimpleMvpPresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${mvpPresenterName}.java" />

    <instantiate from="root/src/app_package/SimpleMvpView.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${mvpViewName}.java" />

    <instantiate from="root/src/app_package/SimplePresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${presenterName}.java" />


    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
</recipe>
