<Container
  id="tabbedContainer3"
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
  style={{ ordered: [{ border: "surfacePrimary" }] }}
>
  <Header>
    <Text id="text4" value="**AI Actions**" verticalAlign="center" />
    <Tabs
      id="tabs3"
      itemMode="static"
      navigateContainer={true}
      style={{ map: { selectedBackground: "rgba(255, 82, 82, 0.2)" } }}
      targetContainerId="tabbedContainer3"
      value="{{ self.values[0] }}"
    >
      <Option id="c4f87" value="Tab 1" />
      <Option id="5ad12" value="Tab 2" />
      <Option id="43a05" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="c9fcd" viewKey="Summarize">
    <Button
      id="button3"
      style={{ map: { background: "#ff5252" } }}
      text="Summarize"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="summarize"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text id="text3" value="{{ summarize.data }}" verticalAlign="center" />
  </View>
  <View id="5a247" viewKey="AMA">
    <TextInput
      id="textInput2"
      label=""
      labelPosition="top"
      placeholder="Any questions?"
    >
      <Event
        event="submit"
        method="trigger"
        params={{}}
        pluginId="chat"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <Text id="text5" value="{{ chat.data }}" verticalAlign="center" />
  </View>
</Container>
