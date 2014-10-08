#include "hx-newton.h"
#include "hx/gc.h"

namespace hxnewton {
    
    hx::Object* cbDestruct;
    void _WorldSetDestructorCallback(const NewtonWorld* const newtonWorld) {
        hx::Object* cb = __hxcpp_weak_ref_get(cbDestruct);
        cb->__run(cpp::Pointer<NewtonWorld>(newtonWorld));
    }

    void worldSetDestructorCallback(const cpp::Pointer<NewtonWorld> _world, Dynamic _cb) {
        cbDestruct = __hxcpp_weak_ref_create(_cb);
        NewtonWorldSetDestructorCallback(_world.ptr, _WorldSetDestructorCallback);
    }

    



}