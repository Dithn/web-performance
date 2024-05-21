<script>
const resize = (tagName) => {
  let elements = document.getElementsByTagName(tagName);
  for (let elem of elements) {
    elem.style.height = "";
    elem.style.width = "800px";
  }
};
window.addEventListener('load', () => {
  resize("img");
  resize("span");
});
</script>
