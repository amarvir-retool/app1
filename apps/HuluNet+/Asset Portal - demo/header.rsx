<Frame
  id="$header3"
  enableFullBleed={null}
  isHiddenOnDesktop={false}
  isHiddenOnMobile={true}
  padding="8px 12px"
  sticky={true}
  style={{ map: { "primary-surface": "surfacePrimary" } }}
  type="header"
>
  <Navigation
    id="navigation3"
    horizontalAlignment="justify"
    itemMode="static"
    retoolStorageFileId="5284d5c7-e20a-409e-b266-0b1c27ce2751"
    src="https://retool-edge.com/83d4d9a1f1ecd17d111e6b4a014043cd.svg"
    srcType="retoolStorageFileId"
    style={{
      fontSize: "labelEmphasizedFont",
      fontWeight: "labelEmphasizedFont",
      fontFamily: "labelEmphasizedFont",
    }}
  >
    <Option
      id="d3ee7"
      icon="bold/interface-align-layers-1"
      iconPosition="left"
      itemType="page"
      key="47290"
      label="Asset Manager"
      screenTargetId="AssetManager"
    />
    <Option
      id="5f0cf"
      hidden="{{ current_user.groups.some(g=>g.name === 'Publicity') }}"
      icon="bold/money-graph"
      iconPosition="left"
      itemType="page"
      label="Metrics"
      screenTargetId="Metrics"
    />
    <Option
      id="576ee"
      disabled={false}
      hidden={false}
      icon="bold/interface-file-clipboard"
      iconPosition="left"
      itemType="page"
      label="Tasks"
      screenTargetId="Tasks"
    />
    <Option
      id="cccc1"
      disabled={false}
      hidden={false}
      icon="bold/interface-file-add-alternate"
      iconPosition="left"
      itemType="page"
      label="Orders"
      screenTargetId="Orders"
    />
  </Navigation>
  <Avatar
    id="avatar4"
    horizontalAlign="right"
    imageSize={32}
    label=""
    labelAlign="right"
    labelPosition="left"
    src="{{ current_user.profilePhotoUrl }}"
    style={{ map: { background: "automatic" } }}
  />
</Frame>
