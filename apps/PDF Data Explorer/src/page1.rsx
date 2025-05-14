<Screen
  id="page1"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title="Data Explorer"
  urlSlug=""
>
  <SqlQueryUnified
    id="kodak"
    query={include("../lib/kodak.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="399b4641-787c-47b6-8d12-411163ab1704"
    warningCodes={[]}
  />
  <WorkflowRun
    id="query2"
    resourceName="WorkflowRun"
    workflowId="ac74c478-938c-4f07-97f5-11bd4db220bc"
    workflowParams={include("../lib/query2.json", "string")}
  />
  <RetoolAIQuery
    id="chat_isolated"
    action="chatResponseGeneration"
    chatInput="{{ textInput1.value }}"
    customTemperature=".7"
    defaultModelInitialized={true}
    notificationDuration={4.5}
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
    showSuccessToaster={false}
    systemMessage="You are a helpful assistant, use {{ table1.data }} to respond"
  />
  <JavascriptQuery
    id="query3"
    notificationDuration={4.5}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    style={{ ordered: [{ canvas: "surfacePrimary" }] }}
    type="main"
  >
    <Include src="./container1.rsx" />
    <Container
      id="tabbedContainer1"
      currentViewKey="{{ self.viewKeys[0] }}"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      style={{ ordered: [{ border: "surfacePrimary" }] }}
    >
      <Header>
        <Tabs
          id="tabs1"
          itemMode="static"
          navigateContainer={true}
          targetContainerId="tabbedContainer1"
          value="{{ self.values[0] }}"
        >
          <Option id="94fab" value="Tab 1" />
          <Option id="85b49" value="Tab 2" />
          <Option id="2437a" value="Tab 3" />
        </Tabs>
      </Header>
      <View id="addbb" viewKey="View 1">
        <Image
          id="image1"
          horizontalAlign="center"
          retoolStorageFileId="1f53a129-6ae7-463d-bf82-87f93390d6c7"
          src="https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.which.co.uk%2Freviews%2Fenergy-companies%2Farticle%2Fenergy-company-reviews%2Fovo-energy-aSJ3S9I4v5Ji&psig=AOvVaw2iyXtxxnI4AJPnI39JrVAu&ust=1747296169560000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCMjhldW_oo0DFQAAAAAdAAAAABAL"
          srcType="retoolStorageFileId"
        />
      </View>
      <View id="85692" viewKey="View 2">
        <Table
          id="table1"
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ query2.data }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          enableSaveActions={true}
          rowHeight="medium"
          showBorder={true}
          showFooter={true}
          showHeader={true}
          toolbarPosition="bottom"
        >
          <Column
            id="1fc1e"
            alignment="right"
            editable={false}
            format="decimal"
            groupAggregationMode="countDistinct"
            key="id"
            label="ID"
            position="center"
            size={38.5}
            summaryAggregationMode="none"
          />
          <Column
            id="ce003"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="print_job_id"
            label="Print job ID"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="24b6c"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="media_type"
            label="Media type"
            placeholder="Select option"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="5c52b"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="machine_id"
            label="Machine ID"
            placeholder="Select option"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="4ca7f"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="printing_office"
            label="Printing office"
            placeholder="Select option"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="6d402"
            alignment="left"
            format="date"
            groupAggregationMode="none"
            key="date"
            label="Date"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="43ff7"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="technician"
            label="Technician"
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
      </View>
    </Container>
    <Include src="./container2.rsx" />
  </Frame>
</Screen>
