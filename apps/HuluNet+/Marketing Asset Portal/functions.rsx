<GlobalFunctions>
  <SqlQueryUnified
    id="getLatestOrderID"
    query={include("./lib/getLatestOrderID.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="399b4641-787c-47b6-8d12-411163ab1704"
    warningCodes={[]}
  />
  <WorkflowRun
    id="sendSlackNotification"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    resourceName="WorkflowRun"
    showSuccessToaster={false}
    workflowId="77af8a9a-effa-44ec-8f69-2408111f030a"
    workflowParams={include("./lib/sendSlackNotification.json", "string")}
    workflowRunBodyType="json"
  />
</GlobalFunctions>
