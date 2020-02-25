function update_favors_count() {
  $('.favor-count').each(function(index, _) {
    const elem = $(".favor-count").eq(index);
    $.get(elem.data("path"), (data) => {
      // もし良いね済みならばdata-methodをdeleteに、アイコンのクラスをfasに変更
      // 良いね済みでなければdata-methodをpostに、アイコンのクラスをfarに変更
      if (data.am_i_favoring) {
        $(".buttons > a").eq(index).attr("data-method", "delete");
        $(".buttons > a > i").eq(index).removeClass("far");
        $(".buttons > a > i").eq(index).addClass("fas");
      } else {
        $(".buttons > a").eq(index).attr("data-method", "post");
        $(".buttons > a > i").eq(index).removeClass("fas");
        $(".buttons > a > i").eq(index).addClass("far");
      }
      // 良いね件数を書き換える
      $(this).text(data.favors_count);
    })
  });
}

$(document).ready(() => {
  setInterval(update_favors_count, 1000 * 5)
})
