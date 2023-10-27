const now = new Date();

function show() {
  fetch("./example.json")
    .then((response) => response.json())
    .then((data) => {
      const tbody = document.getElementById("data-table-body");
      const headersRow = document.getElementById("table-headers");

      const th = document.createElement("th");
      th.textContent = "#"
      th.setAttribute("scope", "col");
      th.className = "table-primary"
      headersRow.appendChild(th);

      Object.keys(data[0]).forEach((fieldName) => {
        const th = document.createElement("th");
        th.textContent = fieldName;
        th.setAttribute("scope", "col");
        th.className = "table-primary"
        headersRow.appendChild(th);
      });

      data.forEach((item, index) => {
        const row = document.createElement("tr");
        const cell = document.createElement("td");
        cell.textContent = index + 1;
        cell.setAttribute("scope", "row");
        row.appendChild(cell);

        Object.keys(item).forEach((fieldName) => {
          const cell = document.createElement("td");
          cell.textContent = item[fieldName];
          row.appendChild(cell);
        });

        tbody.appendChild(row);
      });
    })
    .catch((error) => {
      console.error("Gagal mengambil data JSON: " + error);
    });
}

function dateNow() {
  const dateNowElements = document.getElementsByClassName("date--now--dd-mm-yyyy")

  Array.from(dateNowElements).forEach((element) => {
    element.textContent += formatDate(now, "-");
  })

}

function getYear() {
  const dateNowElements = document.getElementsByClassName("date--now-yyyy")

  Array.from(dateNowElements).forEach((element) => {
    element.textContent += now.getFullYear()
  })
}

function formatDate(date, separator) {
  const day = String(date.getDate()).padStart(2, '0');
  const month = String(date.getMonth() + 1).padStart(2, '0');
  const year = date.getFullYear();
  return `${day}${separator}${month}${separator}${year}`;
}

window.onload = () => {
  show();
  dateNow();
  getYear();
};
