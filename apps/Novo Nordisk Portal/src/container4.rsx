<Container
  id="container4"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showBorder={false}
>
  <Header>
    <Text
      id="containerTitle3"
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="00030" viewKey="View 1">
    <FileInput
      id="pdfFileUpload"
      _isUpgraded={true}
      iconBefore="bold/programming-browser-search"
      label=""
      labelPosition="top"
      maxCount={20}
      maxSize="250mb"
      placeholder="Upload a PDF"
      style={{
        sharedLabelFontSize: "labelFont",
        sharedLabelFontWeight: "labelFont",
        sharedLabelFontFamily: "labelFont",
      }}
      textBefore="Browse"
    />
    <Button
      id="button8"
      style={{
        fontSize: "11px",
        fontWeight: "500",
        fontFamily: "Inter",
        borderRadius: "2px",
      }}
      text="Summarise"
    >
      <Event
        event="click"
        method="trigger"
        params={{}}
        pluginId="textify"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button15"
      style={{
        fontSize: "11px",
        fontWeight: "500",
        fontFamily: "Inter",
        borderRadius: "2px",
      }}
      text="Ask question"
    >
      <Event
        event="click"
        method="show"
        params={{}}
        pluginId="drawerFrame1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Container
      id="container5"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="{{ summariseFile.data == null }}"
      padding="12px"
      showBody={true}
      showBorder={false}
    >
      <Header>
        <Text
          id="containerTitle4"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Text id="text8" value="###### Summary:" verticalAlign="center" />
        <Text
          id="text7"
          style={{}}
          value="{{ summariseFile.data }}"
          verticalAlign="center"
        />
      </View>
    </Container>
    <PDFViewer
      id="pdf1"
      retoolFileObject="{{ pdfFileUpload.value[0] }}"
      showTopBar={true}
      src="https://upload.wikimedia.org/wikipedia/commons/1/14/Marspathfinder.pdf"
      srcType="retoolFileObject"
    />
  </View>
</Container>
