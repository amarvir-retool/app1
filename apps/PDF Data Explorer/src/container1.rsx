<Container
  id="container1"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
  style={{ ordered: [{ border: "surfacePrimary" }] }}
>
  <Header>
    <Text
      id="containerTitle1"
      value="#### Print Job Search"
      verticalAlign="center"
    />
  </Header>
  <View id="6bd72" viewKey="View 1">
    <DateRange
      id="dateRange1"
      dateFormat="MMM d, yyyy"
      endPlaceholder="End date"
      iconBefore="bold/interface-calendar-remove"
      label="Job Date "
      labelPosition="top"
      required={true}
      startPlaceholder="Start date"
      textBetween="-"
      value={{ ordered: [{ start: "01/01/2024" }, { end: "{{ Date() }}" }] }}
    />
    <Select
      id="select1"
      data="{{ kodak.data }}"
      emptyMessage="No options"
      label="Print Office"
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select an option"
      required={true}
      showSelectionIndicator={true}
      values="{{ item.printing_office }}"
    />
    <Multiselect
      id="multiselect1"
      data="{{ kodak.data }}"
      emptyMessage="No options"
      label="Media Type"
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select options"
      required={true}
      showSelectionIndicator={true}
      values="{{ item.media_type }}"
      wrapTags={true}
    />
    <Select
      id="select2"
      data="{{ kodak.data }}"
      emptyMessage="No options"
      label="Technician"
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showClear={true}
      showSelectionIndicator={true}
      values="{{ item.technician }}"
    />
    <Button id="button1" text="Search">
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="query2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="showNextView"
        params={{ ordered: [] }}
        pluginId="tabbedContainer1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: false }] }}
        pluginId="container2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
</Container>
