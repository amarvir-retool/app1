<Screen
  id="Settings"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle={null}
  title={null}
  urlSlug={null}
  uuid="fc5c12c4-2cab-4b64-a5ed-26eef91003fc"
>
  <SqlQueryUnified
    id="query1"
    query={include("../lib/query1.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="399b4641-787c-47b6-8d12-411163ab1704"
    warningCodes={[]}
  />
  <RetoolAIQuery
    id="llmChat2_query1"
    action="chatResponseGeneration"
    chatHistory="{{ llmChat2.messageHistory }}"
    chatInput="{{ llmChat2.lastMessage }}"
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
  />
  <Frame
    id="$main5"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <TextInput id="textInput1" labelPosition="top" placeholder="Enter value" />
    <Table
      id="table1"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ query1.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="3060d"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="3060d"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="622b5"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="name"
        label="Name"
        placeholder="Enter value"
        position="center"
        size={160}
        summaryAggregationMode="none"
      />
      <Column
        id="d5a3a"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="type"
        label="Type"
        placeholder="Select option"
        position="center"
        size={230}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="4d9dd"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        groupAggregationMode="none"
        key="media"
        label="Media"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="1ce55"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="description"
        label="Description"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="9bf1e"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="language"
        label="Language"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="b00d5"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="country"
        label="Country"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="545a3"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="spend"
        label="Spend"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="table1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="table1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <Chat
      id="llmChat2"
      _actionDisabled={{ map: { "1a": "" } }}
      _actionHidden={{ map: { "1a": "" } }}
      _actionIcon={{ map: { "1a": "line/interface-align-front" } }}
      _actionIds={["1a"]}
      _actionLabel={{ map: { "1a": "Copy" } }}
      _actionType={{ map: { "1a": "copy" } }}
      _defaultUsername="{{ current_user.fullName }}"
      _headerButtonHidden={{ "2b": "", "3c": "" }}
      _headerButtonIcon={{
        "2b": "line/interface-download-button-2",
        "3c": "line/interface-delete-bin-2",
      }}
      _headerButtonIds={["2b", "3c"]}
      _headerButtonLabel={{ "2b": "Download", "3c": "Clear history" }}
      _headerButtonType={{ "2b": "download", "3c": "clearHistory" }}
      _sessionStorageId="33270263-8878-4b23-b352-931e79736223"
      assistantName="Retool AI"
      avatarFallback="{{ current_user.fullName }}"
      avatarImageSize={32}
      avatarSrc="{{ current_user.profilePhotoUrl }}"
      emptyDescription="Send a message to chat with AI"
      emptyTitle="No messages here yet"
      placeholder="Type a message"
      queryTargetId="llmChat2_query1"
      showAvatar={true}
      showEmptyState={true}
      showHeader={true}
      showTimestamp={true}
      style={{ map: { background: "automatic" } }}
      title="Chat"
    >
      <Event
        event="clickAction"
        method="copyToClipboard"
        params={{ map: { value: "{{ currentMessage.value }}" } }}
        pluginId="llmChat2"
        targetId="1a"
        type="util"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="clickHeader"
        method="exportData"
        pluginId="llmChat2"
        targetId="2b"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="clickHeader"
        method="clearHistory"
        pluginId="llmChat2"
        targetId="3c"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Chat>
  </Frame>
</Screen>
