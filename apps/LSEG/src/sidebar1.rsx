<SidebarFrame
  id="sidebarFrame1"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  isHiddenOnMobile={true}
  padding="8px 12px"
  width="large"
>
  <Body>
    <Text
      id="text1"
      disableMarkdown={true}
      style={{
        fontSize: "labelEmphasizedFont",
        fontWeight: "labelEmphasizedFont",
        fontFamily: "labelEmphasizedFont",
      }}
      value="Filters"
      verticalAlign="center"
    />
    <Multiselect
      id="multiselect1"
      captionByIndex=""
      data="{{ getAllData.data }}"
      emptyMessage="No options"
      label="Depermission Date"
      labelPosition="top"
      labels="{{ item.depermission_date }}"
      overlayMaxHeight={375}
      showSelectionIndicator={true}
      value=""
      values="{{ item.depermission_date }}"
      wrapTags={true}
    />
    <Multiselect
      id="multiselect4"
      captionByIndex=""
      data="{{ getAllData.data }}"
      emptyMessage="No options"
      label="Search User ID"
      labelPosition="top"
      labels="{{ item.search_user_id }}"
      overlayMaxHeight={375}
      placeholder="Select options"
      showClear={true}
      showSelectionIndicator={true}
      values="{{ item.search_user_id }}"
      wrapTags={true}
    />
    <Multiselect
      id="multiselect3"
      captionByIndex=""
      data="{{ getAllData.data }}"
      emptyMessage="No options"
      label="Account Name"
      labelPosition="top"
      labels="{{ item.account_name }}"
      overlayMaxHeight={375}
      placeholder="Select options"
      showClear={true}
      showSelectionIndicator={true}
      values="{{ item.account_name }}"
      wrapTags={true}
    />
    <Multiselect
      id="multiselect6"
      captionByIndex=""
      data="{{ getAllData.data }}"
      emptyMessage="No options"
      label="BRE Comments"
      labelPosition="top"
      labels="{{ item.bre_comments }}"
      overlayMaxHeight={375}
      placeholder="Select options"
      showClear={true}
      showSelectionIndicator={true}
      values="{{ item.bre_comments }}"
      wrapTags={true}
    />
  </Body>
  <Footer>
    <Avatar
      id="avatar1"
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
