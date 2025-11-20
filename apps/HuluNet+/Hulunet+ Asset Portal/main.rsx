<App>
  <Include src="./functions.rsx" />
  <AppStyles id="$appStyles" css={include("./lib/$appStyles.css", "string")} />
  <Include src="./src/AssetManager.rsx" />
  <Include src="./src/Metrics.rsx" />
  <Include src="./src/PDFAnalysis.rsx" />
  <Include src="./src/Settings.rsx" />
  <Include src="./src/Tasks.rsx" />
  <Include src="./header.rsx" />
</App>
