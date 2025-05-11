<Screen
  id="Metrics"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
>
  <SqlQueryUnified
    id="getAllOrders"
    notificationDuration={4.5}
    query={include("../lib/getAllOrders.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="399b4641-787c-47b6-8d12-411163ab1704"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="getAllAssetsQuery"
    query={include("../lib/getAllAssetsQuery.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="399b4641-787c-47b6-8d12-411163ab1704"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="getDeliveryTime"
    notificationDuration={4.5}
    query={include("../lib/getDeliveryTime.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="399b4641-787c-47b6-8d12-411163ab1704"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <RetoolAIQuery
    id="aiAnalysis"
    action="textSummarization"
    defaultModelInitialized={true}
    enableTransformer={true}
    instruction="Based on the chart data, please analyse and generate a short and consise summary as bullet points. Include any trends or observations.

The context is {{ chartType.value }}"
    isMultiplayerEdited={false}
    model="gpt-4.1"
    notificationDuration={4.5}
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
    showSuccessToaster={false}
  />
  <State id="chartType" value="ordersTimeline.data" />
  <JavascriptQuery
    id="setChartType"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("../lib/setChartType.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <Include src="./drawerFrame1.rsx" />
  <Frame id="$main2" enableFullBleed={true} padding="8px 12px" type="main">
    <Container
      id="container3"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fixed"
      overflowType="hidden"
      padding="12px"
      showBody={true}
      style={{ map: { background: "canvas" } }}
    >
      <Header>
        <Text
          id="containerTitle4"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Include src="./tabbedContainer1.rsx" />
      </View>
    </Container>
  </Frame>
</Screen>
