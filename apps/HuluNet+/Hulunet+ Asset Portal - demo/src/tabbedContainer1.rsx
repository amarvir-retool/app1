<Container
  id="tabbedContainer1"
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showBorder={false}
  showHeader={true}
  showHeaderBorder={false}
  style={{ map: { background: "canvas" } }}
>
  <Header>
    <Tabs
      id="tabs"
      itemMode="static"
      navigateContainer={true}
      style={{}}
      targetContainerId="tabbedContainer1"
      value="{{ self.values[0] }}"
    >
      <Option id="00030" value="Tab 1" />
      <Option id="00031" value="Tab 2" />
      <Option id="00032" value="Tab 3" />
    </Tabs>
    <Button id="button2" loading="" text="Generate Analysis">
      <Event
        event="click"
        method="trigger"
        params={{}}
        pluginId="aiAnalysis"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="show"
        params={{}}
        pluginId="drawerFrame1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <View
    id="00030"
    icon="bold/interface-file-clipboard"
    iconPosition="left"
    viewKey="Orders over time"
  >
    <Timeline2
      id="ordersTimeline"
      _groupingConfig={{ map: { expandByDefault: true } }}
      data="{{ getAllOrders.data }}"
      eventColorByIndex={
        '{{ item.status === "Delivered" ? theme.success : theme.primary }}'
      }
      eventEndDateByIndex="{{ item.deadline }}"
      eventIdByIndex="{{ item.id }}"
      eventPropertiesByIndex=""
      eventStartDateByIndex="{{ item.date }}"
      eventTitleByIndex="{{ item.status }}"
      eventTooltipLabelByIndex=""
      metaEventData=""
      milestoneColorByIndex="{{ theme.primary }}"
      milestoneData=""
      quarterStartDay={1}
      quarterStartMonth={1}
      renderOneEventPerRow={true}
      showTodayIndicator={true}
      style={{ background: "canvas", headerBackground: "canvas" }}
      timescale={{ unit: "month", split: "date" }}
    />
  </View>
  <View
    id="00031"
    icon="bold/money-currency-dollar"
    iconPosition="left"
    viewKey="Budget spent on asset types"
  >
    <Chart
      id="budgetBarChart"
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
        aggregationType="none"
        colorArray={{ array: ["{{ theme.primary }}"] }}
        colorArrayDropDown={{ array: ["{{ theme.primary }}"] }}
        colorInputMode="colorArrayDropDown"
        connectorLineColor="#000000"
        dataLabelPosition="none"
        datasource="{{ getAllAssetsQuery.data }}"
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
        name="Spend over time"
        showMarkers={false}
        textTemplate={null}
        textTemplateMode="manual"
        type="bar"
        waterfallBase={0}
        waterfallMeasures={null}
        waterfallMeasuresMode="source"
        xData="{{ getAllAssetsQuery.data.type }}"
        xDataMode="source"
        yAxis="y"
        yData="{{ getAllAssetsQuery.data.spend }}"
        yDataMode="source"
        zData={null}
        zDataMode="manual"
      />
    </Chart>
  </View>
  <View
    id="00032"
    icon="bold/shipping-transfer-truck"
    iconPosition="left"
    viewKey="Delivery rate"
  >
    <Chart
      id="deliveryScatterChart"
      barMode="group"
      barOrientation=""
      chartType="line"
      legendPosition="none"
      selectedPoints="[]"
      stackedBarTotalsDataLabelPosition="none"
      title={null}
      xAxisLineWidth={1}
      xAxisRangeMax=""
      xAxisRangeMin=""
      xAxisShowLine={true}
      xAxisShowTickLabels={true}
      xAxisTickFormatMode="gui"
      xAxisTitleStandoff={20}
      yAxis2LineWidth={1}
      yAxis2RangeMax=""
      yAxis2RangeMin=""
      yAxis2ShowTickLabels={true}
      yAxis2TickFormatMode="gui"
      yAxis2TitleStandoff={20}
      yAxisGrid={true}
      yAxisLineWidth={1}
      yAxisRangeMax=""
      yAxisRangeMin=""
      yAxisShowTickLabels={true}
      yAxisTickFormatMode="gui"
      yAxisTitleStandoff={20}
    >
      <Series
        id="0"
        aggregationType="none"
        colorArray={{ array: [null] }}
        colorArrayDropDown={{ array: [null] }}
        colorInputMode="colorArrayDropDown"
        connectorLineColor="#000000"
        dataLabelPosition="none"
        datasource="{{ getDeliveryTime.data }}"
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
        hoverTemplateArray="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
        hoverTemplateMode="source"
        increasingBorderColor="{{ theme.success }}"
        increasingColor="{{ theme.success }}"
        lineColor="{{ theme.primary }}"
        lineDash="solid"
        lineShape="spline"
        lineUnderFillMode="gradient"
        lineWidth={2}
        markerBorderColor={null}
        markerBorderWidth={0}
        markerColor="{{ theme.primary }}"
        markerSize={6}
        markerSymbol="circle"
        name="Delivery Time"
        showMarkers={false}
        textTemplate={null}
        textTemplateMode="manual"
        type="scatter"
        waterfallBase={0}
        waterfallMeasures={null}
        waterfallMeasuresMode="source"
        xData="{{ getDeliveryTime.data.date }}"
        xDataMode="source"
        yAxis="y"
        yData="{{ getDeliveryTime.data.delivery_time }}"
        yDataMode="source"
        zData={null}
        zDataMode="manual"
      />
    </Chart>
  </View>
  <Event
    event="change"
    method="trigger"
    params={{}}
    pluginId="setChartType"
    type="datasource"
    waitMs="0"
    waitType="debounce"
  />
</Container>
