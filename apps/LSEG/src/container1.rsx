<Container
  id="container1"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showBorder={false}
  showHeader={true}
>
  <Header>
    <Text
      id="containerTitle1"
      value="##### Location Account Details"
      verticalAlign="center"
    />
  </Header>
  <View id="00030" viewKey="View 1">
    <TextInput
      id="textInput1"
      iconBefore="bold/interface-search"
      label=""
      labelPosition="top"
      placeholder="Search table"
      showClear={true}
    />
    <Multiselect
      id="multiselect7"
      data="{{ getLocationData.data }}"
      emptyMessage="No options"
      label=""
      labelPosition="top"
      labels="{{ item.filter_name }}"
      overlayMaxHeight={375}
      placeholder="Select category"
      showClear={true}
      showSelectionIndicator={true}
      values="{{ item.filter_name }}"
      wrapTags={true}
    />
    <Multiselect
      id="multiselect8"
      data="{{ getLocationData.data }}"
      emptyMessage="No options"
      label=""
      labelPosition="top"
      labels="{{ item.filter_type }}"
      overlayMaxHeight={375}
      placeholder="Select type"
      showClear={true}
      showSelectionIndicator={true}
      values="{{ item.filter_type }}"
      wrapTags={true}
    />
    <Table
      id="table2"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getLocationData.data }}"
      defaultFilters={{
        0: {
          id: "9f097",
          columnId: "76d8d",
          operator: "intersects",
          value: "{{ multiselect7.value }}",
          disabled: false,
        },
        1: {
          id: "f17d5",
          columnId: "52549",
          operator: "intersects",
          value: "{{ multiselect8.value }}",
          disabled: false,
        },
      }}
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="4038e"
      searchTerm="{{ textInput1.value }}"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="4038e"
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
        id="47c05"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="location_account_id"
        label="Location account ID"
        placeholder="Enter value"
        position="center"
        size={155}
        summaryAggregationMode="none"
      />
      <Column
        id="d7da4"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="location_account_name"
        label="Location account name"
        placeholder="Enter value"
        position="center"
        size={252}
        summaryAggregationMode="none"
      />
      <Column
        id="1c7ad"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="asset_count"
        label="Asset count"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="76d8d"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="filter_name"
        label="Category"
        placeholder="Enter value"
        position="center"
        size={211}
        summaryAggregationMode="none"
      />
      <Column
        id="52549"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="filter_type"
        label="Type"
        placeholder="Select option"
        position="center"
        size={144}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="e2622"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="legacy_system"
        label="Legacy system"
        placeholder="Select option"
        position="center"
        size={160}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="3f483"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="release"
        label="Release"
        placeholder="Select option"
        position="center"
        size={173}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="b9a71"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="auto_permissioning_system"
        label="Auto permissioning system"
        placeholder="Select option"
        position="center"
        size={160}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="5f93b"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="manual_permissioning_system"
        label="Manual permissioning system"
        placeholder="Select option"
        position="center"
        size={198}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
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
          pluginId="table2"
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
          pluginId="table2"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
  </View>
</Container>
