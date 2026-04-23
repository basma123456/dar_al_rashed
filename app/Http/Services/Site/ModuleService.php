<?php

namespace App\Http\Services\Site;

use App\Models\Module;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Cache;
use Illuminate\Pagination\LengthAwarePaginator;

class ModuleService
{
    /**
     * Get module by ID
     */
    public function findById(int $id): Module
    {
        return Module::findOrFail($id);
    }

    /**
     * Get module by title
     */
//    public function findByTitle(string $title): Module
//    {
//        return Module::where('title', $title)->firstOrFail();
//    }
    public function findByTitle(string $title)
    {
        $module = Module::where('title', $title)->firstOrFail();
        return $module;
    }


    public function getModuleWithPosts(string $title): array
    {
        $module = $this->findByTitle($title);

        $posts = $module->posts()
            ->orderBy('p_order', 'desc')
            ->where('active', 'yes')
            ->with('postLangsCurrent');

        return [
            'module' => $module,
            'posts' => $posts,
        ];
    }


    /**
     * Get all modules (with optional filters)
     */
    public function getAll(array $filters = [])
    {
        $query = Module::query();

        // Filter by title
        if (!empty($filters['title'])) {
            $query->where('title', 'like', '%' . $filters['title'] . '%');
        }

        // Filter by status
        if (isset($filters['status'])) {
            $query->where('status', $filters['status']);
        }

        return $query->latest()->get();
    }

    /**
     * Paginate modules
     */
    public function paginate(int $perPage = 10, array $filters = []): LengthAwarePaginator
    {
        $query = Module::query();

        if (!empty($filters['title'])) {
            $query->where('title', 'like', '%' . $filters['title'] . '%');
        }

        return $query->latest()->paginate($perPage)->withQueryString();
    }

    /**
     * Create new module
     */
    public function create(array $data): Module
    {
        return DB::transaction(function () use ($data) {
            return Module::create($data);
        });
    }

    /**
     * Update module
     */
    public function update(int $id, array $data): Module
    {
        return DB::transaction(function () use ($id, $data) {
            $module = $this->findById($id);
            $module->update($data);

            return $module;
        });
    }

    /**
     * Delete module
     */
    public function delete(int $id): bool
    {
        return DB::transaction(function () use ($id) {
            $module = $this->findById($id);
            return $module->delete();
        });
    }

    /**
     * Toggle module status (active/inactive)
     */
    public function toggleStatus(int $id): Module
    {
        $module = $this->findById($id);

        $module->status = !$module->status;
        $module->save();

        return $module;
    }

    /**
     * Get cached module with posts
     */
    public function getCachedModuleWithPosts(string $title, int $perPage = 10): array
    {
        return Cache::remember("module_{$title}_{$perPage}", 60, function () use ($title, $perPage) {
            return $this->getModuleWithPosts($title, $perPage);
        });
    }


    public function searchDateAndTitle($request, $q)
    {
        if (!empty($request->search)) {
            $q->where(function ($query) use ($request) {
                $query->where('name_ar', 'like', "%" . $request->search . "%")->orWhere('name_en', 'like', '%' . $request->search . "%");
            });
        }
        if (!empty($request->date) && is_numeric($request->date)) {
            $q->whereHas('postLangs', function ($query) use ($request) {
                $query->whereDate('txt1', '<=', date_create('12/31/' . $request->date)->format('Y-m-d'))
                    ->whereDate('txt1', '>=', date_create('1/1/' . $request->date)->format('Y-m-d'));
            });
        }
        return $q;
    }


    public function search($request, $q, $names = [])
    {
        $this->searchDateAndTitle($request, $q);
        if (!empty($names)) {
            foreach ($names as $name => $val) {
                if ($name !== 'category') {
                    if (!empty($request->$name)) {
                        $q->where($name, 'like', "%" . $val . "%");
                    }
                } else {
                    if (!empty($request->$name)) {
                        $q->whereHas('category', function ($query) use ($val) {
                            $query->where('cat', $val);
                        });
                    }
                }
            }
        }
        return $q;
    }
}
