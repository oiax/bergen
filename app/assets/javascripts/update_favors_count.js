function update_favors_count() {
  $('.favor-count').each(function(index, _) {
    const elem = $(".favor-count").eq(index);
    $.get(elem.data("path"), (data) => {
      console.log(data.message);
    })
  });
}

$(document).ready(() => {
  setInterval(update_favors_count, 1000 * 5)
})
