function update_favors_count() {
  $('.favor-count').each(function(index, _) {
    const elem = $(".favor-count").eq(index);
    $.get(elem.data("path"), (data) => {
    })
  });
}

$(document).ready(() => {
  setInterval(update_favors_count, 1000 * 5)
})
