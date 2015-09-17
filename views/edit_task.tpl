%#template for editing a task
%#the template expects to receive a value for "no" as well a "old", the text of the selected ToDo item

% include('header.tpl', title='Edit Task')

      <h4><i class="fa fa-check-square"></i> Edit Task</h4>
      <p>Edit the task with ID = {{no}}</p>
        <form action="/edit/{{no}}" method="get" class="form-horizontal">
          <div class="form-group">
            <label class="label control-label" for="task">Task name</label>
            <input type="text" name="task" value="{{old[0]}}" size="100" maxlength="100" class="form-control">
          </div>

          <div class="form-group">
            <label class="label control-label" for="status">Status</label>
            <select name="status" class="form-control">
              <option>open</option>
              <option>closed</option>
            </select>
          </div>

          <br/>
            <input type="submit" name="save" value="save" class="btn btn-md btn-primary">
        </form>

% include('footer.tpl')
