/*******************************************************************************
 * Copyright (c) 2014 Michael Rauch
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Project: http://www.wok-lang.org
 *
 * Contributors:
 * Michael Rauch - initial API and implementation
 *******************************************************************************/
package ch.semantonic.wok.dsl.generator

import org.eclipse.emf.ecore.resource.Resource
import org.eclipse.xtext.generator.IFileSystemAccess
import org.eclipse.xtext.generator.IGenerator

class WokDslGenerator implements IGenerator {

	val AsciiDependencyTreeGenerator asciiDepTreeGenerator = new AsciiDependencyTreeGenerator
	val DendogramJsonGenerator dendogramJsonGenerator = new DendogramJsonGenerator
	val EdgeBundlingJsonGenerator edgeBundlingJsonGenerator = new EdgeBundlingJsonGenerator

	override void doGenerate(Resource resource, IFileSystemAccess fsa) {
		asciiDepTreeGenerator.doGenerate(resource, fsa)
		
		dendogramJsonGenerator.doGenerate(resource, fsa)
		edgeBundlingJsonGenerator.doGenerate(resource, fsa)
	}

}

