<ModalFrame
  id="modalFrame3"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showOverlay={true}
  size="medium"
>
  <Text
    id="modalTitle3"
    value="##### Investigate Batch {{ batchTable.selectedRow.nn_batch }} with ID:{{ batchTable.selectedRow.id }}"
    verticalAlign="center"
  />
  <Button
    id="modalCloseButton3"
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
      pluginId="modalFrame3"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
  <TextArea
    id="investigationDescription"
    autoResize={true}
    label="Description"
    labelPosition="top"
    minLines={2}
    placeholder="Enter value"
    required={true}
  />
  <Date
    id="investigationDeadline"
    dateFormat="MMM d, yyyy"
    datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
    iconBefore="bold/interface-calendar"
    label="Due by:"
    labelPosition="top"
    required={true}
  />
  <Button
    id="button7"
    style={{
      fontSize: "labelFont",
      fontWeight: "labelFont",
      fontFamily: "labelFont",
      borderRadius: "2px",
    }}
    text="Submit"
  >
    <Event
      event="click"
      method="trigger"
      params={{}}
      pluginId="investigateBatch"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="click"
      method="hide"
      params={{}}
      pluginId="modalFrame3"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
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
</ModalFrame>
