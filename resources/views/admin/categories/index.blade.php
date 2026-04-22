@extends('admin.master')
@section('page_class' , 'add-pg')

@section('styles' )

    <!----------------------select2------------------>
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet"/>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
    <!-------------------select2 --------------------->
@endsection

@section('content')
    <div class="page-container pt-3">

        <div class="row">
            <a href="{{ route('admin.cats.add', [ 'module' => $module ]) }}"
               class="btn-fancy btn-edit w-25"
               data-bs-toggle="tooltip">
                @lang('admin.add_cat') ( {{$module}} )
            </a>
            <br>
            <div class="table-responsive">
                <table class="table table-hover table-striped-columns mb-0 align-middle mx-auto">
                    <thead class="bg-light-subtle">
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">@lang('admin.photo')</th>
                        <th scope="col">@lang('admin.title') (EN)</th>
                        <th scope="col">@lang('admin.title') (AR)</th>
                        <th scope="col">@lang('admin.controls')</th>
                    </tr>
                    </thead>
                    <tbody>


                    <div>
                        @foreach($cats as $key => $cat)

                            <tr>
                                <td  class="text-center">{{$key+1}}</td>
                                <td class="text-center"><img width="100" height="100" src="{{$cat->pic}}" />
                                </td>
                                <td class="text-center">{{$cat->name}}
                                </td>

                                <td class="text-center">{{$cat->name_ar}}
                                </td>

                                <td class="text-center pe-3">
                                    <div class="btn-group-fancy second-choice" role="group">
                                        <a href="{{ route('admin.cats.edit', ['category' => $cat , 'module' => $module ]) }}"
                                           class="btn-fancy btn-edit"
                                           data-bs-toggle="tooltip"
                                           title="@lang('admin.edit_post')">
                                            <i class="ri-edit-box-line"></i>
                                        </a>
                                    </div>
                                </td>
                            </tr>

                        @endforeach
                    </div>
                    </tbody>
                </table>
            </div>

        </div>


    </div>
@endsection


@section('scripts')
    <script src="{{asset('admin/js/add.js')}}"></script>
    <script>
        $(".select2").select2({
            // minimumInputLength: 1
        });


    </script>
@endsection

