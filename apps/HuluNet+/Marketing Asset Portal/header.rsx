<Frame
  id="$header3"
  enableFullBleed={null}
  isHiddenOnDesktop={false}
  isHiddenOnMobile={true}
  padding="8px 12px"
  sticky={true}
  type="header"
>
  <Avatar
    id="avatar3"
    fallback="{{ current_user.fullName }}"
    hideLabel={false}
    horizontalAlign="right"
    imageSize={32}
    label=""
    labelAlign="right"
    labelPosition="left"
    src="{{ current_user.profilePhotoUrl }}"
    style={{ map: { background: "automatic" } }}
  />
  <Navigation
    id="navigation3"
    itemMode="static"
    retoolStorageFileId="5284d5c7-e20a-409e-b266-0b1c27ce2751"
    src="https://retool-edge.com/83d4d9a1f1ecd17d111e6b4a014043cd.svg"
    srcType="retoolStorageFileId"
  >
    <Option
      id="d3ee7"
      icon="bold/interface-align-layers-1"
      iconPosition="left"
      itemType="page"
      label="Asset Manager"
      screenTargetId="AssetManager"
    />
    <Option
      id="5f0cf"
      icon="bold/money-graph"
      iconPosition="left"
      itemType="page"
      label="Metrics"
      screenTargetId="Metrics"
    />
  </Navigation>
</Frame>
