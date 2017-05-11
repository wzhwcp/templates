<?xml version="1.0"?>
<recipe>

<#if generateLayout>
    <instantiate from="root/res/layout/simplelayout.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${simpleLayoutName}.xml" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</#if>

<instantiate from="root/res/layout/simpleItenLayout.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${recyclerViewItemLayout}.xml" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${recyclerViewItemLayout}.xml" />

<#if isActivity>
    <#include "../common/recipe_manifest.xml.ftl" />
    <instantiate from="root/src/app_package/SimpleActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
</#if>

    <instantiate from="root/src/app_package/SimpleBean.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${recyclerViewItemBean}.java" />
    <open file="${escapeXmlAttribute(srcOut)}/${recyclerViewItemBean}.java" />
    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
</recipe>
