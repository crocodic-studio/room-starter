<?xml version="1.0"?>
<globals>
 <#include "root://gradle-projects/common/globals.xml.ftl" />
 <#include "root://gradle-projects/common/globals_android_module.xml.ftl" />

 <global id="resOut" value="${resDir}" />
 <global id="valuesOut" value="${resDir}/values/" />
 <global id="srcOut" value="${srcDir}/${slashedPackageName(packageName)}" />
 <global id="manifestOut" value="${manifestDir}" />
</globals>
