<Container
  id="container7"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showBorder={false}
  style={{ map: { background: "canvas" } }}
>
  <Header>
    <Text
      id="containerTitle9"
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="00030" viewKey="View 1">
    <Button
      id="button16"
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
        params={{
          map: {
            options: {
              object: {
                onSuccess: null,
                onFailure: null,
                additionalScope: null,
              },
            },
          },
        }}
        pluginId="texitfy"
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
      text="Ask questions"
    >
      <Event
        event="click"
        method="show"
        params={{}}
        pluginId="drawerFrame2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
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
    <PDFViewer
      id="pdf1"
      retoolFileObject="{{ pdfFileUpload.value[0] }}"
      showTopBar={true}
      src="https://upload.wikimedia.org/wikipedia/commons/1/14/Marspathfinder.pdf"
      srcType="retoolFileObject"
      style={{ map: { background: "canvas" } }}
    />
    <Container
      id="container8"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="{{ summariseFile.data == null }}"
      padding="12px"
      showBody={true}
      showBorder={false}
      style={{ map: { background: "canvas" } }}
    >
      <Header>
        <Text
          id="containerTitle8"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Text id="text20" value="###### Summary:" verticalAlign="center" />
        <Text
          id="text19"
          style={{}}
          value="{{ summariseFile.data }}"
          verticalAlign="center"
        />
      </View>
    </Container>
  </View>
</Container>
