#include "hx-newton.h"
#include "hx/gc.h"
#include <map>

typedef std::map<void*, hx::Object*> Callback;

namespace hxnewton {
    
    std::map<void*, hx::Object*> callbacks;

    void _WorldSetDestructorCallback(const NewtonWorld* const _world) {
        Callback::iterator it = callbacks.find((void*)_world);
        if (it != callbacks.end()) {
            hx::Object* cb = __hxcpp_weak_ref_get((hx::Object*)(*it).second);
            __hxcpp_enter_gc_free_zone();
            cb->__run(cpp::Pointer<NewtonWorld>(_world));
            __hxcpp_exit_gc_free_zone();
        }
    }
    void worldSetDestructorCallback(const cpp::Pointer<NewtonWorld> _world, Dynamic _cb) {
        hx::Object* cb = __hxcpp_weak_ref_create(_cb);
        callbacks[(void*)_world.ptr] = cb;
        NewtonWorldSetDestructorCallback(_world.ptr, _WorldSetDestructorCallback);
    }


    void _BodySetForceAndTorqueCallback(const NewtonBody* const _body, dFloat _timestep, int _threadIndex) {
        Callback::iterator it = callbacks.find((void*)_body);
        if (it != callbacks.end()) {
            hx::Object* cb = __hxcpp_weak_ref_get((hx::Object*)(*it).second);
            __hxcpp_enter_gc_free_zone();
            cb->__run(cpp::Pointer<NewtonBody>(_body), _timestep, _threadIndex);
            __hxcpp_exit_gc_free_zone();
        }
    }
    void bodySetForceAndTorqueCallback(const cpp::Pointer<NewtonBody> _body, Dynamic _cb) {
        hx::Object* cb = __hxcpp_weak_ref_create(_cb);
        callbacks[(void*)_body.ptr] = cb;
        NewtonBodySetForceAndTorqueCallback(_body.ptr, _BodySetForceAndTorqueCallback);
    }
}