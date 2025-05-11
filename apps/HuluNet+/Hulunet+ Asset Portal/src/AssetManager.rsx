<Screen
  id="AssetManager"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
>
  <SqlQueryUnified
    id="getAllAssets"
    cacheKeyTtl={300}
    enableCaching={true}
    notificationDuration={4.5}
    query={include("../lib/getAllAssets.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="399b4641-787c-47b6-8d12-411163ab1704"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="orderExistingAsset"
    actionType="INSERT"
    changeset={
      '[{"key":"date","value":"{{ new Date() }}"},{"key":"status","value":"Order placed"},{"key":"deadline","value":"{{ deadlineInput.value }}"},{"key":"ordered_by","value":"{{ current_user.firstName[0] + current_user.lastName }}"},{"key":"order_type","value":"From existing asset"},{"key":"description","value":"{{ assetsTable.selectedRow.description }}"},{"key":"id","value":"{{ getLatestOrderID.data.id[0] + 1}}"}]'
    }
    changesetObject="{{ orderExistingAssetForm.data }}"
    editorMode="gui"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    resourceDisplayName="retool_db"
    resourceName="399b4641-787c-47b6-8d12-411163ab1704"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    tableName="asset_orders"
  >
    <Event
      event="success"
      method="trigger"
      params={{}}
      pluginId="getLatestOrderID"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="showNotification"
      params={{
        map: {
          options: {
            notificationType: "success",
            title: "Order placed successfully",
          },
        },
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{}}
      pluginId="sendSlackNotification"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="orderNewAsset"
    actionType="INSERT"
    changeset={
      '[{"key":"id","value":"{{ getLatestOrderID.data.id[0] + 1}}"},{"key":"date","value":"{{ new Date() }}"},{"key":"status","value":"Order placed"},{"key":"ordered_by","value":"{{ current_user.firstName[0] + current_user.lastName }}"},{"key":"order_type","value":"New"},{"key":"description","value":"{{ descriptionInput.value }}"},{"key":"deadline","value":"{{ deadlineInput2.value }}"}]'
    }
    editorMode="gui"
    isMultiplayerEdited={false}
    resourceDisplayName="retool_db"
    resourceName="399b4641-787c-47b6-8d12-411163ab1704"
    runWhenModelUpdates={false}
    tableName="asset_orders"
  >
    <Event
      event="success"
      method="showNotification"
      params={{
        map: {
          options: {
            notificationType: "success",
            title: "Order placed successfully",
          },
        },
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{}}
      pluginId="getAllAssets"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{}}
      pluginId="sendSlackNotification"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <WorkflowRun
    id="newOrderApproval"
    resourceName="WorkflowRun"
    workflowId="95afa5d9-c12b-4130-8700-721e888c7e9d"
    workflowParams={include("../lib/newOrderApproval.json", "string")}
    workflowRunBodyType="json"
    workflowRunExecutionType="async"
  />
  <Include src="./modalNewAssetOrder.rsx" />
  <Include src="./modalOrderExistingAsset.rsx" />
  <Frame id="$main" enableFullBleed={true} padding="8px 12px" type="main">
    <Include src="./container1.rsx" />
  </Frame>
</Screen>
