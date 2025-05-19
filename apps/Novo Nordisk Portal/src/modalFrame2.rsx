<ModalFrame
  id="modalFrame2"
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
  <Header>
    <Text id="modalTitle2" value="### Container title" verticalAlign="center" />
  </Header>
  <Body>
    <Form
      id="updateBatchForm"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      initialData="{{ batchTable.selectedRow }}"
      padding="12px"
      requireValidation={true}
      resetAfterSubmit={true}
      scroll={true}
      showBody={true}
      showBorder={false}
      showFooter={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="formTitle1"
          value="##### Update batch"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <TextInput
          id="nnBatchInput"
          formDataKey="nn_batch"
          label="NN Batch"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
        />
        <Select
          id="nnReleasedInput"
          data="{{ getAllBatchData.data }}"
          emptyMessage="No options"
          formDataKey="nn_released"
          label="NN released"
          labelPosition="top"
          labels="{{ item.nn_released }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          required={true}
          showSelectionIndicator={true}
          values="{{ item.nn_released }}"
        />
        <TextInput
          id="cmoSiteNameInput"
          formDataKey="cmo_site_name"
          label="CMO Site Name"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
        />
        <TextInput
          id="materialNameInput"
          formDataKey="material_name"
          label="Material Name"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
        />
        <DateTime
          id="manufacturingDateInput"
          dateFormat="MMM d, yyyy"
          datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
          formDataKey="manufacturing_date"
          iconBefore="bold/interface-calendar"
          label="Manufacturing Date"
          labelPosition="top"
          minuteStep={15}
          required={true}
          value="{{ new Date() }}"
        />
        <TextInput
          id="batchAgeDays)Input"
          formDataKey="batch_age"
          label="Batch Age (days)"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
        />
        <TextInput
          id="finalDvReportReceivedDateInput"
          formDataKey="final_dv_report_received_date"
          label="Final DV Report Received Date"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
        />
        <NumberInput
          id="manufactureToLatestDvReportReceivedInput"
          currency="USD"
          formDataKey="manufacture_to_latest_dv_report_received"
          inputValue={0}
          label="Manufacture to Latest DV Report Received"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
          showSeparators={true}
          showStepper={true}
          value={0}
        />
        <Select
          id="sapBatchStatusInput"
          data="{{ getAllBatchData.data }}"
          emptyMessage="No options"
          formDataKey="sap_batch_status"
          label="SAP Batch Status"
          labelPosition="top"
          labels="{{ item.sap_batch_status }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          required={true}
          showSelectionIndicator={true}
          values="{{ item.sap_batch_status }}"
        />
        <NumberInput
          id="OpenCmoDvsInput"
          currency="USD"
          formDataKey="open_cmo_d_vs"
          inputValue={0}
          label="# Open CMO DVs"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
          showSeparators={true}
          showStepper={true}
          value={0}
        />
        <NumberInput
          id="OpenNnDvsInput"
          currency="USD"
          formDataKey="open_nn_d_vs"
          inputValue={0}
          label="# Open NN DVs"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
          showSeparators={true}
          showStepper={true}
          value={0}
        />
        <DateTime
          id="cmoReleaseDateInput"
          dateFormat="MMM d, yyyy"
          datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
          formDataKey="cmo_release_date"
          iconBefore="bold/interface-calendar"
          label="CMO Release Date"
          labelPosition="top"
          minuteStep={15}
          required={true}
          value="{{ new Date() }}"
        />
        <TextInput
          id="nnReleaseDateInput"
          formDataKey="nn_release_date"
          label="NN Release Date"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
        />
        <TextInput
          id="vendorBatchInput"
          formDataKey="vendor_batch"
          label="Vendor Batch"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
        />
        <TextInput
          id="batchPriorityInput"
          formDataKey="batch_priority"
          label="Batch Priority"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
        />
        <TextInput
          id="batchCommentInput"
          formDataKey="batch_comment"
          label="Batch Comment"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
        />
      </Body>
      <Footer>
        <Button
          id="formButton1"
          style={{
            borderRadius: "2px",
            fontSize: "labelFont",
            fontWeight: "labelFont",
            fontFamily: "labelFont",
          }}
          submit={true}
          submitTargetId="updateBatchForm"
          text="Submit"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{}}
        pluginId="updateBatchRecord"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
    <Button
      id="modalCloseButton2"
      ariaLabel="Close"
      hidden={'{{ current_user.email === "amarvir@retool.com" }}'}
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ map: { border: "transparent" } }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ map: { hidden: true } }}
        pluginId="modalFrame2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Body>
</ModalFrame>
