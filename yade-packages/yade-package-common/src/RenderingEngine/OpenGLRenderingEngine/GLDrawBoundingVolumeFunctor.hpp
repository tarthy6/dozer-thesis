/*************************************************************************
*  Copyright (C) 2004 by Olivier Galizzi                                 *
*  olivier.galizzi@imag.fr                                               *
*                                                                        *
*  This program is free software; it is licensed under the terms of the  *
*  GNU General Public License v2 or later. See file LICENSE for details. *
*************************************************************************/

#ifndef GLDRAWBOUNDINGVOLUMEFUNCTOR_HPP
#define GLDRAWBOUNDINGVOLUMEFUNCTOR_HPP

#include <yade/yade-lib-multimethods/FunctorWrapper.hpp>
#include <yade/yade-core/BoundingVolume.hpp>
#include <yade/yade-core/EngineUnit1D.hpp>

#define RENDERS(name) 							\
	public : virtual string renders() const { return #name; };

class GLDrawBoundingVolumeFunctor : 	public EngineUnit1D
					<
		 				void ,
		 				TYPELIST_1(const shared_ptr<BoundingVolume>&) 
					>
{
	public :
		virtual ~GLDrawBoundingVolumeFunctor() {};
		virtual string renders() const { std::cerr << "unregistered gldraw class.\n"; throw; }; // FIXME - replace that with a nice exception

	REGISTER_CLASS_NAME(GLDrawBoundingVolumeFunctor);
	REGISTER_BASE_CLASS_NAME(EngineUnit1D);
};

REGISTER_SERIALIZABLE(GLDrawBoundingVolumeFunctor,false);

#endif //  GLDRAWBOUNDINGVOLUMEFUNCTOR_HPP

