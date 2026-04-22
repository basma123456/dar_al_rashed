@extends('admin.master')
@section('page_class' , 'permissions-pg')

@section('styles' )
    <!-- Sweet Alert css-->
    <link href="{{asset('admin/assets/vendor/sweetalert2/sweetalert2.min.css')}}" rel="stylesheet" type="text/css"/>
@endsection

@section('content')



    <div class="page-container pt-3">
        <div class="row">
            <div class="col-12">
                @foreach ($errors->all() as $error)
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        <strong>{{ $error }}</strong>
                        <button type="button" class="btn-close" data-bs-dismiss="alert"
                                aria-label="Close"></button>
                    </div>
                @endforeach

                <div class="card">
                    <div class="card-header border-bottom card-tabs d-flex flex-wrap align-items-center gap-2">
                        <div class="flex-grow-1">
                            <h4 class="header-title text-black">مجموعة الصلاحيات : Super Admin</h4>
                        </div>


                        <div class="table-main-btn mx-auto">
                            <a href="#" class="btn main-btn contact-us-btn fs-6 d-flex align-items-center gap-1"
                               type="button">
                                <svg xmlns="http://www.w3.org/2000/svg"
                                     width="16" height="16"
                                     viewBox="0 0 24 24"
                                     fill="none"
                                     stroke="currentColor"
                                     stroke-width="2"
                                     stroke-linecap="round"
                                     stroke-linejoin="round"
                                     class="back-btn-svg">
                                    <path d="M5 12h14"></path>
                                    <polyline points="12 5 19 12 12 19"></polyline>
                                </svg>
                                رجوع
                            </a>
                        </div>
                    </div>


                    <form class="card-body" action="{{route('admin.roles_permission_store_update' , ['role' => $role])}}" method="post">
                        @csrf
                        <div class="row g-3">

{{--                            "0" => array('can_do' => "add", 'can_do_label' => "Add - اضافة" , "can_do_label_ar" => 'اضافة'  , "can_do_label_en" => 'Add'),--}}
{{--                            "1" => array('can_do' => "edit", 'can_do_label' => " Edit - تعديل  "  , "can_do_label_ar" => 'تعديل'  , "can_do_label_en" => 'Edit'),--}}
{{--                            "2" => array('can_do' => "delete", 'can_do_label' => " Delete - حذف " , "can_do_label_ar" => 'الغاء'  , "can_do_label_en" => 'Delete'),--}}
{{--                            "3" => array('can_do' => "print", 'can_do_label' => "Print - طباعه " , "can_do_label_ar" => 'طباعة'  , "can_do_label_en" => 'Print'),--}}
{{--                            "4" => array('can_do' => "active", 'can_do_label' => "Activation - تفعيل  " , "can_do_label_ar" => 'تفعيل'  , "can_do_label_en" => 'Activation'),--}}
{{--                            "5" => array('can_do' => "dash", 'can_do_label' => "dashboard -  احصائيات" , "can_do_label_ar" => 'احائيات'  , "can_do_label_en" => 'Dashboard'),--}}
{{--                            "6" => array('can_do' => "show", 'can_do_label' => "show -  عرض" , "can_do_label_ar" => 'عرض'  , "can_do_label_en" => 'Show'),--}}
{{--                            "7" => array('can_do' => "show_print", 'can_do_label' => "Print Show Item - طباعه عرض العنصر " , "can_do_label_ar" => 'طباعة عرض عنصر'  , "can_do_label_en" => 'Print Item'),--}}

                            @foreach($modules as $item)
                                <div class="col-12">
                                    <div class="w-100 border rounded p-3 shadow-lg">

                                        <div class="form-check mb-3 pb-2 collection-head">
                                            <input class="form-check-input"    {{optional($item->permission)->show == 1 ? 'checked' : ''}}  name="module[{{$item->title}}][show]" type="checkbox" value="show"  id="users">
                                            <label class="form-check-label ms-2 fw-bold" for="users">
                                                {{$item->$name}}

                                                <input type="hidden" value="{{$item->id}}" name="module_id[{{$item->title}}]">
                                                <input type="text" value="{{optional($item->permission)->id ?? 0}}" class="d-none" name="permission_id[{{$item->title}}]">

                                                <input type="hidden" name="role_id" value="5">

{{--                                                <input class="form-check-input child d-none" name="module[{{$item->title}}][mod_id]" type="checkbox" checked  value="{{$item->id}}"--}}
{{--                                                             id="users-role-perm">--}}
                                            </label>
                                        </div>

                                        <div class="row users-inputs">
{{--                                            <div class="col-lg-3 col-md-6 col-12">--}}
{{--                                                <div class="form-check">--}}
{{--                                                    <input class="form-check-input child" name="module[{{$item->title}}][show]" type="checkbox" value="show"--}}
{{--                                                           {{optional($item->permission)->show == 1 ? 'checked' : ''}}      id="users-view">--}}
{{--                                                          <label class="form-check-label ms-2" for="users-view">عرض ---}}
{{--                                                              View</label>--}}
{{--                                                      </div>--}}
{{--                                                  </div>--}}

                                                  <div class="col-lg-3 col-md-6 col-12">
                                                      <div class="form-check">
                                                          <input class="form-check-input child" name="module[{{$item->title}}][add]" type="checkbox" value="add"
                                                                 {{optional($item->permission)->add == 1 ? 'checked' : ''}}          id="users-add">
                                                    <label class="form-check-label ms-2" for="users-add">إضافة -
                                                        Add</label>
                                                </div>
                                            </div>

                                            <div class="col-lg-3 col-md-6 col-12">
                                                <div class="form-check">
                                                    <input class="form-check-input child" name="module[{{$item->title}}][edit]" type="checkbox" value="edit"
                                                           {{optional($item->permission)->edit == 1 ? 'checked' : ''}}         id="users-edit">
                                                    <label class="form-check-label ms-2" for="users-edit">تعديل -
                                                        Edit</label>
                                                </div>
                                            </div>

                                            <div class="col-lg-3 col-md-6 col-12">
                                                <div class="form-check">
                                                    <input class="form-check-input child" name="module[{{$item->title}}][delete]" type="checkbox" value="delete"
                                                           {{optional($item->permission)->delete == 1 ? 'checked' : ''}}            id="users-del">
                                                    <label class="form-check-label ms-2" for="users-del">حذف -
                                                        Delete</label>
                                                </div>
                                            </div>




                                            <div class="col-lg-3 col-md-6 col-12">
                                                <div class="form-check permissions-inputs-margin-top">
                                                    <input class="form-check-input child" name="module[{{$item->title}}][active]" type="checkbox" value="active"
                                                           {{optional($item->permission)->active == 1 ? 'checked' : ''}}         id="users-role-perm">
                                                    <label class="form-check-label ms-2" for="users-role-perm">    Activate/Deactivate  -  تنشيط/الغاء تنشيط
                                                               </label>
                                                </div>
                                            </div>

                                            <div class="col-lg-3 col-md-6 col-12">
                                                <div class="form-check permissions-inputs-margin-top">
                                                    <input class="form-check-input child" name="module[{{$item->title}}][print]" type="checkbox" value="print"
                                                           {{optional($item->permission)->print == 1 ? 'checked' : ''}}         id="users-role-perm">
                                                    <label class="form-check-label ms-2" for="users-role-perm">
                                                           Print / طباعة    </label>
                                                </div>
                                            </div>


                                            <div class="col-lg-3 col-md-6 col-12">
                                                <div class="form-check permissions-inputs-margin-top">
                                                    <input class="form-check-input child" name="module[{{$item->title}}][list]" type="checkbox" value="list"
                                                           {{optional($item->permission)->list == 1 ? 'checked' : ''}}          id="users-role-perm">
                                                    <label class="form-check-label ms-2" for="users-role-perm">
                                                           Show List /  عرض القائمة  </label>
                                                </div>
                                            </div>

                                        </div>

                                    </div>
                                </div>
                            @endforeach
                            <div class="col-12 d-flex justify-content-end gap-2 flex-column flex-md-row">
                                <button type="submit" class="btn main-btn edit-btn fw-bold fs-6">تعديل</button>
                            </div>

                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>
@endsection
@section('scripts')
    <script src="{{asset('admin/js/permissions.js')}}"></script>
@endsection
