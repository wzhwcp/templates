<?xml version="1.0"?>
<recipe>
<#include "../common/recipe_manifest.xml.ftl" />

<#if generateLayout>
    <#include "../common/recipe_simple.xml.ftl" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
	
	</#if>

    <instantiate from="root/src/app_package/SimpleActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

    <instantiate from="root/src/app_package/SimpleMvpPresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${mvpPresenterName}.java" />

    <instantiate from="root/src/app_package/SimpleMvpView.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${mvpViewName}.java" />

    <instantiate from="root/src/app_package/SimplePresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${presenterName}.java" />


    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
</recipe>
