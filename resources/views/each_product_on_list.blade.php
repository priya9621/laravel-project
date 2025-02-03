<a href="/product/{{$p->id }}">
                <div class="bg-white rounded shadow overflow-hidden">
                    <img  src="{{asset($p->image_url) }}" class="h-72 object-cover w-full" />
    
                    <div class="p-4">
                        <div class="text-sm font-semibold">{{$p->title}}</div>
                        <div class="text-xs text-gray-500 h-8">{{$p->short_desc}}</div>
                    </div>
                    <div class="border-t px-4 py-2 font-bold text-sm">${{$p->price}}</div>
                </div>
            </a>     