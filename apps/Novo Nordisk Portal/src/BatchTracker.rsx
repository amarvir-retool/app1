<Screen
  id="BatchTracker"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
>
  <SqlQueryUnified
    id="getAllBatchData"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("../lib/getAllBatchData.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="399b4641-787c-47b6-8d12-411163ab1704"
    resourceTypeOverride=""
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="updateBatchRecord"
    actionType="UPDATE_BY"
    changesetIsObject={true}
    changesetObject="{{ updateBatchForm.data }}"
    editorMode="gui"
    filterBy={
      '[{"key":"id","value":"{{ batchTable.selectedRow.id }}","operation":"="}]'
    }
    notificationDuration={4.5}
    resourceDisplayName="retool_db"
    resourceName="399b4641-787c-47b6-8d12-411163ab1704"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    tableName="novo_batch_data"
    updateSetValueDynamically={true}
  >
    <Event
      event="success"
      method="showNotification"
      params={{
        map: {
          options: { notificationType: "success", title: "Updated record" },
        },
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="hide"
      params={{}}
      pluginId="modalFrame2"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{}}
      pluginId="getAllBatchData"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{}}
      pluginId="sendEmailNotification"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SMTPQuery
    id="sendEmailNotification"
    body="Hi,

Batch {{ batchTable.selectedRow.nn_batch }} with ID:{{ batchTable.selectedRow.id }} has been updated by {{ current_user.fullName }}."
    notificationDuration={4.5}
    resourceDisplayName="retool_email"
    resourceName="retool_email"
    showSuccessToaster={false}
    subject="Batch record updated"
    toEmail="amarvir@retool.com"
  />
  <WorkflowRun
    id="investigateBatch"
    notificationDuration={4.5}
    resourceName="WorkflowRun"
    showSuccessToaster={false}
    workflowId="16032474-1786-4fcb-ad91-709fb4ab3baa"
    workflowParams={include("../lib/investigateBatch.json", "string")}
    workflowRunBodyType="json"
    workflowRunExecutionType="async"
  />
  <Include src="./modalFrame1.rsx" />
  <Include src="./modalFrame2.rsx" />
  <Include src="./modalFrame3.rsx" />
  <Include src="./sidebar1.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    style={{ map: { canvas: "surfacePrimary" } }}
    type="main"
  >
    <Container
      id="tabbedContainer1"
      currentViewKey="{{ self.viewKeys[0] }}"
      enableFullBleed={true}
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fixed"
      overflowType="hidden"
      padding="12px"
      showBody={true}
      showBorder={false}
      showHeader={true}
    >
      <Header>
        <Tabs
          id="tabs1"
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
        <Container
          id="container2"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          hidden="{{ batchTable.selectedRow == null}}"
          margin="0"
          padding="0"
          showBody={true}
          showBorder={false}
        >
          <Header>
            <Text
              id="containerTitle1"
              value="#### Container title"
              verticalAlign="center"
            />
          </Header>
          <View id="00030" viewKey="View 1">
            <Button
              id="button4"
              hidden=""
              iconBefore="bold/interface-edit-pencil"
              style={{
                borderRadius: "2px",
                fontSize: "11px",
                fontWeight: "600",
                fontFamily: "Inter",
              }}
              text="Update"
            >
              <Event
                event="click"
                method="show"
                params={{}}
                pluginId="modalFrame2"
                type="widget"
                waitMs="0"
                waitType="debounce"
              />
            </Button>
            <Button
              id="button5"
              iconBefore="bold/mail-chat-bubble-oval-alternate"
              style={{
                borderRadius: "2px",
                fontSize: "11px",
                fontWeight: "500",
                fontFamily: "Inter",
              }}
              text="Investigate"
            >
              <Event
                event="click"
                method="show"
                params={{}}
                pluginId="modalFrame3"
                type="widget"
                waitMs="0"
                waitType="debounce"
              />
            </Button>
            <Button
              id="button6"
              iconBefore="bold/interface-alert-warning-circle-alternate"
              style={{
                borderRadius: "2px",
                fontSize: "11px",
                fontWeight: "500",
                fontFamily: "Inter",
              }}
              text="Exception"
            />
          </View>
        </Container>
      </Header>
      <View id="00030" viewKey="Default Overview">
        <Table
          id="batchTable"
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ getAllBatchData.data }}"
          defaultFilters={{
            0: {
              id: "be7aa",
              columnId: "2f9fa",
              operator: "intersects",
              value: "{{ multiselectNNBatch.value }}",
              disabled: false,
            },
            1: {
              id: "e45ac",
              columnId: "9e02e",
              operator: "intersects",
              value: "{{ multiselectCMO.value }}",
              disabled: false,
            },
            2: {
              id: "8d580",
              columnId: "4725e",
              operator: "includes",
              value: "{{ multiselectNNReleased.value }}",
              disabled: false,
            },
            3: {
              id: "ceace",
              columnId: "c9ae8",
              operator: "intersects",
              value: "{{ multiselectSapBatchStatus.value }}",
              disabled: false,
            },
            4: {
              id: "0d802",
              columnId: "98bf8",
              operator: "includes",
              value: "{{ multiselectMaterialName.value }}",
              disabled: false,
            },
          }}
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          enableSaveActions={true}
          heightType="auto"
          primaryKeyColumnId="86594"
          rowHeight="small"
          showFooter={true}
          showHeader={true}
          toolbarPosition="bottom"
        >
          <Column
            id="86594"
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
            id="2f9fa"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="nn_batch"
            label="NN Batch"
            placeholder="Enter value"
            position="center"
            size={111}
            summaryAggregationMode="none"
          />
          <Column
            id="4725e"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="nn_released"
            label="NN released"
            placeholder="Select option"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="9e02e"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="cmo_site_name"
            label="CMO Site Name"
            placeholder="Enter value"
            position="center"
            size={110}
            summaryAggregationMode="none"
          />
          <Column
            id="98bf8"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="material_name"
            label="Material Name"
            placeholder="Enter value"
            position="center"
            size={235}
            summaryAggregationMode="none"
          />
          <Column
            id="d5d34"
            alignment="left"
            format="datetime"
            groupAggregationMode="none"
            key="manufacturing_date"
            label="Manufacturing Date"
            placeholder="Enter value"
            position="center"
            size={183}
            summaryAggregationMode="none"
          />
          <Column
            id="5d880"
            alignment="left"
            editableOptions={{ showStepper: true }}
            format="tag"
            formatOptions={{
              automaticColors: false,
              color: "{{ item > 60 ? '#d39194' : '#89b69a'}}",
            }}
            groupAggregationMode="sum"
            key="batch_age"
            label="Batch Age (days)"
            placeholder="Select option"
            position="center"
            size={152}
            summaryAggregationMode="none"
            textColor="{{ theme.surfacePrimary }}"
          />
          <Column
            id="72828"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="final_dv_report_received_date"
            label="Final DV Report Received Date"
            placeholder="Enter value"
            position="center"
            size={220}
            summaryAggregationMode="none"
          />
          <Column
            id="be74a"
            alignment="left"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="manufacture_to_latest_dv_report_received"
            label="Manufacture to Latest DV Report Received"
            placeholder="Enter value"
            position="center"
            size={267}
            summaryAggregationMode="none"
          />
          <Column
            id="c9ae8"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="sap_batch_status"
            label="SAP Batch Status"
            placeholder="Select option"
            position="center"
            size={136}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="1ef30"
            alignment="left"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="open_cmo_d_vs"
            label="# Open CMO DVs"
            placeholder="Enter value"
            position="center"
            size={125}
            summaryAggregationMode="none"
          />
          <Column
            id="adf09"
            alignment="left"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="open_nn_d_vs"
            label="# Open NN DVs"
            placeholder="Enter value"
            position="center"
            size={116}
            summaryAggregationMode="none"
          />
          <Column
            id="291d7"
            alignment="left"
            format="datetime"
            groupAggregationMode="none"
            key="cmo_release_date"
            label="CMO Release Date"
            placeholder="Enter value"
            position="center"
            size={162}
            summaryAggregationMode="none"
          />
          <Column
            id="c5239"
            alignment="left"
            format="string"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="nn_release_date"
            label="NN Release Date"
            placeholder="Enter value"
            position="center"
            size={142}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="c6a8e"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="vendor_batch"
            label="Vendor Batch"
            placeholder="Enter value"
            position="center"
            size={105}
            summaryAggregationMode="none"
          />
          <Column
            id="47d4f"
            alignment="left"
            format="string"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="batch_priority"
            label="Batch Priority"
            placeholder="Enter value"
            position="center"
            size={115}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="1961f"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="batch_comment"
            label="Batch Comment"
            placeholder="Enter value"
            position="center"
            size={128}
            summaryAggregationMode="none"
          />
          <ToolbarButton
            id="f85b4"
            icon="bold/interface-arrows-round-left"
            label="Refresh"
            type="custom"
          >
            <Event
              event="clickToolbar"
              method="refresh"
              pluginId="batchTable"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
          <ToolbarButton
            id="cc8c6"
            icon="bold/interface-download-button-2"
            label="Download"
            type="custom"
          >
            <Event
              event="clickToolbar"
              method="exportData"
              pluginId="batchTable"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
        </Table>
      </View>
      <View id="00031" viewKey="Supply Chain Planner" />
      <View id="00032" viewKey="Operations Manager" />
    </Container>
  </Frame>
</Screen>
