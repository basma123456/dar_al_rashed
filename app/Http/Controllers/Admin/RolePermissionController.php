<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Module;
use App\Models\Permission;
use App\Models\Role;
use App\Models\RoleModule;
use App\Models\RolePermission;
use Illuminate\Http\Request;

class RolePermissionController extends Controller
{
    protected $name;

    public function __construct()
    {
        if (app()->getLocale() == 'ar') {
            $this->name = 'name_ar';
        } else {
            $this->name = 'name';
        }
    }

    public function index(Request $request, Role $role)
    {
        $modules = Module::with('permission')->with('roleModule', function ($q) use ($role) {
            $q->where('role_id', $role->id)->limit(1);
        })->get();
        $name = $this->name;
        return view('admin/permissions/permissions', compact('modules', 'name', 'role'));
    }


//    public function updateOrCreate(Request $request, Role $role)
//    {
//        $request->validate([
//            'permission_id' => ['nullable', 'array'],
//            'permission_id.*' => ['nullable', 'integer', 'exists:customized_permissions,id'],
//            'module_id' => ['nullable', 'array'],
//            'module_id.*' => ['nullable', 'integer', 'exists:modules,id'],
//        ]);
//        foreach ($request->module as $key => $val) {
//            if ($request->permission_id[$key] > 0) {
//                Permission::where('module_id', $request->module_id[$key])->update(["show" => $val['show'] ?? 0,
//                    "add" => $val['add'] ?? 0,
//                    "edit" => $val['edit'] ?? 0,
//                    "delete" => $val['delete'] ?? 0,
//                    "active" => $val['active'] ?? 0,
//                    "print" => $val['print'] ?? 0,
//                    "list" => $val['list'] ?? 0,
//                    'module_id' => $request->module_id[$key]
//                ]);
//            } else {
//                $permission = Permission::create(["show" => $val['show'] ?? 0,
//                    "add" => $val['add'] ?? 0,
//                    "edit" => $val['edit'] ?? 0,
//                    "delete" => $val['delete'] ?? 0,
//                    "active" => $val['active'] ?? 0,
//                    "print" => $val['print'] ?? 0,
//                    "list" => $val['list'] ?? 0,
//                    'module_id' => $request->module_id[$key]
//
//                ]);
//                RolePermission::create([
//                    'role_id' => $role->id,
//                    'permission_id' => $permission->id,
//                ]);
//            }
//        }
//        return redirect()->back()->with('success', __('admin.success'));
//
//    }


    public function updateOrCreate(Request $request, Role $role)
    {
        $request->validate([
//            'permission_id' => ['nullable', 'array'],
//            'permission_id.*' => ['nullable', 'integer', 'exists:customized_permissions,id'],
            'module_id' => ['nullable', 'array'],
            'module_id.*' => ['nullable', 'integer', 'exists:modules,id'],
        ]);
//        <!----------------------------------->
//        $mods = [];
//        if ($request->modules && $request->permission) {
//
//            foreach ($request->modules as $module) {
//                // $mods[] = RoleModule::create(['role_id' => $roleId, 'module_code' => $module, 'permissions' => 'view']);
//                if ($request->permission && isset($request->permission[$module])) {
//                    $perms = implode(',', array_merge(['view'], $request->permission[$module]));
//                    $mods[] = RoleModule::create(['role_id' => $roleId, 'module_code' => $module, 'permissions' => $perms]);
//                }
//            }
//
//            $role->modules()->saveMany($mods);
//<!----------------------------------->


//        $data = collect($request->permission_id)
//            ->map(fn ($permissionId, $title) => [
//                'title' => $title,
//                'permission_id' => $permissionId,
//                'role_id' => $role->id,
//            ])
//            ->values()
//            ->toArray();
//
//        PermissionAssignment::upsert(
//            $data,
//            ['role_id', 'title'], // unique keys
//            ['permission_id']     // fields to update
//        );
//
//// delete missing ones
//        $role->permissions()
//            ->whereNotIn('title', array_keys($request->permission_id))
//            ->delete();
//

        if (empty($request->module)) {
            return redirect()->back()->with('error', __('admin.no_action'));
        }
//        foreach ($request->module as $key => $val) {  //here
////            if ($request->role_module_id[$key] > 0) {
////                RoleModule::where('module_id', $request->module_id[$key])->update(['permissions' =>
////                    json_encode($request->module[$key], true)
////                ]);
////            } else {
////                RoleModule::create([
///
///
////                    'role_id' => $role->id,
////                    'module_id' => $request->module_id[$key],
////                    'permissions' => json_encode($request->module[$key], true),
////                ]);
////            }
//
//            RoleModule::where('module_id', $key)->update(['permissions' =>
//                json_encode($val, true)
//            ]);
//
//
  //      dd($role->roleModule);
//            RoleModule::where([
//                'role_id' => $role->id,
//                'module_id' => $request->module[0],
//            ]);
////
//        }

        $role->roleModules()->delete();
        $data = collect($request->module)
            ->map(fn ($perms ,$moduleId) => [
                'module_id' => $moduleId,
                'permissions' =>  json_encode($perms, true),
                'role_id' => $role->id,
            ])
            ->values()
            ->toArray();

        RoleModule::upsert(
$data,            [  'id'], // unique keys
            ['permissions']     // fields to update
        );

        return redirect()->back()->with('success', __('admin.success'));
    }



    //RoleModule::where('role_id', $roleId)->delete();
//$mods = [];
//if ($request->modules && $request->permission) {
//
//foreach ($request->modules as $module) {
//    // $mods[] = RoleModule::create(['role_id' => $roleId, 'module_code' => $module, 'permissions' => 'view']);
//if ($request->permission && isset($request->permission[$module])) {
//$perms = implode(',', array_merge(['view'], $request->permission[$module]));
//$mods[] = RoleModule::create(['role_id' => $roleId, 'module_code' => $module, 'permissions' => $perms]);
//}
//}
//
//$role->modules()->saveMany($mods);
//}

}
