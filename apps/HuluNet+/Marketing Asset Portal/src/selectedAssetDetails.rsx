<Container
  id="selectedAssetDetails"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  hidden="{{ assetsTable.selectedRow === null }}"
  loading=""
  padding="0"
  showBody={true}
  showBorder={false}
  style={{ map: { background: "canvas" } }}
>
  <Header>
    <Text
      id="containerTitle2"
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="00030" viewKey="View 1">
    <Text
      id="text1"
      horizontalAlign="center"
      tooltipText="Select an asset in the table"
      value="##### Selected asset details"
      verticalAlign="center"
    />
    <Image
      id="image1"
      fit="contain"
      heightType="fixed"
      horizontalAlign="center"
      src="{{ assetsTable.selectedRow.media }}"
    />
    <Text id="text3" value="###### Name:" verticalAlign="center" />
    <Text
      id="assetName"
      value="{{ assetsTable.selectedRow.name }}"
      verticalAlign="center"
    />
    <Text id="text11" value="###### Description:" verticalAlign="center" />
    <Text
      id="assetDescription"
      value="{{ assetsTable.selectedRow.description }}"
      verticalAlign="center"
    />
    <Text id="text4" value="###### Media Type:" verticalAlign="center" />
    <Text
      id="assetType"
      value="{{ assetsTable.selectedRow.type }}"
      verticalAlign="center"
    />
    <Text
      id="assetLanguageTitle"
      value="###### Language:"
      verticalAlign="center"
    />
    <Text
      id="assetLanguage"
      value="{{ assetsTable.selectedRow.language }}"
      verticalAlign="center"
    />
    <Text
      id="assetCountryTitle"
      value="###### Country:"
      verticalAlign="center"
    />
    <Text
      id="assetCountry"
      value="{{ assetsTable.selectedRow.country }}"
      verticalAlign="center"
    />
    <Text id="text10" value="###### Spend:" verticalAlign="center" />
    <Text
      id="assetSpend"
      value="${{ assetsTable.selectedRow.spend }}"
      verticalAlign="center"
    />
    <Button id="orderExistingAssetButton" text="Order asset">
      <Event
        event="click"
        method="show"
        params={{
          map: { options: { object: { block: "nearest", behavior: "auto" } } },
        }}
        pluginId="modalOrderExistingAsset"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{}}
        pluginId="getLatestOrderID"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
</Container>
