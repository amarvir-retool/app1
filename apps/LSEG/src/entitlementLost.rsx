<Screen
  id="entitlementLost"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle={null}
  title={null}
  urlSlug={null}
  uuid="a6b3a925-c5a8-43a8-986c-a4b8f70bd329"
>
  <SqlQueryUnified
    id="getAllData"
    notificationDuration={4.5}
    query={include("../lib/getAllData.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="399b4641-787c-47b6-8d12-411163ab1704"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  >
    <Event
      event="success"
      method="trigger"
      params={{}}
      pluginId="getLatestDate"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="updateMultipleRecords"
    actionType="BULK_UPDATE_BY_KEY"
    bulkUpdatePrimaryKey="id"
    editorMode="gui"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    records="{{
  table1.selectedRows.map(row => ({
    ...row,
    user_input_valid_in_valid: userInputValidInValidInput.value,      // 👈 new value
    user_input_comments: userInputCommentsInput.value // 👈 new value
  }))
}}"
    resourceDisplayName="retool_db"
    resourceName="399b4641-787c-47b6-8d12-411163ab1704"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    tableName="lseg_example_data"
    updateSetValueDynamically={true}
  >
    <Event
      event="success"
      method="trigger"
      params={{}}
      pluginId="getAllData"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="showNotification"
      params={{
        map: {
          options: { notificationType: "info", title: "Records updated" },
        },
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="updateRecordsFromChangesInTable"
    actionType="BULK_UPDATE_BY_KEY"
    bulkUpdatePrimaryKey="id"
    editorMode="gui"
    enableTransformer={true}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    records="{{ table1.changesetArray }}"
    resourceDisplayName="retool_db"
    resourceName="399b4641-787c-47b6-8d12-411163ab1704"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    tableName="lseg_example_data"
    updateSetValueDynamically={true}
  >
    <Event
      event="success"
      method="trigger"
      params={{}}
      pluginId="getAllData"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="showNotification"
      params={{
        map: { options: { notificationType: "info", title: "Records update" } },
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <JavascriptQuery
    id="getLatestRecords"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("../lib/getLatestRecords.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <JavascriptQuery
    id="getLatestDate"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("../lib/getLatestDate.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <Include src="./modalFrame1.rsx" />
  <Include src="./modalFrame2.rsx" />
  <Include src="./sidebar1.rsx" />
  <Frame
    id="$main2"
    enableFullBleed={true}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Container
      id="tabbedContainer1"
      currentViewKey="{{ self.viewKeys[0] }}"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Tabs
          id="tabs1"
          itemMode="static"
          navigateContainer={true}
          targetContainerId="tabbedContainer1"
          value="{{ self.values[0] }}"
        >
          <Option id="00030" value="Tab 1" />
          <Option id="00031" value="Tab 2" />
          <Option id="00032" value="Tab 3" />
        </Tabs>
      </Header>
      <View id="00030" viewKey="Top 250">
        <Button
          id="button1"
          hidden="{{ table1.selectedRows.length == 0 }}"
          text="Update highlighted rows"
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
        <Table
          id="table1"
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ getAllData.data }}"
          defaultFilters={{
            0: {
              id: "fd1f4",
              columnId: "057c2",
              operator: "intersects",
              value: "{{ multiselect1.value }}",
              disabled: false,
            },
            1: {
              id: "0699e",
              columnId: "77b39",
              operator: "intersects",
              value: "{{ multiselect3.value }}",
              disabled: false,
            },
            2: {
              id: "ff74a",
              columnId: "73b19",
              operator: "intersects",
              value: "{{ multiselect4.value }}",
              disabled: false,
            },
            3: {
              id: "9b4ff",
              columnId: "b5fc7",
              operator: "intersects",
              value: "{{ multiselect6.value }}",
              disabled: false,
            },
          }}
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          enableSaveActions={true}
          groupByColumns={{}}
          primaryKeyColumnId="24e76"
          rowSelection="multiple"
          showFooter={true}
          showHeader={true}
          toolbarPosition="bottom"
        >
          <Column
            id="24e76"
            alignment="right"
            editable={false}
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            hidden="false"
            key="id"
            label="ID"
            placeholder="Enter value"
            position="center"
            size={84.796875}
          />
          <Column
            id="057c2"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="depermission_date"
            label="Depermission date"
            placeholder="Enter value"
            position="center"
            size={160.109375}
          />
          <Column
            id="2e079"
            alignment="left"
            editable={true}
            format="boolean"
            groupAggregationMode="none"
            key="user_input_valid_in_valid"
            label="User input valid in valid"
            placeholder="Enter value"
            position="center"
            size={164.28125}
          />
          <Column
            id="494a1"
            alignment="left"
            editable={true}
            format="string"
            groupAggregationMode="none"
            key="user_input_comments"
            label="User input comments"
            placeholder="Enter value"
            position="center"
            size={160.140625}
          />
          <Column
            id="77b39"
            alignment="left"
            format="string"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="account_name"
            label="Account name"
            placeholder="Enter value"
            position="center"
            size={139.609375}
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="73b19"
            alignment="left"
            format="link"
            formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
            groupAggregationMode="none"
            key="search_user_id"
            label="Search user ID"
            position="center"
            size={288.703125}
          />
          <Column
            id="24d2e"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="uuid"
            label="UUID"
            placeholder="Enter value"
            position="center"
            size={148.59375}
          />
          <Column
            id="b5fc7"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="bre_comments"
            label="Bre comments"
            placeholder="Enter value"
            position="center"
            size={128.6875}
          />
          <Column
            id="b9719"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="product_id"
            label="Product ID"
            placeholder="Enter value"
            position="center"
            size={89.6875}
          />
          <Column
            id="d677d"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="subscriber_cid"
            label="Subscriber cid"
            placeholder="Enter value"
            position="center"
            size={139.625}
          />
          <Column
            id="eaf60"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="location_cid"
            label="Location cid"
            placeholder="Enter value"
            position="center"
            size={85.140625}
          />
          <Column
            id="cf4e5"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="free_trial_indicator"
            label="Free trial indicator"
            placeholder="Select option"
            position="center"
            size={150.796875}
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="d9fb9"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="free_trial_end_date"
            label="Free trial end date"
            placeholder="Enter value"
            position="center"
            size={173.578125}
          />
          <Column
            id="182bc"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="product_name"
            label="Product name"
            placeholder="Select option"
            position="center"
            size={152.109375}
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="c4d76"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="permission_date"
            label="Permission date"
            placeholder="Enter value"
            position="center"
            size={154.734375}
          />
          <Column
            id="3d42a"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="permission_order_id"
            label="Permission order ID"
            placeholder="Enter value"
            position="center"
            size={155.734375}
          />
          <Column
            id="0ad23"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="depermission_order_id"
            label="Depermission order ID"
            placeholder="Enter value"
            position="center"
            size={142.109375}
          />
          <Column
            id="f4962"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="insert_timestamp"
            label="Insert timestamp"
            placeholder="Enter value"
            position="center"
            size={111.84375}
          />
          <Column
            id="19128"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="update_timestamp"
            label="Update timestamp"
            placeholder="Enter value"
            position="center"
            size={120.859375}
          />
          <Column
            id="356fc"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="hashkey"
            label="Hashkey"
            placeholder="Enter value"
            position="center"
            size={64.734375}
          />
          <Column
            id="b1a17"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="user_source"
            label="User source"
            placeholder="Enter value"
            position="center"
            size={84.359375}
          />
          <Column
            id="55a0a"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="parent_product_id"
            label="Parent product ID"
            placeholder="Enter value"
            position="center"
            size={115.78125}
          />
          <Column
            id="2738c"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="permission_fulfilment_date"
            label="Permission fulfilment date"
            placeholder="Enter value"
            position="center"
            size={163.078125}
          />
          <Column
            id="0ae04"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="permission_fullposition_date"
            label="Permission fullposition date"
            placeholder="Enter value"
            position="center"
            size={172.078125}
          />
          <Column
            id="aa3af"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="depermission_fulfilment_date"
            label="Depermission fulfilment date"
            placeholder="Enter value"
            position="center"
            size={178.453125}
          />
          <Column
            id="3cea7"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="depermission_fullposition_date"
            label="Depermission fullposition date"
            placeholder="Enter value"
            position="center"
            size={187.453125}
          />
          <Column
            id="c6d49"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="asset_integration_id"
            label="Asset integration ID"
            placeholder="Enter value"
            position="center"
            size={127.640625}
          />
          <Column
            id="ff1de"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="product_mapping_name"
            label="Product mapping name"
            placeholder="Select option"
            position="center"
            size={147.484375}
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="cc5e8"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="deployment_and_network"
            label="Deployment and network"
            placeholder="Select option"
            position="center"
            size={199.234375}
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="91896"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="ftl_completed_on"
            label="Ftl completed on"
            placeholder="Enter value"
            position="center"
            size={141.484375}
          />
          <Column
            id="39826"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="welcome_email_sent_date"
            label="Welcome email sent date"
            placeholder="Enter value"
            position="center"
            size={180.046875}
          />
          <Column
            id="b236f"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="uuid_1"
            label="UUID 1"
            placeholder="Enter value"
            position="center"
            size={134.546875}
          />
          <Column
            id="bbc01"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="location_account_id"
            label="Location account ID"
            placeholder="Enter value"
            position="center"
            size={166}
          />
          <Column
            id="a6fde"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="first_name"
            label="First name"
            placeholder="Enter value"
            position="center"
            size={136.578125}
          />
          <Column
            id="4464d"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="last_name"
            label="Last name"
            placeholder="Enter value"
            position="center"
            size={137.734375}
          />
          <Column
            id="bb45c"
            alignment="left"
            format="datetime"
            groupAggregationMode="none"
            key="last_updated_by_aaa"
            label="Last updated by aaa"
            placeholder="Enter value"
            position="center"
            size={145.703125}
          />
          <Column
            id="85504"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="account_segment"
            label="Account segment"
            placeholder="Enter value"
            position="center"
            size={148.78125}
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
          <ToolbarButton
            id="35a30"
            icon="bold/interface-add-1"
            label="Add Row"
            type="addRow"
          />
          <Event
            event="save"
            method="trigger"
            params={{
              map: {
                options: {
                  object: {
                    onSuccess: null,
                    onFailure: null,
                    additionalScope: null,
                  },
                },
              },
            }}
            pluginId="updateRecordsFromChangesInTable"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Table>
      </View>
      <View id="00031" viewKey="Top 50" />
      <View id="00032" viewKey="Universe" />
    </Container>
  </Frame>
</Screen>
