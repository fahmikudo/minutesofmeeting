@extends('layouts.app')

@section('content')
<div id="wrapper">
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header">MoM</h3>
            </div>
        </div>
        <div class="row">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <i class="fa fa-group fa-fw"></i> nama meeting
                </div>
                <div class="panel-body">
                    <ul class="nav nav-tabs">
                        <li><a href="{{ route('daftar-peserta-index', $id) }}">Daftar Peserta</a></li>
                        <li><a href="{{ route('pokok-bahasan-index', $id) }}">Pokok Bahasan</a></li>
                        <li class="active"><a href="#">Detail Pokok Bahasan</a></li>
                        <li><a href="{{ route('gallery-index', $id) }}">Gallery</a></li>
                        <li><a href="{{ route('mom-kesimpulan', $id) }}">Kesimpulan</a></li>
                    </ul>
                </div>
                <div class="panel-body">
                    <h1>Daftar Peserta</h1>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
