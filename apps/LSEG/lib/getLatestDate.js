const dates = getAllData.data.depermission_date;

// parse "DD-MM-YYYY HH:mm" into a JS Date
function parseDate(dateStr) {
  if (!dateStr) return null;
  const [day, month, rest] = dateStr.split("-");
  const [year, time] = rest.split(" ");
  return new Date(`${year}-${month}-${day}T${time}`);
}

// find latest
const validDates = dates.map(parseDate).filter(d => d !== null);
const latestDate = new Date(Math.max(...validDates));

// format back into "DD-MM-YYYY HH:mm"
const pad = n => String(n).padStart(2, "0");
const latestFormatted = `${pad(latestDate.getDate())}-${pad(latestDate.getMonth() + 1)}-${latestDate.getFullYear()} ${pad(latestDate.getHours())}:${pad(latestDate.getMinutes())}`;

multiselect1.setValue([latestFormatted]);

return latestFormatted;
