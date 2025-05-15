<ModalFrame
  id="modalFrame1"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  margin="4px 8px"
  overlayInteraction={true}
  padding="8px 12px"
  showOverlay={true}
  size="medium"
>
  <Text id="modalTitle1" value="##### Report error" verticalAlign="center" />
  <Button
    id="modalCloseButton1"
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
      pluginId="modalFrame1"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
  <TextArea
    id="textArea1"
    autoResize={true}
    label="Description"
    labelPosition="top"
    minLines={2}
    placeholder="Enter value"
    style={{
      sharedLabelFontSize: "labelFont",
      sharedLabelFontWeight: "labelFont",
      sharedLabelFontFamily: "labelFont",
    }}
  />
  <Button
    id="button3"
    style={{
      fontSize: "11px",
      fontWeight: "500",
      fontFamily: "Inter",
      borderRadius: "0px",
    }}
    text="Submit"
  />
</ModalFrame>
