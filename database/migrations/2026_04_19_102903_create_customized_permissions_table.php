<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('customized_permissions', function (Blueprint $table) {
            $table->id();
            $table->unsignedInteger('module_id')->nullable();
            $table->foreign('module_id')
                ->references('id')
                ->on('modules')
//                ->nullOnDelete()
                ->cascadeOnUpdate();
            $table->boolean('add')->default(false);
            $table->boolean('edit')->default(false);
            $table->boolean('delete')->default(false);
            $table->boolean('print')->default(false);
            $table->boolean('active')->default(false);
            $table->boolean('show')->default(false);
            $table->boolean('list')->default(false);

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('customized_permissions');
    }
};
//"0" => array('can_do' => "add", 'can_do_label' => "Add - اضافة" , "can_do_label_ar" => 'اضافة'  , "can_do_label_en" => 'Add'),
//                "1" => array('can_do' => "edit", 'can_do_label' => " Edit - تعديل  "  , "can_do_label_ar" => 'تعديل'  , "can_do_label_en" => 'Edit'),
//                "2" => array('can_do' => "delete", 'can_do_label' => " Delete - حذف " , "can_do_label_ar" => 'الغاء'  , "can_do_label_en" => 'Delete'),
//                "3" => array('can_do' => "print", 'can_do_label' => "Print - طباعه " , "can_do_label_ar" => 'طباعة'  , "can_do_label_en" => 'Print'),
//                "4" => array('can_do' => "active", 'can_do_label' => "Activation - تفعيل  " , "can_do_label_ar" => 'تفعيل'  , "can_do_label_en" => 'Activation'),
//                "5" => array('can_do' => "dash", 'can_do_label' => "dashboard -  احصائيات" , "can_do_label_ar" => 'احائيات'  , "can_do_label_en" => 'Dashboard'),
//                "6" => array('can_do' => "show", 'can_do_label' => "show -  عرض" , "can_do_label_ar" => 'عرض'  , "can_do_label_en" => 'Show'),
//                "7" => array('can_do' => "show_print", 'can_do_label' => "Print Show Item - طباعه عرض العنصر " , "can_do_label_ar" => 'طباعة عرض عنصر'  , "can_do_label_en" => 'Print Item'),
