<ModalFrame
  id="modalNewAssetOrder"
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
  <Text id="modalTitle2" value="#### New asset order" verticalAlign="center" />
  <Button
    id="modalCloseButton2"
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
      pluginId="modalNewAssetOrder"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
  <Form
    id="orderNewAssetForm"
    footerPadding="4px 12px"
    headerPadding="4px 12px"
    padding="12px"
    requireValidation={true}
    resetAfterSubmit={true}
    showBody={true}
    showBorder={false}
  >
    <Header>
      <Text id="formTitle2" value="#### Form title" verticalAlign="center" />
    </Header>
    <Body>
      <TextArea
        id="descriptionInput"
        autoResize={true}
        formDataKey="description"
        label="Description"
        labelPosition="top"
        minLines={2}
        placeholder="Enter value"
        required={true}
      />
      <Date
        id="deadlineInput2"
        dateFormat="MMM d, yyyy"
        datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
        formDataKey="deadline"
        iconBefore="bold/interface-calendar"
        label="Deadline"
        labelPosition="top"
        required={true}
      />
      <Button
        id="formButton2"
        submit={true}
        submitTargetId="orderNewAssetForm"
        text="Submit order"
      />
    </Body>
    <Event
      event="submit"
      method="trigger"
      params={{}}
      pluginId="orderNewAsset"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </Form>
</ModalFrame>
