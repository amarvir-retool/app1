<DrawerFrame
  id="drawerFrame1"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showOverlay={true}
  width="medium"
>
  <Button
    id="drawerCloseButton1"
    ariaLabel="Close"
    horizontalAlign="right"
    iconBefore="bold/interface-delete-1"
    style={{ map: { border: "transparent" } }}
    styleVariant="outline"
  >
    <Event
      event="click"
      method="setHidden"
      params={{ map: { hidden: true } }}
      pluginId="drawerFrame1"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
  <Text id="drawerTitle1" value="#### Ask question" verticalAlign="center" />
  <TextInput
    id="textInput1"
    label=""
    labelPosition="top"
    placeholder="Ask me anything"
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
  <Text id="text9" value="{{ chat.data }}" verticalAlign="center" />
</DrawerFrame>
