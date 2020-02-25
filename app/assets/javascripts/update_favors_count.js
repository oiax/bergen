function update_favors_count() {
  $('.favor-count').each(function(index, _) {
    const elem = $(".favor-count").eq(index);
    console.log(elem);
    console.log(elem.data("path"));
  });
}

$(document).ready(() => {
  setInterval(update_favors_count, 1000 * 5)
})
