% include('header.tpl', title='Create New Task')

%#template for the form for a new task
<h4><i class="fa fa-database"></i> Add a new task to the ToDo list:</h4>
<form action="/new_task" method="GET" class="form-inline">
  <div class="form-group">
    <label class="label control-label" for="task">Task name</label>
    <input type="text" maxlength="100" name="task" class="form-control col-md-4">
  </div>
  <div class="form-group">
    <button type="submit" name="save" value="save" class="btn btn-md btn-primary"><i class="fa fa-save"></i> Save Task</button>
    <a href="/todo" class="btn btn-default btn-md"><i class="fa fa-times-circle"></i> Cancel</a>
  </div>
</form>


% include('footer.tpl')
