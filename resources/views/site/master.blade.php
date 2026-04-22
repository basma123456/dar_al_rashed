<!DOCTYPE html>
<html lang="ar"  >
@include('site.layouts.links')
<body class="custom-cursor">
@include('site.layouts.header')
@yield('content')
@include('site.layouts.footer')
@include('site.layouts.scripts')
@yield('scripts')
</body>
</html>
