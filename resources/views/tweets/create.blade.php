@extends('layout')
@section ('content')
<form action="/tweets" method="POST">
@csrf
<div class="form-group">
    <textarea name="body" id="body" class="form-control rounded-0" rows="4"></textarea>
    <button type="submit" class="btn btn-primary">Tweet it!</button>
</form>
</div>
@endsection
