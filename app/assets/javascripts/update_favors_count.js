function update_favors_count() {
  $('.favor-count').each(function(index, _) {
    console.log(index);
  });
}

$(document).ready(() => {
  setInterval(update_favors_count, 1000 * 5)
})
