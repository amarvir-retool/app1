<Container
  id="container1"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  margin="0"
  padding="12px"
  showBody={true}
  showBorder={false}
  showHeader={true}
>
  <Header>
    <Container
      id="group1"
      _align="center"
      _gap="0px"
      _justify="space-between"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      style={{ map: { background: "rgba(255, 255, 255, 0)" } }}
    >
      <View id="00030" viewKey="View 1">
        <IconText
          id="iconText1"
          icon="bold/interface-text-formatting-filter-2-alternate"
          text="Filter"
        />
        <Button
          id="button1"
          heightType="fill"
          iconBefore="bold/interface-arrows-round-right"
          style={{
            borderRadius: "2px",
            background: "#efc070",
            fontSize: "11px",
            fontWeight: "500",
            fontFamily: "Inter",
          }}
          text="Reset"
        >
          <Event
            event="click"
            method="clearValue"
            params={{}}
            pluginId="multiselectNNBatch"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="click"
            method="clearValue"
            params={{}}
            pluginId="multiselectCMO"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="click"
            method="clearValue"
            params={{}}
            pluginId="multiselectNNReleased"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="click"
            method="clearValue"
            params={{}}
            pluginId="date1"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="click"
            method="clearValue"
            params={{}}
            pluginId="date2"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="click"
            method="clearValue"
            params={{}}
            pluginId="multiselectSapBatchStatus"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="click"
            method="clearValue"
            params={{}}
            pluginId="multiselectMaterialName"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </View>
    </Container>
  </Header>
  <View id="00030" viewKey="View 1">
    <Button
      id="button2"
      iconBefore="bold/programming-bug-alternate"
      style={{
        borderRadius: "2px",
        background: "#efc070",
        fontSize: "11px",
        fontWeight: "500",
        fontFamily: "Inter",
      }}
      text="Report error"
    >
      <Event
        event="click"
        method="show"
        params={{}}
        pluginId="modalFrame1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Multiselect
      id="multiselectNNBatch"
      data="{{ getAllBatchData.data }}"
      emptyMessage="No options"
      label="Batch"
      labelPosition="top"
      labels="{{ item.nn_batch }}"
      overlayMaxHeight={375}
      placeholder="Select options"
      showSelectionIndicator={true}
      style={{
        sharedLabelFontSize: "labelFont",
        sharedLabelFontWeight: "labelFont",
        sharedLabelFontFamily: "labelFont",
      }}
      values="{{ item.nn_batch }}"
      wrapTags={true}
    />
    <MultiselectListbox
      id="multiselectCMO"
      data="{{ getAllBatchData.data }}"
      emptyMessage="No options"
      label="CMO Site Name"
      labelPosition="top"
      labels="{{ item.cmo_site_name }} (7)"
      showSelectionIndicator={true}
      style={{
        sharedLabelFontSize: "labelFont",
        sharedLabelFontWeight: "labelFont",
        sharedLabelFontFamily: "labelFont",
      }}
      value=""
      values="{{ item.cmo_site_name }}"
    />
    <MultiselectListbox
      id="multiselectMaterialName"
      data="{{ getAllBatchData.data }}"
      emptyMessage="No options"
      label="Material Name"
      labelPosition="top"
      labels="{{ item.material_name }} "
      showSelectionIndicator={true}
      style={{
        sharedLabelFontSize: "labelFont",
        sharedLabelFontWeight: "labelFont",
        sharedLabelFontFamily: "labelFont",
      }}
      value=""
      values="{{ item.material_name }}"
    />
    <MultiselectListbox
      id="multiselectNNReleased"
      data="{{ getAllBatchData.data }}"
      emptyMessage="No options"
      label="NN Released"
      labelPosition="top"
      labels="{{ item.nn_released }} (30)"
      showSelectionIndicator={true}
      style={{
        sharedLabelFontSize: "labelFont",
        sharedLabelFontWeight: "labelFont",
        sharedLabelFontFamily: "labelFont",
      }}
      value=""
      values="{{ item.nn_released }}"
    />
    <Text
      id="text1"
      style={{
        fontSize: "labelFont",
        fontWeight: "labelFont",
        fontFamily: "labelFont",
      }}
      value="Manufactured Date"
      verticalAlign="center"
    />
    <Chart
      id="barChart1"
      barGap="0.4"
      barMode="overlay"
      legendPosition="none"
      selectedPoints="[]"
      stackedBarTotalsDataLabelPosition="none"
      title={null}
      xAxisRangeMax=""
      xAxisRangeMin=""
      xAxisShowTickLabels={true}
      xAxisTickFormatMode="gui"
      xAxisTitleStandoff="20"
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
      yAxisTitleStandoff="20"
    >
      <Series
        id="0"
        aggregationType="sum"
        colorArray={{ array: ["{{ theme.primary }}"] }}
        colorArrayDropDown={{ array: ["{{ theme.primary }}"] }}
        colorInputMode="colorArrayDropDown"
        connectorLineColor="#000000"
        dataLabelPosition="none"
        datasource="{{ getAllBatchData.data }}"
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
        name="Getallbatchdata"
        showMarkers={false}
        textTemplate={null}
        textTemplateMode="manual"
        type="bar"
        waterfallBase={0}
        waterfallMeasures={null}
        waterfallMeasuresMode="source"
        xData="{{ getAllBatchData.data.manufacturing_date }}"
        xDataMode="source"
        yAxis="y"
        yData="{{ getAllBatchData.data.id }}"
        yDataMode="source"
        zData={null}
        zDataMode="manual"
      />
    </Chart>
    <Date
      id="date1"
      dateFormat="start"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      iconBefore="bold/interface-calendar"
      label=""
      labelPosition="top"
      showClear={true}
      value="{{ new Date() }}"
    />
    <Date
      id="date2"
      dateFormat="end"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      iconBefore="bold/interface-calendar"
      label=""
      labelPosition="top"
      showClear={true}
      value="{{ new Date() }}"
    />
    <MultiselectListbox
      id="multiselectSapBatchStatus"
      data="{{ getAllBatchData.data }}"
      emptyMessage="No options"
      label="SAP Batch Status"
      labelPosition="top"
      labels="{{ item.sap_batch_status }}"
      showSelectionIndicator={true}
      style={{
        sharedLabelFontSize: "labelFont",
        sharedLabelFontWeight: "labelFont",
        sharedLabelFontFamily: "labelFont",
      }}
      value=""
      values="{{ item.sap_batch_status }}"
    />
  </View>
</Container>
