<Container
  id="container5"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showBorder={false}
  showHeader={true}
  style={{ map: { background: "canvas" } }}
>
  <Header>
    <Text
      id="containerTitle6"
      value="##### Task {{ i + 1 }}"
      verticalAlign="center"
    />
  </Header>
  <View id="00030" viewKey="View 1">
    <Text id="workflowId8" value="Task ID:" verticalAlign="center" />
    <Text id="orderDate2" value="{{ item.id }}" verticalAlign="center" />
    <Text id="workflowId5" value="Date of order:" verticalAlign="center" />
    <Text
      id="orderDate"
      value="{{ item.context.date }}"
      verticalAlign="center"
    />
    <Text id="workflowId6" value="Description:" verticalAlign="center" />
    <Text
      id="orderDescription"
      value="{{ item.context.description }}"
      verticalAlign="center"
    />
    <Text id="workflowId7" value="Ordered by:" verticalAlign="center" />
    <Text
      id="orderedBy"
      value="{{ item.context.ordered_by }}"
      verticalAlign="center"
    />
    <Button id="declineButton" text="Decline">
      <Event
        event="click"
        method="trigger"
        params={{
          map: {
            options: {
              map: {
                additionalScope: {
                  taskStatus: '"Declined"',
                  taskId: "{{ item.id }}",
                },
              },
            },
          },
        }}
        pluginId="setStatus"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="approveButton"
      style={{ map: { background: "success" } }}
      text="Approve"
    >
      <Event
        event="click"
        method="trigger"
        params={{
          map: {
            options: {
              map: {
                additionalScope: {
                  taskStatus: '"Approved"',
                  taskId: "{{ item.id }}",
                },
              },
            },
          },
        }}
        pluginId="setStatus"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text id="workflowId9" value="Deadline:" verticalAlign="center" />
    <Text
      id="orderDeadline"
      value="{{ item.context.deadline }}"
      verticalAlign="center"
    />
  </View>
</Container>
