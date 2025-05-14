<Frame
  id="$header"
  enableFullBleed={null}
  isHiddenOnDesktop={false}
  isHiddenOnMobile={true}
  padding="8px 12px"
  sticky={true}
  type="header"
>
  <Navigation
    id="navigation1"
    data="{{ retoolContext.pages }}"
    highlightByIndex="{{ retoolContext.currentPage === item.id }}"
    labels="{{ item.title || item.id }}"
    retoolStorageFileId="a0d22ab2-1008-41b2-939f-fe749a1fe66a"
    src="https://1000logos.net/wp-content/uploads/2022/09/Citizens-Bank-logo.png"
    srcType="retoolStorageFileId"
    style={{ map: { highlightBackground: "rgba(255, 82, 82, 0.2)" } }}
  >
    <Option id="2ffc2" icon="bold/interface-home-3" label="Home" />
    <Option id="23699" icon="bold/interface-user-multiple" label="Customers" />
    <Option id="7f24c" icon="bold/interface-setting-cog" label="Settings" />
    <Event
      event="click"
      method="openPage"
      params={{ ordered: [{ pageName: "{{ item.id }}" }] }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </Navigation>
</Frame>
