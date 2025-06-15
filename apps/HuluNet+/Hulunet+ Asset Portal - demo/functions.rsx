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
  <OpenAPIQuery
    id="sendSlackOrderUpdate"
    isMultiplayerEdited={false}
    method="post"
    notificationDuration={4.5}
    operationId="chat_postMessage"
    parameterDynamicStates={
      '{"attachments":false,"blocks":false,"channel":true,"icon_emoji":false,"icon_url":false,"link_names":false,"mrkdwn":false,"parse":false,"reply_broadcast":false,"text":false,"thread_ts":false,"unfurl_links":false,"unfurl_media":false,"username":false}'
    }
    parameterMetadata=""
    parameters={
      '{"channel":"amarvir-demo-slack","text":"An asset has been ordered by {{ current_user.fullName }}"}'
    }
    path="/chat.postMessage"
    requestBodyMetadata=""
    resourceDisplayName="Amarvir Retool Slack"
    resourceName="93a5a318-4d69-493a-abb6-5d6e8dd37034"
    showSuccessToaster={false}
  />
</GlobalFunctions>
