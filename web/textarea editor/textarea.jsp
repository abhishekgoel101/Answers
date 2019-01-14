<!DOCTYPE html>
<html>
<head>
   <% 
       String p="/IP_Programming_Discussion_Platform/textarea editor/"; 
       String r="/IP_Programming_Discussion_Platform/remote/";
   %>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0"/>
  <link rel="stylesheet" href="<%=r%>font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="<%=p%>css/froala_editor.css">
  <link rel="stylesheet" href="<%=p%>css/froala_style.css">
  <link rel="stylesheet" href="<%=p%>css/plugins/code_view.css">
  <link rel="stylesheet" href="<%=p%>css/plugins/image_manager.css">
  <link rel="stylesheet" href="<%=p%>css/plugins/image.css">
  <link rel="stylesheet" href="<%=p%>css/plugins/table.css">
  <link rel="stylesheet" href="<%=p%>css/plugins/video.css">
  <link rel="stylesheet" href="<%=r%>css/codemirror.min.css">


  <style>

    div#editor {
      width: 100%;
      text-align: left;
      margin-top: 8px;
    }
    
  </style>
  
  
  <script type="text/javascript" src="<%=r%>js/jquery.min.js"></script>
  <script type="text/javascript" src="<%=r%>js/codemirror.min.js"></script>
  <script type="text/javascript" src="<%=r%>js/xml.min.js"></script>
  <script type="text/javascript" src="<%=p%>js/froala_editor.min.js"></script>
  <script type="text/javascript" src="<%=p%>js/plugins/align.min.js"></script>
  <script type="text/javascript" src="<%=p%>js/plugins/code_beautifier.min.js"></script>
  <script type="text/javascript" src="<%=p%>js/plugins/code_view.min.js"></script>
  <script type="text/javascript" src="<%=p%>js/plugins/draggable.min.js"></script>
  <script type="text/javascript" src="<%=p%>js/plugins/image.min.js"></script>
  <script type="text/javascript" src="<%=p%>js/plugins/image_manager.min.js"></script>
  <script type="text/javascript" src="<%=p%>js/plugins/link.min.js"></script>
  <script type="text/javascript" src="<%=p%>js/plugins/lists.min.js"></script>
  <script type="text/javascript" src="<%=p%>js/plugins/paragraph_format.min.js"></script>
  <script type="text/javascript" src="<%=p%>js/plugins/paragraph_style.min.js"></script>
  <script type="text/javascript" src="<%=p%>js/plugins/table.min.js"></script>
  <script type="text/javascript" src="<%=p%>js/plugins/video.min.js"></script>
  <script type="text/javascript" src="<%=p%>js/plugins/url.min.js"></script>
  <script type="text/javascript" src="<%=p%>js/plugins/entities.min.js"></script>

  <script>
      $(function(){
        $('#edit')
          .on('froalaEditor.initialized', function (e, editor) {
            $('#edit').parents('form').on('submit', function () {
              console.log($('#edit').val());
              return true;
            });
          })
          .froalaEditor({enter: $.FroalaEditor.ENTER_P, placeholderText: null});
      });
  </script>
</head>

<body>
    <div id="editor">
   
        <textarea id='edit' name="description" placeholder="Enter Description for your Question" required>
      </textarea>

  </div>
    
</body>
</html>
