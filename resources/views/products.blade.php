<x-base-layout>
    
    {{-- Main Content --}}
    <div class="grid grid-cols-4 gap-4 p-4">
        @each('each_product_on_list',$products,'p')    
    </div>
       <div class="p-6">{{$products->links()}}</div> 
</x-base-layout>
