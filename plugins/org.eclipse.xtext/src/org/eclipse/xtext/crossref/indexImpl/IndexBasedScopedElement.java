/*******************************************************************************
 * Copyright (c) 2008 itemis AG (http://www.itemis.eu) and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 *******************************************************************************/
package org.eclipse.xtext.crossref.indexImpl;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.index.EObjectDescriptor;
import org.eclipse.xtext.crossref.impl.AbstractScopedElement;

/**
 * @author Sven Efftinge - Initial contribution and API
 *
 */
public class IndexBasedScopedElement extends AbstractScopedElement {
	
	private EObjectDescriptor descriptor;
	
	IndexBasedScopedElement(EObjectDescriptor decriptor) {
		super();
		this.descriptor = decriptor;
	}

	public Object additionalInformation() {
		return descriptor.getUserData(null);
	}

	public EObject element() {
		EClass eclass = descriptor.getEClassDescriptor().getEClass();
		EObject obj = eclass.getEPackage().getEFactoryInstance().create(eclass);
		((InternalEObject)obj).eSetProxyURI(descriptor.getFragmentURI());
		return obj;
	}

	public String name() {
		return descriptor.getName();
	}

}
