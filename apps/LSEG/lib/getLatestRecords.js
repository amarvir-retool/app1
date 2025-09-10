// Use your table data
const data = table1.data; 

// date parsing function for "DD-MM-YYYY HH:mm"
function parseDate(dateStr) {
  if (!dateStr) return null; // handle null values
  const [day, month, rest] = dateStr.split("-");
  const [year, time] = rest.split(" ");
  return new Date(`${year}-${month}-${day}T${time}`);
}

// find the maximum (latest) date
const validDates = data
  .map(row => parseDate(row.depermission_date))
  .filter(d => d !== null);

const latestDate = new Date(Math.max(...validDates));

// filter rows that match the latest date
const latestRows = data.filter(
  row => parseDate(row.depermission_date)?.getTime() === latestDate.getTime()
);

return latestRows;
