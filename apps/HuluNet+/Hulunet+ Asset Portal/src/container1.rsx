<Container
  id="container1"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  style={{ map: { background: "canvas" } }}
>
  <Header>
    <Text
      id="containerTitle1"
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="00030" viewKey="View 1">
    <Button id="button17" text="Button" />
    <Select
      id="filterAssetsTable"
      data="{{ getAllAssets.data }}"
      emptyMessage="No options"
      label="Filter by media type"
      labelPosition="top"
      labels="{{ item.type }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showClear={true}
      showSelectionIndicator={true}
      value=""
      values="{{ item.type}}"
    />
    <Container
      id="container6"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showBorder={false}
      style={{ map: { background: "canvas" } }}
    >
      <Header>
        <Text
          id="containerTitle7"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Button id="button1" heightType="auto" hidden="" text="New order">
          <Event
            event="click"
            method="show"
            params={{}}
            pluginId="modalNewAssetOrder"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="click"
            method="trigger"
            params={{}}
            pluginId="getLatestOrderID"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </View>
    </Container>
    <TextInput
      id="searchAssetsTable"
      iconBefore="bold/interface-search"
      label=""
      labelPosition="top"
      placeholder="search"
      style={{}}
    />
    <Include src="./selectedAssetDetails.rsx" />
    <Table
      id="assetsTable"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getAllAssets.data }}"
      defaultFilters={{
        0: {
          id: "ccb56",
          columnId: "8e51c",
          operator: "includes",
          value: "{{ filterAssetsTable.value }}",
          disabled: false,
        },
      }}
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      groupByColumns={{}}
      heightType="auto"
      overflowType="pagination"
      primaryKeyColumnId="b37cc"
      rowHeight="medium"
      searchTerm="{{ searchAssetsTable.value }}"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      style={{ background: "canvas" }}
      templatePageSize="40"
      toolbarPosition="bottom"
    >
      <Column
        id="b37cc"
        alignment="left"
        editable={false}
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={35.90625}
      />
      <Column
        id="636c8"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="name"
        label="Name"
        placeholder="Enter value"
        position="center"
        size={204.09375}
      />
      <Column
        id="8e51c"
        alignment="left"
        editable="false"
        format="tag"
        formatOptions={{ automaticColors: true, color: "" }}
        groupAggregationMode="none"
        key="type"
        label="Media Type"
        placeholder="Select option"
        position="center"
        size={166.46875}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="aa6cc"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="description"
        label="Description"
        placeholder="Enter value"
        position="center"
        size={466}
      />
      <Column
        id="04283"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="false"
        key="language"
        label="Language"
        placeholder="Select option"
        position="center"
        size={86.625}
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="28b78"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="false"
        key="country"
        label="Country"
        placeholder="Select option"
        position="center"
        size={83.03125}
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="0e4bb"
        alignment="left"
        editableOptions={{ showStepper: true }}
        format="currency"
        formatOptions={{
          currency: "USD",
          currencySign: "standard",
          notation: "standard",
          showSeparators: true,
          currencyDisplay: "symbol",
        }}
        groupAggregationMode="sum"
        hidden="false"
        key="spend"
        label="Spend"
        placeholder="Enter value"
        position="center"
        size={97.90625}
      />
      <Column
        id="741e6"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
        groupAggregationMode="none"
        hidden="true"
        key="media"
        label="Media"
        position="center"
        size={466}
      >
        <Event
          event="clickCell"
          method="openUrl"
          params={{ map: { url: "{{ item }}" } }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="65a48"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="owner"
        label="Owner"
        placeholder="Select option"
        position="center"
        size={100}
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
      />
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      />
    </Table>
  </View>
</Container>
