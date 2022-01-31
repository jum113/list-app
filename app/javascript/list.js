const buildHTML = (XHR) => {
  const item = XHR.response.post;
  const html = `
    <div class="list-text">
      <input type="checkbox">
      <label>${ item.list_text }</label>
    </div>`;
  return html;
};

function list(){
  const submit = document.getElementById("list-submit");
  submit.addEventListener('click', (e) => {
    e.preventDefault();
    const form = document.getElementById("list-form");
    const formData = new FormData(form);
    const XHR = new XMLHttpRequest();
    XHR.open("POST", "/lists", true);
    XHR.responseType = "json";
    XHR.send(formData);
    XHR.onload = () => {
      if (XHR.status != 200) {
        alert(`Error ${XHR.status}: ${XHR.statusText}`);
        return null;
      };
      const list = document.getElementById("list-text");
      list.insertAdjacentHTML("afterbegin", buildHTML(XHR));
      window.refresh();
    };
  });
};

window.addEventListener('load', list);