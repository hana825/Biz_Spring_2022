document.addEventListener("DOMContentLoaded", () => {
  const addrs_table = document.querySelector("table.addrs");

  addrs_table?.addEventListener("click", (e) => {
    const td = e.target;
    if (td.tagName === "TD") {
      const tr = td.closest("TR");
      const a_seq = tr.dataset.a_seq;
      document.location.href = `${rootPath}/detail?seq=${a_seq}`;
    }
  });
});
