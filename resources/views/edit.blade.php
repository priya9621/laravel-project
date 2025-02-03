<x-base-layout>
    <x-form-container-card>

        @if ($errors->any())
            <div class="text-red-600 text-xs">
                @foreach ($errors->all() as $error)
                    <div>{{ $error }}</div>
                @endforeach
            </div>  
        @endif

        <x-slot name='title'>
            Enter the new details of product
        </x-slot>

        <form action="/update/{{$product->id}}" method="post" enctype="multipart/form-data">
            @csrf
            
            <div class="mt-2">
                <label for="title" class="text-sm text-gray-500">Product title</label>
                <input type="text" id="title" name="title" 
                class="rounded-md shadow-sm border-gray-300 focus:border-indigo-300 w-full " value="{{$product->title}}">
            </div>
            <div class="mt-2">
                <label for="desc-sm" class="text-sm text-gray-500">Add a short description of the product</label>
                <input type="text" id="desc-sm" name="desc-sm" 
                class="rounded-md shadow-sm border-gray-300 focus:border-indigo-300 w-full" value="{{$product->short_desc}}">
            </div>
            <div class="mt-2">
                <label for="desc-full" class="text-sm text-gray-500">Add the complete details of the product</label>
                <textarea id="desc-full" name="desc-full" 
                class="rounded-md shadow-sm border-gray-300 focus:border-indigo-300 w-full" value="">{{$product->long_desc}}</textarea>
            </div>
            <div class="mt-2">
                <label for="price" class="text-sm text-gray-500">Product Price</label>
                <input type="text" id="title" name="price" 
                class="rounded-md shadow-sm border-gray-300 focus:border-indigo-300 w-full" value="{{$product->price}}">
            </div>
            <div class="mt-2">
                <label for="img" class="text-sm text-gray-500">Select an image</label>
                <input type="file" id="img" name="img" class="border-gray-300 focus:border-indigo-300 w-full">
            </div>

            <x-button class="mt-4 w-full justify-center">
                Update the product information
            </x-button>    
            
        </form>
        <script>
            CKEDITOR.replace('desc-full');
        </script>
    </x-form-container-card>
</x-base-layout>