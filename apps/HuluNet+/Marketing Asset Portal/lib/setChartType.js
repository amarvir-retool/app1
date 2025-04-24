if (tabbedContainer1.currentViewKey === "Orders over time") {
    chartType.setValue(ordersTimeline.data); 
} else if (tabbedContainer1.currentViewKey === "Budget spent on asset types") {
    chartType.setValue(budgetBarChart.data);
} else if (tabbedContainer1.currentViewKey === "Delivery rate") {
    chartType.setValue(deliveryScatterChart.data);
}