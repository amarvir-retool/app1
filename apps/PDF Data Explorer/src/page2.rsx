<Screen
  id="page2"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title="Upload"
  urlSlug=""
>
  <RetoolAIQuery
    id="textify"
    action="documentParsing"
    fileSource="fileInput1"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
    runWhenModelUpdates={true}
    showSuccessToaster={false}
  />
  <RetoolAIQuery
    id="summarize"
    action="textSummarization"
    defaultModelInitialized={true}
    instruction="Provide a summary in bullet point format. The context is {{ textify.data }}"
    isMultiplayerEdited={false}
    model="gpt-4o"
    notificationDuration={4.5}
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
    showSuccessToaster={false}
  />
  <RetoolAIQuery
    id="chat"
    action="chatResponseGeneration"
    chatInput="{{ textInput2.value }}"
    defaultModelInitialized={true}
    notificationDuration={4.5}
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
    showSuccessToaster={false}
    systemMessage="You are a helpful assistant, use {{ textify.data }} to respond"
  />
  <Frame
    id="$main2"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    style={{ ordered: [{ canvas: "surfacePrimary" }] }}
    type="main"
  >
    <FileInput
      id="fileInput1"
      _isUpgraded={true}
      iconBefore="bold/programming-browser-search"
      label="Upload a PDF"
      labelPosition="top"
      maxCount={20}
      maxSize="250mb"
      placeholder="No file selected"
      textBefore="Browse"
    />
    <PDFViewer
      id="pdf1"
      retoolFileObject="{{ fileInput1.value[0] }}"
      retoolStorageDynamicInput={true}
      retoolStorageFileId="{{ fileInput1.value['0'] }}"
      showTopBar={true}
      srcType="retoolFileObject"
    />
    <Button
      id="button4"
      style={{ map: { background: "#ff5252" } }}
      text="Load file for AI Actions"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="textify"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Include src="./tabbedContainer3.rsx" />
  </Frame>
</Screen>
