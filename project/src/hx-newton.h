#ifndef __HXNEWTON_H__
#define __HXNEWTON_H__

#include "hxcpp.h"
#include "newton.h"


namespace hxnewton {
    void worldSetDestructorCallback(const cpp::Pointer<NewtonWorld> _world, Dynamic _cb);
}


#endif /* __HXNEWTON_H__ */
