% include('header.tpl', title='View All Tasks')

%#template to generate a HTML table from a list of tuples (or list of lists, or tuple of tuples or ...)
<h4><i class="fa fa-database"></i> The open task items are as follows:<span class="pull-right"><a href="/new_task"><i class="fa fa-plus-circle"></i> New Task</a></span></h4>
<div class="panel panel-default">
%for row in rows:
  <div class="panel-body">
    <ul style="list-style:none;">
      %for col in row:
        <li><i class="fa fa-check"></i> <a href="edit/">{{col}}</a></li>
      %end
    </ul>
  </div>
%end
</div>

% include('footer.tpl')
