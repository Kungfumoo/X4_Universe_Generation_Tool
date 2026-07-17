<?xml version="1.0" encoding="utf-8"?>
<diff>
  <remove sel="/gamestarts"/>
  <add sel="/">
    <gamestarts xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="gamestarts.xsd">
      <groups>

      </groups>

      <defaults>
        <player>
          <featureunlocks>
            <entry feature="x4ep1_map" unlock="true" />
            <entry feature="x4ep1_missionmanagement" unlock="true" />
            <entry feature="x4ep1_guidance" unlock="true" />
            <entry feature="x4ep1_encyclopedia" unlock="true" />
            <entry feature="x4ep1_gravidar" unlock="true" />
          </featureunlocks>
        </player>
      </defaults>

      <#list galaxy.factionStarts as factionStart>
      <gamestart id="${galaxy.galaxyPrefix}_galaxy_main_${factionStart?index}" name="${factionStart.name!"Generic"}" description="${factionStart.description!""}" image="gamestart_1">
        <location galaxy="${galaxy.galaxyPrefix}_galaxy_macro" zone="${galaxy.galaxyPrefix}_zone001_cluster${factionStart.clusterId?lower_case}_sector001_macro">
          <position x="1000" y="0" z="1000"/>
          <rotation yaw="${factionStart.yaw}" pitch="${factionStart.pitch}" roll="${factionStart.roll}"/>
        </location>
        <player macro="character_player_${factionStart.faction.getPlayerStartMacro()}_macro" money="${factionStart.credits?c}" name="${factionStart.playerName}">
          <ship macro="ship_ter_s_xperimental_01_a_macro">
            <loadout>
              <macros>
                <engine macro="engine_ter_s_virtual_01_mk1_macro" path="../con_engine_02"/>
                <engine macro="engine_ter_s_virtual_01_mk1_macro" path="../con_engine_01"/>
              </macros>
              <ammunition>
                <ammunition macro="eq_arg_satellite_01_macro" exact="10"/>
                <ammunition macro="env_deco_nav_beacon_t1_macro" exact="5"/>
                <ammunition macro="eq_arg_resourceprobe_01_macro" exact="5"/>
              </ammunition>
              <software>
                <software ware="software_flightassistmk1"/>
                <software ware="software_scannerlongrangemk1"/>
                <software ware="software_scannerobjectmk1"/>
              </software>
              <virtualmacros>
                <thruster macro="thruster_gen_s_combat_01_mk3_macro"/>
              </virtualmacros>
              <crew>
                <crew role="service" exact="0"/>
                <crew role="marine" exact="0"/>
              </crew>
            </loadout>
            <people people="player_terran_regular_military_crew" fillpercent="100"/>
          </ship>
          <inventory>
            <ware ware="weapon_gen_spacesuit_repairlaser_01_mk1" amount="1" />
            <ware ware="software_scannerobjectmk3" amount="1" />
          </inventory>
          <blueprints>
            <ware ware="clothingmod_0001" />
            <ware ware="clothingmod_0002" />
            <ware ware="module_arg_dock_m_01_lowtech" />
            <ware ware="module_${factionStart.faction.getRaceAbbreviation()}_pier_l_01" />
            <ware ware="module_${factionStart.faction.getRaceAbbreviation()}_stor_container_s_01" />
            <ware ware="module_${factionStart.faction.getRaceAbbreviation()}_conn_base_01" />
            <ware ware="module_${factionStart.faction.getRaceAbbreviation()}_conn_cross_01" />
            <ware ware="module_${factionStart.faction.getRaceAbbreviation()}_conn_vertical_01" />
            <ware ware="module_gen_prod_energycells_01" />
            <ware ware="module_gen_prod_water_01" />
            <ware ware="paintmod_0006"/>
            <ware ware="paintmod_0048"/>
            <ware ware="paintmod_0049"/>
            <ware ware="paintmod_0050"/>
          </blueprints>
            <research>
              <ware ware="research_radioreceiver"/>
              <ware ware="research_sensorbooster"/>
              <ware ware="research_tradeinterface"/>
              <ware ware="research_module_build"/>
              <ware ware="research_module_defence"/>
              <ware ware="research_module_dock"/>
              <ware ware="research_module_habitation"/>
              <ware ware="research_module_production"/>
              <ware ware="research_module_storage"/>
              <ware ware="research_module_venture"/>
              <ware ware="research_mod_engine_mk1"/>
              <ware ware="research_mod_engine_mk2"/>
              <ware ware="research_mod_engine_mk3"/>
              <ware ware="research_mod_shield_mk1"/>
              <ware ware="research_mod_shield_mk2"/>
              <ware ware="research_mod_shield_mk3"/>
              <ware ware="research_mod_ship_mk1"/>
              <ware ware="research_mod_ship_mk2"/>
              <ware ware="research_mod_ship_mk3"/>
              <ware ware="research_mod_weapon_mk1"/>
              <ware ware="research_mod_weapon_mk2"/>
              <ware ware="research_mod_weapon_mk3"/>
              <ware ware="research_teleportation"/>
              <ware ware="research_teleportation_range_01"/>
              <ware ware="research_teleportation_range_02"/>
              <ware ware="research_teleportation_range_03"/>
            </research>
          <theme paint="painttheme_player_01" />
        </player>
      </gamestart>
      </#list>
    </gamestarts>
  </add>
</diff>