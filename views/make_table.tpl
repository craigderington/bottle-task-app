% include('header.tpl', title='View All Tasks')

%#template to generate a HTML table from a list of tuples (or list of lists, or tuple of tuples or ...)
<h4><i class="fa fa-database"></i> The open task items are as follows:</h4>
<div class="panel panel-default">
%for row in rows:
  <div class="panel-body">
    <ul>
      %for col in row:
        <li>{{col}}</li>
        %end
    </ul>
  </div>
%end
</div>

% include('footer.tpl')
