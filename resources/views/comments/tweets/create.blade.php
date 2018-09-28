@extends ('layout')
@section ('content')
<form action="/tweets" method="POST">
{{csrf_field() }}
    <textarea name="body" id="body" class="form-control"></textarea>
    <button type="submit" class="btn btn-primary">Tweet it!</button>
</form>
@endsection
