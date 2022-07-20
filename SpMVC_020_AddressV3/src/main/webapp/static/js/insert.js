const form = document.querySelector("form");

form.addEventListener("submit", (e) => {
  e.preventDefault();
  const a_name = document.querySelector("input[name='a_name']");
  const a_tel = document.querySelector("input[name='a_tel']");
  const a_address = document.querySelector("input[name='a_address']");

  if (a_name.value === "") {
    alert("이름은 반드시 입력해야 합니다");
    a_name.focus();
    return false;
  }

  if (a_tel.value === "") {
    alert("전화번호는 반드시 입력해야 합니다");
    a_tel.focus();
    return false;
  }

  if (a_address.value === "") {
    alert("주소는 반드시 입력해야 합니다");
    a_address.focus();
    return false;
  }

  form.submit();
});
