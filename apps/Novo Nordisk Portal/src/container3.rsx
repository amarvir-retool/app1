<Container
  id="container3"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showBorder={false}
  showHeader={true}
>
  <Header>
    <Text
      id="containerTitle2"
      style={{ fontSize: "12px", fontWeight: "500", fontFamily: "Inter" }}
      value="Investigation Task {{ i + 1 }}"
      verticalAlign="center"
    />
  </Header>
  <View id="00030" viewKey="View 1">
    <Text
      id="text5"
      value="Batch ID: {{ item.context.batchRecord.id }}"
      verticalAlign="center"
    />
    <Text
      id="text4"
      value="NN Batch: {{ item.context.batchRecord.nn_batch }}"
      verticalAlign="center"
    />
    <Text
      id="text3"
      value="Deadline: {{ item.context.deadline }}"
      verticalAlign="center"
    />
    <Text
      id="text2"
      value="Description: {{ item.context.description }}"
      verticalAlign="center"
    />
    <Container
      id="container6"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
    >
      <Header>
        <Text
          id="containerTitle5"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Button
          id="button9"
          iconBefore="bold/interface-setting-cog"
          style={{
            fontSize: "labelFont",
            fontWeight: "labelFont",
            fontFamily: "labelFont",
            borderRadius: "2px",
            background: "#efc070",
          }}
          text="Actions"
        />
      </View>
    </Container>
  </View>
</Container>
