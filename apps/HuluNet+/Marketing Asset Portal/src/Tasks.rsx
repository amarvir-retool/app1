<Screen
  id="Tasks"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title={null}
  urlSlug=""
>
  <RetoolUserActionQuery
    id="getAllTasks"
    actionCategory="userTask"
    actionType="get_tasks"
    fromAppUuid="2fdd490e-2020-11f0-b602-fb174e43ae3e"
    notificationDuration={4.5}
    resourceName="RetoolUserAction"
    selectedStatuses={'["pending"]'}
    selectedUserTaskDefinitionIds={'["f188e593-349a-4046-9464-8a7c9cc732e6"]'}
    selectedWorkflowIds={'["95afa5d9-c12b-4130-8700-721e888c7e9d"]'}
    showSuccessToaster={false}
  />
  <Frame
    id="$main3"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Container
      id="container4"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
    >
      <Header>
        <Text
          id="containerTitle5"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Text
          id="text18"
          value="{{ getAllTasks.data }}"
          verticalAlign="center"
        />
      </View>
    </Container>
  </Frame>
</Screen>
