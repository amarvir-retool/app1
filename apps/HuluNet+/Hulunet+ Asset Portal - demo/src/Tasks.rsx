<Screen
  id="Tasks"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title={null}
  urlSlug=""
  uuid="8c0a919c-7f64-4dc3-a91c-7fa1e903b30e"
>
  <RetoolUserActionQuery
    id="getAllPendingOrders"
    actionCategory="userTask"
    actionType="get_tasks"
    fromAppUuid="2fdd490e-2020-11f0-b602-fb174e43ae3e"
    notificationDuration={4.5}
    resourceName="RetoolUserAction"
    runWhenModelUpdates={true}
    selectedStatuses={'["pending"]'}
    selectedUserTaskDefinitionIds={'["f188e593-349a-4046-9464-8a7c9cc732e6"]'}
    selectedWorkflowIds={'["95afa5d9-c12b-4130-8700-721e888c7e9d"]'}
    showSuccessToaster={false}
  />
  <RetoolUserActionQuery
    id="approveOrDeclineOrder"
    actionCategory="userTask"
    actionType="complete_task"
    fromAppUuid="2fdd490e-2020-11f0-b602-fb174e43ae3e"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    outputPayload="{{ setStatus.data }}"
    resourceName="RetoolUserAction"
    showSuccessToaster={false}
    userTaskInstanceId="{{ setStatus.data.taskId }}"
  >
    <Event
      event="success"
      method="trigger"
      params={{}}
      pluginId="getAllPendingOrders"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{}}
      pluginId="sendSlackNotification"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RetoolUserActionQuery>
  <JavascriptQuery
    id="setStatus"
    _additionalScope={["taskStatus", "taskId"]}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("../lib/setStatus.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  >
    <Event
      event="success"
      method="trigger"
      params={{}}
      pluginId="approveOrDeclineOrder"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </JavascriptQuery>
  <Frame
    id="$main3"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Text
      id="text18"
      hidden="{{ getAllPendingOrders.data.data.length >= 0 }}"
      horizontalAlign="center"
      style={{}}
      value="No Tasks found"
      verticalAlign="center"
    />
    <Container
      id="container4"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fixed"
      hidden=""
      overflowType="hidden"
      padding="12px"
      showBody={true}
      showBorder={false}
      style={{ map: { background: "canvas" } }}
    >
      <Header>
        <Text
          id="containerTitle5"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <ListViewBeta
          id="listView1"
          _primaryKeys=""
          data="{{ getAllPendingOrders.data.data }}"
          itemWidth="200px"
          margin="0"
          numColumns={3}
          padding="0"
        >
          <Include src="./container5.rsx" />
        </ListViewBeta>
      </View>
    </Container>
  </Frame>
</Screen>
