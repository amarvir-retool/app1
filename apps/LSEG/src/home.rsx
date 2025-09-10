<Screen
  id="home"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
  uuid="b6b28f0a-ad9f-4e93-af3c-03a7fa3d57af"
>
  <SqlQueryUnified
    id="getLocationData"
    notificationDuration={4.5}
    query={include("../lib/getLocationData.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="399b4641-787c-47b6-8d12-411163ab1704"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    style={{ map: { canvas: "surfacePrimary" } }}
    type="main"
  >
    <Include src="./container1.rsx" />
  </Frame>
</Screen>
