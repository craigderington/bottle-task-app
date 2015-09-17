% include('header.tpl', title='Create New Task')

%#template for the form for a new task
<h4><i class="fa fa-database">Add a new task to the ToDo list:</h4>
<form action="/new_task" method="GET" class="form-inline">
  <div class="form-group">
    <label class="label control-label" for="task">Task name</label>
    <input type="text" size="100" maxlength="100" name="task" class="form-control">
    <button type="submit" name="save" value="save" class="btn btn-md btn-primary"><i class="fa fa-save"></i> Save Task</button>
  </div>
</form>


% include('footer.tpl')
