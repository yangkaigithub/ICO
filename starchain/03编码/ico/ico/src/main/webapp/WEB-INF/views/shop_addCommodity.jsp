<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/8/31
  Time: 22:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Bootstrap 实例 - 输入框组的大小</title>
    <link rel="stylesheet" href="/resource/css/bootstrap/css/bootstrap-responsive.min.css">
    <link rel="stylesheet" href="/resource/css/bootstrap/css/bootstrap.min.css">
    <script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

<form class="form-horizontal">
    <fieldset>
        <div id="legend" class="">
            <legend class="">表单名</legend>
        </div>
        <div class="control-group">
            <label class="control-label">File Button</label>

            <!-- File Upload -->
            <div class="controls">
                <input class="input-file" id="fileInput" type="file">
            </div>
        </div><div class="control-group">

        <!-- Text input-->
        <%--<label class="control-label" for="input01">Text input</label>--%>
        <%--<div class="controls">--%>
            <%--<input type="text" placeholder="placeholder" class="input-xlarge">--%>
            <%--<p class="help-block">Supporting help text</p>--%>
        <%--</div>--%>
    <%--</div>--%>
        <div class="control-group" >

            <!-- Search input-->
            <label class="control-label">Search input</label>
            <div class="controls">
                <input type="text" placeholder="placeholder" class="input-xlarge search-query">
                <p class="help-block">Supporting help text</p>
            </div>

        </div>

        <div class="control-group">
            <!-- Prepended text-->
            <label class="control-label">Prepended text</label>
            <div class="controls">
                <div class="input-prepend">
                    <span class="add-on">^_^</span>
                    <input class="span2" placeholder="placeholder" id="prependedInput" type="text">
                </div>
                <p class="help-block">Supporting help text</p>
            </div>

        </div>

        <div class="control-group">
            <label class="control-label">Inline radios</label>
            <div class="controls">

                <!-- Inline Radios -->
                <label class="radio inline">
                    <input type="radio" value="1" checked="checked" name="group">
                    1
                </label>
                <label class="radio inline">
                    <input type="radio" value="2" name="group">
                    2
                </label>
                <label class="radio inline">
                    <input type="radio" value="3">
                    3
                </label>
            </div>
        </div><div class="control-group">

        <!-- Appended input-->
        <label class="control-label">Appended text</label>
        <div class="controls">
            <div class="input-append">
                <input class="span2" placeholder="placeholder" type="text">
                <span class="add-on">^_^</span>
            </div>
            <p class="help-block">Supporting help text</p>
        </div>

    </div>

        <div class="control-group">

            <!-- Prepended checkbox -->
            <label class="control-label">Prepended checkbox</label>
            <div class="controls">
                <div class="input-prepend">
              <span class="add-on">
                <label class="checkbox">
                  <input type="checkbox" class="">
                </label>
              </span>
                    <input class="span2" placeholder="placeholder" type="text">
                </div>
                <p class="help-block">Supporting help text</p>
            </div>

        </div>

        <div class="control-group">

            <!-- Appended checkbox -->
            <label class="control-label">Append checkbox</label>
            <div class="controls">
                <div class="input-append">
                    <input class="span2" placeholder="placeholder" type="text">
                    <span class="add-on">
                <label class="checkbox" for="appendedCheckbox">
                  <input type="checkbox" class="">
                </label>
              </span>
                </div>
                <p class="help-block">Supporting help text</p>
            </div>
        </div>

        <div class="control-group">

            <!-- Textarea -->
            <label class="control-label">Textarea</label>
            <div class="controls">
                <div class="textarea">
                    <textarea type="" class=""> </textarea>
                </div>
            </div>
        </div>

        <div class="control-group">
            <label class="control-label">Checkboxes</label>
            <div class="controls">

                <!-- Multiple Checkboxes -->
                <label class="checkbox">
                    <input type="checkbox" value="Option one">
                    Option one
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Option two">
                    Option two
                </label>
            </div>

        </div>

        <div class="control-group">
            <label class="control-label">Radio buttons</label>
            <div class="controls">

                <!-- Multiple Radios -->
                <label class="radio">
                    <input type="radio" value="Option one" name="group" checked="checked">
                    Option one
                </label>
                <label class="radio">
                    <input type="radio" value="Option two" name="group">
                    Option two
                </label>
            </div>

        </div>

        <div class="control-group">
            <label class="control-label">Inline Checkboxes</label>

            <!-- Multiple Checkboxes -->
            <div class="controls">
                <label class="checkbox inline">
                    <input type="checkbox" value="1"> 1
                </label>
                <label class="checkbox inline">
                    <input type="checkbox" value="2"> 2
                </label>
                <label class="checkbox inline">
                    <input type="checkbox" value="3"> 3
                </label>
            </div>

        </div>

        <div class="control-group">

            <!-- Select Basic -->
            <label class="control-label">Select - Basic</label>
            <div class="controls">
                <select class="input-xlarge">
                    <option>Enter</option>
                    <option>Your</option>
                    <option>Options</option>
                    <option>Here!</option>
                </select>
            </div>

        </div>

        <div class="control-group">

            <!-- Select Multiple -->
            <label class="control-label">Select - Multiple</label>
            <div class="controls">
                <select class="input-xlarge" multiple="multiple">
                    <option>Enter</option>
                    <option>Your</option>
                    <option>Options</option>
                    <option>Here!</option>
                </select>
            </div>
        </div>

        <div class="control-group">
            <label class="control-label">Button</label>

            <!-- Button -->
            <div class="controls">
                <button class="btn btn-success">Button</button>
            </div>
        </div>

    </fieldset>
</form>
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">

<div class="row">
    <div class="col-sm-6 col-md-3">
        <div class="thumbnail">
            <img src="/wp-content/uploads/2014/06/kittens.jpg"
                 alt="通用的占位符缩略图">
            <div class="caption">
                <h3>缩略图标签</h3>
                <p>一些示例文本。一些示例文本。</p>
                <p>
                    <a href="#" class="btn btn-primary" role="button">
                        按钮
                    </a>
                    <a href="#" class="btn btn-default" role="button">
                        按钮
                    </a>
                </p>
            </div>
        </div>
    </div>
    <div class="col-sm-6 col-md-3">
        <div class="thumbnail">
            <img src="/wp-content/uploads/2014/06/kittens.jpg"
                 alt="通用的占位符缩略图">
            <div class="caption">
                <h3>缩略图标签</h3>
                <p>一些示例文本。一些示例文本。</p>
                <p>
                    <a href="#" class="btn btn-primary" role="button">
                        按钮
                    </a>
                    <a href="#" class="btn btn-default" role="button">
                        按钮
                    </a>
                </p>
            </div>
        </div>
    </div>
    <div class="col-sm-6 col-md-3">
        <div class="thumbnail">
            <img src="/wp-content/uploads/2014/06/kittens.jpg"
                 alt="通用的占位符缩略图">
            <div class="caption">
                <h3>缩略图标签</h3>
                <p>一些示例文本。一些示例文本。</p>
                <p>
                    <a href="#" class="btn btn-primary" role="button">
                        按钮
                    </a>
                    <a href="#" class="btn btn-default" role="button">
                        按钮
                    </a>
                </p>
            </div>
        </div>
    </div>
    <div class="col-sm-6 col-md-3">
        <div class="thumbnail">
            <img src="/wp-content/uploads/2014/06/kittens.jpg"
                 alt="通用的占位符缩略图">
            <div class="caption">
                <h3>缩略图标签</h3>
                <p>一些示例文本。一些示例文本。</p>
                <p>
                    <a href="#" class="btn btn-primary" role="button">
                        按钮
                    </a>
                    <a href="#" class="btn btn-default" role="button">
                        按钮
                    </a>
                </p>
            </div>
        </div>
    </div>
</div>



</body>
</html>