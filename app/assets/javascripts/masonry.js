$(document).on('ready page:change', function(){
  $('#masonry-container').imagesLoaded(function(){
    $('#masonry-container').masonry({
      itemSelector: '.box',
      isAnimated: true,
      isFitWidth: true,
      columnWidth: function( containerWidth ) {
    return containerWidth / 4;
  }
    });
  });
});