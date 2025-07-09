<Screen
  id="PDFAnalysis"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle={null}
  title={null}
  urlSlug={null}
  uuid="a6e692ae-9aac-4be9-84fb-90c80ae4e9a6"
>
  <RetoolAIQuery
    id="texitfy"
    action="documentParsing"
    fileSource="pdfFileUpload"
    notificationDuration={4.5}
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
    showSuccessToaster={false}
  >
    <Event
      event="success"
      method="trigger"
      params={{}}
      pluginId="summariseFile"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RetoolAIQuery>
  <RetoolAIQuery
    id="summariseFile"
    action="textSummarization"
    defaultModelInitialized={true}
    instruction="Provide a summary of the text in bullet point format, addressing any key highlights and observations.
The context is {{ texitfy.data }}"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
    showSuccessToaster={false}
  />
  <RetoolAIQuery
    id="llmChat"
    action="chatResponseGeneration"
    chatHistory="{{ llmChat1.messageHistory }}"
    chatInput="{{ llmChat1.lastMessage }}"
    defaultModelInitialized={true}
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
    systemMessage="You are a helpful assistant, use {{ texitfy.data }} to respond."
  />
  <Include src="./drawerFrame2.rsx" />
  <Frame
    id="$main4"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    style={{}}
    type="main"
  >
    <Include src="./container7.rsx" />
  </Frame>
</Screen>
