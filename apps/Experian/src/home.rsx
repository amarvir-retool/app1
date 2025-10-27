<Screen
  id="home"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={0}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
  uuid="b4aaf740-9f95-48df-8c84-3188f57918fb"
>
  <SqlQueryUnified
    id="getAllInfraData"
    query={include("../lib/getAllInfraData.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="399b4641-787c-47b6-8d12-411163ab1704"
    warningCodes={[]}
  />
  <GraphQLQuery
    id="retry"
    notificationDuration={4.5}
    resourceName="GraphQL-WithoutResource"
    showSuccessToaster={false}
  />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    type="main"
  >
    <TextInput
      id="textInput1"
      label="Search"
      labelPosition="top"
      placeholder="Enter value"
    />
    <Select
      id="select1"
      data="{{ getAllInfraData.data }}"
      emptyMessage="No options"
      labelPosition="top"
      labels="{{ item.region }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{ item.region }}"
    />
    <Table
      id="table1"
      actionsOverflowPosition={1}
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getAllInfraData.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      groupByColumns={{}}
      overflowType="pagination"
      primaryKeyColumnId="c2848"
      rowHeight="small"
      searchTerm="{{ textInput1.value }}"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="c2848"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="2595c"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="server_id"
        label="Server ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="75ae2"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="server_name"
        label="Server name"
        placeholder="Enter value"
        position="center"
        size={193}
        summaryAggregationMode="none"
      />
      <Column
        id="914f6"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="region"
        label="Region"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="eddd4"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="availability_zone"
        label="Availability zone"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="acd46"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="environment"
        label="Environment"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="4f392"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="instance_type"
        label="Instance type"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="827c4"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="status"
        label="Status"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="1f404"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="percent"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="average"
        key="cpu_usage_percent"
        label="Cpu usage percent"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="ba3f1"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="percent"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="average"
        key="memory_usage_percent"
        label="Memory usage percent"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="243fc"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="percent"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="average"
        key="disk_usage_percent"
        label="Disk usage percent"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="1096c"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="percent"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="average"
        key="network_in_mbps"
        label="Network in mbps"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="2c3bb"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="percent"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="average"
        key="network_out_mbps"
        label="Network out mbps"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="ce3d9"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="percent"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="average"
        key="uptime_days"
        label="Uptime days"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="11af1"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="percent"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="average"
        key="last_reboot"
        label="Last reboot"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="859f3"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="active_connections"
        label="Active connections"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="e78a5"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="requests_per_min"
        label="Requests per min"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="62e06"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="percent"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="average"
        key="error_rate_percent"
        label="Error rate percent"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="31d41"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="percent"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="average"
        key="cost_per_day_usd"
        label="Cost per day usd"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Action
        id="bafbc"
        icon="bold/interface-arrows-turn-backward-alternate"
        label="Retry"
      >
        <Event
          event="clickAction"
          method="trigger"
          params={{}}
          pluginId="retry"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Action>
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="table1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="table1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <Chart
      id="barChart1"
      barGap={0.4}
      barMode="group"
      legendPosition="none"
      selectedPoints="[]"
      stackedBarTotalsDataLabelPosition="none"
      title={null}
      xAxisRangeMax=""
      xAxisRangeMin=""
      xAxisShowTickLabels={true}
      xAxisTickFormatMode="gui"
      xAxisTitleStandoff={20}
      yAxis2LineWidth={1}
      yAxis2RangeMax=""
      yAxis2RangeMin=""
      yAxis2ShowTickLabels={true}
      yAxis2TickFormatMode="gui"
      yAxis2TitleStandoff={20}
      yAxisRangeMax=""
      yAxisRangeMin=""
      yAxisShowTickLabels={true}
      yAxisTickFormatMode="gui"
      yAxisTitleStandoff={20}
    >
      <Series
        id="0"
        aggregationType="sum"
        colorArray={{ array: ["{{ theme.primary }}"] }}
        colorArrayDropDown={{ array: ["{{ theme.primary }}"] }}
        colorInputMode="colorArrayDropDown"
        connectorLineColor="#000000"
        dataLabelPosition="none"
        datasource="{{ getAllInfraData.data }}"
        datasourceMode="source"
        decreasingBorderColor="{{ theme.danger }}"
        decreasingColor="{{ theme.danger }}"
        filteredGroups={null}
        filteredGroupsMode="source"
        gradientColorArray={{
          array: [
            { array: ["0.0", "{{ theme.success }}"] },
            { array: ["1.0", "{{ theme.primary }}"] },
          ],
        }}
        groupBy={{ array: [] }}
        groupByDropdownType="source"
        groupByStyles={{}}
        hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
        hoverTemplateMode="source"
        increasingBorderColor="{{ theme.success }}"
        increasingColor="{{ theme.success }}"
        lineColor="{{ theme.primary }}"
        lineDash="solid"
        lineShape="linear"
        lineUnderFillMode="none"
        lineWidth={2}
        markerBorderColor={null}
        markerBorderWidth={0}
        markerColor="{{ theme.primary }}"
        markerSize={6}
        markerSymbol="circle"
        name="Getallinfradata - cpu_usage_percent"
        showMarkers={false}
        textTemplate={null}
        textTemplateMode="manual"
        type="bar"
        waterfallBase={0}
        waterfallMeasures={null}
        waterfallMeasuresMode="source"
        xData="{{ getAllInfraData.data.server_id }}"
        xDataMode="source"
        yAxis="y"
        yData="{{ getAllInfraData.data.cpu_usage_percent }}"
        yDataMode="source"
        zData={null}
        zDataMode="manual"
      />
    </Chart>
    <Chart
      id="pieChart1"
      chartType="pie"
      colorArray={[
        "#11B5AE",
        "#4046CA",
        "#F68512",
        "#DE3C82",
        "#7E84FA",
        "#72E06A",
      ]}
      colorArrayDropDown={[
        "#11B5AE",
        "#4046CA",
        "#F68512",
        "#DE3C82",
        "#7E84FA",
        "#72E06A",
      ]}
      colorInputMode="colorArrayDropDown"
      datasource="{{ getAllInfraData.data }}"
      datasourceMode="source"
      gradientColorArray={[
        ["0.0", "{{ theme.canvas }}"],
        ["1.0", "{{ theme.primary }}"],
      ]}
      hoverTemplate="%{label}<br>%{value}<br>%{percent}<extra></extra>"
      hoverTemplateMode="source"
      labelData="{{ getAllInfraData.data.server_id }}"
      labelDataMode="source"
      legendPosition="none"
      lineColor="{{ theme.surfacePrimary }}"
      lineWidth={2}
      pieDataHole={0.4}
      selectedPoints="[]"
      textTemplateMode="source"
      textTemplatePosition="outside"
      title={null}
      valueData="{{ getAllInfraData.data.cpu_usage_percent }}"
      valueDataMode="source"
    />
  </Frame>
</Screen>
