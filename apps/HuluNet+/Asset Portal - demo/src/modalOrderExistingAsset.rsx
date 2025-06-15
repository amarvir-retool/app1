<ModalFrame
  id="modalOrderExistingAsset"
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
    id="modalTitle1"
    value="#### Order asset: {{ assetsTable.selectedRow.name }}"
    verticalAlign="center"
  />
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
      pluginId="modalOrderExistingAsset"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
  <Form
    id="orderExistingAssetForm"
    footerPadding="4px 12px"
    headerPadding="4px 12px"
    padding="12px"
    requireValidation={true}
    resetAfterSubmit={true}
    scroll={true}
    showBody={true}
    showBorder={false}
  >
    <Header>
      <Text id="formTitle1" value="#### Form title" verticalAlign="center" />
    </Header>
    <Body>
      <Date
        id="deadlineInput"
        dateFormat="MMM d, yyyy"
        datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
        formDataKey="deadline"
        iconBefore="bold/interface-calendar"
        label="Deadline"
        labelPosition="top"
        required={true}
      />
      <Button
        id="formButton1"
        submit={true}
        submitTargetId="orderExistingAssetForm"
        text="Submit order"
      />
    </Body>
    <Event
      event="submit"
      method="trigger"
      params={{}}
      pluginId="getLatestOrderID"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="submit"
      method="trigger"
      params={{}}
      pluginId="orderExistingAsset"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </Form>
</ModalFrame>
