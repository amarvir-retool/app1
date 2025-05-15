<Screen
  id="ActionCentre"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title={null}
  urlSlug=""
>
  <RetoolAIQuery
    id="textify"
    action="documentParsing"
    enableTransformer={true}
    fileSource="pdfFileUpload"
    isMultiplayerEdited={false}
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
    showSuccessToaster={false}
  >
    <Event
      event="success"
      method="trigger"
      params={{}}
      pluginId="summariseFile"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RetoolAIQuery>
  <RetoolAIQuery
    id="summariseFile"
    action="textSummarization"
    defaultModelInitialized={true}
    instruction="Provide a summary of the text in bullet point format, addressing any key highlights and observations.
The context is {{ textify.data }}"
    isMultiplayerEdited={false}
    model="gpt-4o"
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
    showSuccessToaster={false}
  />
  <Include src="./sidebar2.rsx" />
  <Frame
    id="$main3"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    style={{ map: { canvas: "surfacePrimary" } }}
    type="main"
  >
    <Tabs
      id="tabs2"
      heightType="fixed"
      itemMode="static"
      navigateContainer={true}
      targetContainerId="tabbedContainer2"
      value="{{ self.values[0] }}"
    >
      <Option id="00030" value="Open actions" />
      <Option id="00031" value="Tab 2" />
    </Tabs>
    <ListViewBeta
      id="listView1"
      _primaryKeys=""
      data="{{ getUserTasks.data.data }}"
      itemWidth="200px"
      margin="0"
      numColumns={3}
      padding="0"
    >
      <Include src="./container3.rsx" />
    </ListViewBeta>
    <Container
      id="tabbedContainer2"
      currentViewKey="{{ self.viewKeys[0] }}"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showBorder={false}
    >
      <View id="00030" viewKey="Open actions">
        <Button
          id="refreshButton"
          ariaLabel="Close"
          horizontalAlign="right"
          iconBefore="bold/interface-arrows-turn-backward-alternate"
          style={{ map: { border: "transparent" } }}
          styleVariant="outline"
        >
          <Event
            event="click"
            method="trigger"
            params={{}}
            pluginId="getUserTasks"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </View>
      <View
        id="8fd25"
        disabled={false}
        hidden={false}
        iconPosition="left"
        viewKey="Closed actions"
      />
      <View id="00031" viewKey="PDF analysis">
        <Include src="./container4.rsx" />
      </View>
    </Container>
  </Frame>
</Screen>
