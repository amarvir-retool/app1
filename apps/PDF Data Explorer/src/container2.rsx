<Container
  id="container2"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  hidden="true"
  padding="12px"
  showBody={true}
  showHeader={true}
  style={{ ordered: [{ border: "surfacePrimary" }] }}
>
  <Header>
    <Text
      id="containerTitle2"
      horizontalAlign="center"
      value="#### AI Expert"
      verticalAlign="center"
    />
  </Header>
  <View id="6bd72" viewKey="View 1">
    <Image
      id="image2"
      aspectRatio=""
      fit="contain"
      heightType="fixed"
      horizontalAlign="center"
      margin="0"
      src="https://cdn-icons-png.flaticon.com/512/6323/6323521.png"
    />
    <Container
      id="tabbedContainer2"
      currentViewKey="{{ self.viewKeys[0] }}"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      style={{ ordered: [{ border: "surfacePrimary" }] }}
    >
      <Header>
        <Tabs
          id="tabs2"
          itemMode="static"
          navigateContainer={true}
          targetContainerId="tabbedContainer2"
          value="{{ self.values[0] }}"
        >
          <Option id="97bb1" value="Tab 1" />
          <Option id="57d77" value="Tab 2" />
          <Option id="af84c" value="Tab 3" />
        </Tabs>
      </Header>
      <View id="addbb" viewKey="View 1">
        <Text
          id="text1"
          horizontalAlign="right"
          value="How can I help?"
          verticalAlign="center"
        />
      </View>
      <View id="85692" viewKey="View 2">
        <Text
          id="text2"
          value="{{ chat_isolated.data }}"
          verticalAlign="center"
        />
      </View>
    </Container>
    <TextInput
      id="textInput1"
      label=""
      labelPosition="top"
      placeholder="Ask me anyting"
    />
    <Button id="button2" text="Ask the expert!">
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="chat_isolated"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="showNextView"
        params={{ ordered: [] }}
        pluginId="tabbedContainer2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
</Container>
