CKEDITOR.editorConfig = function(config) {
  config.language = 'en';
  config.width = '700';
  config.filebrowserBrowseUrl = "/ckeditor/pictures";
  config.filebrowserImageBrowseLinkUrl = "/ckeditor/attachment_files";
  config.filebrowserImageBrowseUrl = "/ckeditor/pictures";
  config.filebrowserImageUploadUrl = "/ckeditor/pictures";
  config.filebrowserUploadUrl = "/ckeditor/attachment_files";
  config.extraAllowedContent = 'a[data-lightbox,data-title,data-lightbox-saved]';
  config.extraPlugins = 'youtube,lightbox';



  config.toolbar_Pure = [
    '/', {
      name: 'basicstyles',
      items: ['Bold', 'Italic', 'Underline', 'Strike', 'Subscript', 'Superscript', '-', 'RemoveFormat', 'Youtube']
    }, {
      name: 'paragraph',
      items: ['NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-', 'Blockquote', '-', 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock', '-', 'BidiLtr', 'BidiRtl']
    }, {
      name: 'links',
      items: ['Link', 'Unlink']
    }, '/', {
      name: 'styles',
      items: ['Styles', 'Format', 'Font', 'FontSize']
    }, {
      name: 'colors',
      items: ['TextColor', 'BGColor']
    }, {
      name: 'insert',
      items: ['Image', 'Youtube', 'Table', 'lightbox']
    }
  ];
  config.toolbar = 'Pure';

  return true;
};
