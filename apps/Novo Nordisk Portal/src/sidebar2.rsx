<SidebarFrame
  id="sidebarFrame2"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  isHiddenOnMobile={true}
  padding="8px 12px"
  width="large"
>
  <Body>
    <Container
      id="container7"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
    >
      <Header>
        <Text
          id="containerTitle6"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Button
          id="button10"
          iconBefore="bold/programming-bug-alternate"
          style={{
            borderRadius: "2px",
            background: "#efc070",
            fontSize: "11px",
            fontWeight: "500",
            fontFamily: "Inter",
          }}
          text="Report error"
        >
          <Event
            event="click"
            method="show"
            params={{}}
            pluginId="modalFrame1"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </View>
    </Container>
    <Include src="./container8.rsx" />
  </Body>
  <Footer>
    <Avatar
      id="avatar3"
      fallback="{{ current_user.fullName }}"
      imageSize={32}
      label="{{ current_user.fullName }}"
      labelCaption="{{ current_user.email }}"
      margin="4px 4px"
      src="{{ current_user.profilePhotoUrl }}"
      style={{ map: { background: "automatic" } }}
    />
  </Footer>
</SidebarFrame>
