const buildHTML = (XHR) => {
  const item = XHR.response.post;
  const html = `
  <div class="list-text d-flex justify-content-between p-2 my-1">
    <label>
      <input type="checkbox">
      ${ item.list_text }
    </label>
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
      list.insertAdjacentHTML("beforeend", buildHTML(XHR));
      location.reload();
    };
  });
};

window.addEventListener('load', list);