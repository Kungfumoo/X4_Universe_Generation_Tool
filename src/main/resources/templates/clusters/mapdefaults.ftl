<?xml version="1.0" encoding="utf-8"?>
<defaults xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="libraries.xsd">
<#list galaxy.clusters as cl>
  <!-- ${cl.name} -->
  <dataset macro="${galaxy.galaxyPrefix}_cluster${cl.id}_macro">
    <properties>
      <identification name="${cl.name}" description="${cl.description}" />
      <sounds>
        <music ref="${cl.music}" />
      </sounds>
      <area sunlight="${cl.sunlight}" economy="${cl.economy}" security="${cl.security}" god="${(!cl.noJobs)?c}" jobs="${(!cl.noJobs)?c}" />
    </properties>
  </dataset>
  <dataset macro="${galaxy.galaxyPrefix}_cluster${cl.id}_sector001_macro">
    <properties>
      <identification name="${cl.name}" description="${cl.description}" />
      <resourceareas>
        <#list cl.belts as belt>
          <resourcearea amount="${belt.resourceArea.amount}" ref="sphere_${belt.resourceArea.size}_${belt.resourceArea.ware}_${belt.resourceArea.volume}_${belt.resourceArea.degredationRate}" />
        </#list>
      </resourceareas>
    </properties>
  </dataset>
</#list>
</defaults>