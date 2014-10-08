package hxnewton;

import cpp.Char;
import cpp.ConstPointer;
import cpp.Int64;
import cpp.Pointer;
import cpp.UInt8;
import cpp.Float32;

////////////////////////////////
@:include("newton.h")
@:native("::NewtonMesh")
@:structAccess
@:unreflective
extern class NewtonMesh {}

////////////////////////////////
@:include("newton.h")
@:native("::NewtonBody")
@:structAccess
@:unreflective
extern class NewtonBody {}

////////////////////////////////
@:include("newton.h")
@:native("::NewtonWorld")
@:structAccess
@:unreflective
extern class NewtonWorld {}

////////////////////////////////
@:include("newton.h")
@:native("::NewtonJoint")
@:structAccess
@:unreflective
extern class NewtonJoint {}

////////////////////////////////
@:include("newton.h")
@:native("::NewtonMaterial")
@:structAccess
@:unreflective
extern class NewtonMaterial {}

////////////////////////////////
@:include("newton.h")
@:native("::NewtonCollision")
@:structAccess
@:unreflective
extern class NewtonCollision {}

////////////////////////////////
@:include("newton.h")
@:native("::NewtonDeformableMeshSegment")
@:structAccess
@:unreflective
extern class NewtonDeformableMeshSegment {}

////////////////////////////////
@:include("newton.h")
@:native("::NewtonFracturedCompoundMeshPart")
@:structAccess
@:unreflective
extern class NewtonFracturedCompoundMeshPart {}

////////////////////////////////
@:include("newton.h")
@:native("::NewtonBoxParam")
@:structAccess
@:unreflective
extern class NewtonBoxParam {
	public var m_x:Float32;
	public var m_y:Float32;
	public var m_z:Float32;
}

////////////////////////////////
@:include("newton.h")
@:native("::NewtonSphereParam")
@:structAccess
@:unreflective
extern class NewtonSphereParam {
	public var m_radio:Float32;
}

////////////////////////////////
@:include("newton.h")
@:native("::NewtonCylinderParam")
@:structAccess
@:unreflective
extern class NewtonCylinderParam {
	public var m_radio:Float32;
	public var m_height:Float32;
}

////////////////////////////////
@:include("newton.h")
@:native("::NewtonCapsuleParam")
@:structAccess
@:unreflective
extern class NewtonCapsuleParam {
	public var m_radio:Float32;
	public var m_height:Float32;
}

////////////////////////////////
@:include("newton.h")
@:native("::NewtonConeParam")
@:structAccess
@:unreflective
extern class NewtonConeParam {
	public var m_radio:Float32;
	public var m_height:Float32;
}

////////////////////////////////
@:include("newton.h")
@:native("::NewtonTaperedCapsuleParam")
@:structAccess
@:unreflective
extern class NewtonTaperedCapsuleParam {
	public var m_radio0:Float32;
	public var m_radio1:Float32;
	public var m_height:Float32;
}

////////////////////////////////
@:include("newton.h")
@:native("::NewtonTaperedCylinderParam")
@:structAccess
@:unreflective
extern class NewtonTaperedCylinderParam {
	public var m_radio0:Float32;
	public var m_radio1:Float32;
	public var m_height:Float32;
}

////////////////////////////////
@:include("newton.h")
@:native("::NewtonChamferCylinderParam")
@:structAccess
@:unreflective
extern class NewtonChamferCylinderParam {
	public var m_radio:Float32;
	public var m_height:Float32;
}

////////////////////////////////
@:include("newton.h")
@:native("::NewtonConvexHullParam")
@:structAccess
@:unreflective
extern class NewtonConvexHullParam {
	public var m_vertexCount:Int;
	public var m_vertexStrideInBytes:Int;
	public var m_faceCount:Int;
	public var m_vertex:Pointer<Float32>;
}

////////////////////////////////
@:include("newton.h")
@:native("::NewtonCompoundCollisionParam")
@:structAccess
@:unreflective
extern class NewtonCompoundCollisionParam {
	public var m_childrenCount:Int;
}

////////////////////////////////
@:include("newton.h")
@:native("::NewtonCollisionTreeParam")
@:structAccess
@:unreflective
extern class NewtonCollisionTreeParam {
	public var m_vertexCount:Int;
	public var m_indexCount:Int;
}

////////////////////////////////
@:include("newton.h")
@:native("::NewtonDeformableMeshParam")
@:structAccess
@:unreflective
extern class NewtonDeformableMeshParam {
	public var m_vertexCount:Int;
	public var m_triangleCount:Int;
	public var m_vrtexStrideInBytes:Int; // TODO: typo
	public var m_indexList:Pointer<UInt8>;
	public var m_vertexList:Pointer<Float32>;
}

////////////////////////////////
@:include("newton.h")
@:native("::NewtonHeightFieldCollisionParam")
@:structAccess
@:unreflective
extern class NewtonHeightFieldCollisionParam {
	public var m_width:Int;
	public var m_height:Int;
	public var m_gridsDiagonals:Int;
	public var m_elevationDataType:Int;
	public var m_horizontalScale:Float32;
	public var m_verticalScale:Float32;
	public var m_elevation:Pointer<cpp.Void>;
	public var m_atributes:Pointer<Char>; // TODO: typo
}

////////////////////////////////
@:include("newton.h")
@:native("::NewtonSceneCollisionParam")
@:structAccess
@:unreflective
extern class NewtonSceneCollisionParam {
	public var m_childrenProxyCount:Int;
}

////////////////////////////////
@:include("newton.h")
@:native("::NewtonCollisionInfoRecord")
@:structAccess
@:unreflective
extern class NewtonCollisionInfoRecord {
	public var m_offsetMatrix:Array<Array<Float32>>; //[4][4]
	public var m_collisionType:Int;
	public var m_collisionUserID:Int;

	// union start
	public var m_box:NewtonBoxParam;
	public var m_cone:NewtonConeParam;
	public var m_sphere:NewtonSphereParam;
	public var m_capsule:NewtonCapsuleParam;
	public var m_cylinder:NewtonCylinderParam;
	public var m_taperedCapsule:NewtonTaperedCapsuleParam;
	public var m_taperedCylinder:NewtonTaperedCylinderParam;
	public var m_chamferCylinder:NewtonChamferCylinderParam;
	public var m_convexHull:NewtonConvexHullParam;
	public var m_deformableMesh:NewtonDeformableMeshParam;
	public var m_compoundCollision:NewtonCompoundCollisionParam;
	public var m_collisionTree:NewtonCollisionTreeParam;
	public var m_heightField:NewtonHeightFieldCollisionParam;
	public var m_sceneCollision:NewtonSceneCollisionParam;
	public var m_paramArray:Array<Float32>; //[64]
	// union end
}

////////////////////////////////
@:include("newton.h")
@:native("::NewtonJointRecord")
@:structAccess
@:unreflective
extern class NewtonJointRecord {
	public var m_attachmenMatrix_0:Array<Array<Float32>>; //[4][4] // TODO: typo
	public var m_attachmenMatrix_1:Array<Array<Float32>>; //[4][4] // TODO: typo
	public var m_minLinearDof:Array<Float32>; // [3]
	public var m_maxLinearDof:Array<Float32>; // [3]
	public var m_minAngularDof:Array<Float32>; // [3]
	public var m_maxAngularDof:Array<Float32>; // [3]
	public var m_attachBody_0:ConstPointer<NewtonBody>;
	public var m_attachBody_1:ConstPointer<NewtonBody>;
	public var m_extraParameters:Array<Float32>; //[64]
	public var m_bodiesCollisionOn:Int;
	public var m_descriptionType:Array<Char>; //[128] // TODO: strings?
}

////////////////////////////////
@:include("newton.h")
@:native("::NewtonUserMeshCollisionCollideDesc")
@:structAccess
@:unreflective
extern class NewtonUserMeshCollisionCollideDesc {
	public var m_boxP0:Array<Float32>; // [4]
	public var m_boxP1:Array<Float32>; // [4]
	public var m_boxDistanceTravel:Array<Float32>; // [4]
	public var m_threadNumber:Int;
	public var m_faceCount:Int;
	public var m_vertexStrideInBytes:Int;
	public var m_skinThickness:Float32;
	public var m_userData:Pointer<cpp.Void>;

	public var m_objBody:Pointer<NewtonBody>;
	public var m_polySoupBody:Pointer<NewtonBody>;
	public var m_objCollision:Pointer<NewtonCollision>;
	public var m_polySoupCollision:Pointer<NewtonCollision>;

	public var m_vertex:Pointer<Float32>;
	public var m_faceIndexCount:Pointer<Int>;
	public var m_faceVertexIndex:Pointer<Int>;
}

////////////////////////////////
@:include("newton.h")
@:native("::NewtonWorldConvexCastReturnInfo")
@:structAccess
@:unreflective
extern class NewtonWorldConvexCastReturnInfo {
	public var m_point:Array<Float32>; // [4]
	public var m_normal:Array<Float32>; // [4]

	public var m_contactID:Int64;
	public var m_hitBody:ConstPointer<NewtonBody>;
	public var m_penetration:Float32;
}

////////////////////////////////
@:include("newton.h")
@:native("::NewtonUserMeshCollisionRayHitDesc")
@:structAccess
@:unreflective
extern class NewtonUserMeshCollisionRayHitDesc {
	public var m_p0:Array<Float32>; // [4]
	public var m_p1:Array<Float32>; // [4]
	public var m_normalOut:Array<Float32>; // [4]
	public var m_userIdOut:Int64;
	public var m_userData:Pointer<cpp.Void>;
}

////////////////////////////////
@:include("newton.h")
@:native("::NewtonHingeSliderUpdateDesc")
@:structAccess
@:unreflective
extern class NewtonHingeSliderUpdateDesc {
	public var m_accel:Float32;
	public var m_minFriction:Float32;
	public var m_maxFriction:Float32;
	public var m_timestep:Float32;
}

////////////////////////////////
@:include("newton.h")
@:native("::NewtonClothPatchMaterial")
@:structAccess
@:unreflective
extern class NewtonClothPatchMaterial {
	public var m_damper:Float32;
	public var m_stiffness:Float32;
}



typedef NewtonWorldDestructorCallback = ConstPointer<NewtonWorld>->Void;


@:include("hx-newton.h")
@:include("newton.h")
@:buildXml("&<include name='${haxelib:hx-newton}/Build.xml'/>")
extern class Newton {

	@:native("::NewtonWorldGetVersion")
	public static function getVersion():Int;

	@:native("::NewtonWorldFloatSize")
	public static function worldFloatSize():Int;

	@:native("::NewtonGetMemoryUsed")
	public static function getMemoryUsed():Int;

	//NEWTON_API void NewtonSetMemorySystem (NewtonAllocMemory malloc, NewtonFreeMemory free);

	@:native("::NewtonCreate")
	public static function create():Pointer<NewtonWorld>;

	@:native("::NewtonDestroy")
	public static function destroy(_world:ConstPointer<NewtonWorld>):Void;

	@:native("::NewtonDestroyAllBodies")
	public static function destroyAllBodies(_world:ConstPointer<NewtonWorld>):Void;

	@:native("hxnewton::worldSetDestructorCallback")
	public static function worldSetDestructorCallback(_world:ConstPointer<NewtonWorld>, _destructor:NewtonWorldDestructorCallback):Void;

	@:native("::NewtonCollisionGetInfo")
	public static function collisionGetInfo(_collision:ConstPointer<NewtonCollision>, _collisionInfo:ConstPointer<NewtonCollisionInfoRecord>):Void;


}