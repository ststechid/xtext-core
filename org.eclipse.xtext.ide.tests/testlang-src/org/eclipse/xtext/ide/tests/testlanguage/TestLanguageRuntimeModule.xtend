/*
 * Copyright (c) 2016 TypeFox GmbH (http://www.typefox.io) and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 */
package org.eclipse.xtext.ide.tests.testlanguage

import org.eclipse.xtext.formatting2.IFormatter2
import org.eclipse.xtext.ide.editor.syntaxcoloring.ISemanticHighlightingCalculator
import org.eclipse.xtext.ide.server.coloring.IColoringService
import org.eclipse.xtext.ide.server.semanticHighlight.ISemanticHighlightingStyleToTokenMapper
import org.eclipse.xtext.ide.server.signatureHelp.ISignatureHelpService
import org.eclipse.xtext.ide.tests.testlanguage.coloring.ColoringServiceImpl
import org.eclipse.xtext.ide.tests.testlanguage.editor.syntaxcoloring.SemanticHighlightingCalculatorImpl
import org.eclipse.xtext.ide.tests.testlanguage.editor.syntaxcoloring.SemanticHighlightingStyleToTokenMapper
import org.eclipse.xtext.ide.tests.testlanguage.formatting2.TestLanguageFormatter
import org.eclipse.xtext.ide.tests.testlanguage.signatureHelp.SignatureHelpServiceImpl

/**
 * Use this class to register components to be used at runtime / without the Equinox extension registry.
 */
class TestLanguageRuntimeModule extends AbstractTestLanguageRuntimeModule {
	
	def Class<? extends IFormatter2> bindIFormatter2() {
		return TestLanguageFormatter;
	}
	
	def Class<? extends ISignatureHelpService> bindSignatureHelpService() {
		return SignatureHelpServiceImpl;
	}

	def Class<? extends IColoringService> bindIColoringService() {
		return ColoringServiceImpl;
	}

	def Class<? extends ISemanticHighlightingCalculator> bindISemanticHighlightingCalculator() {
		return SemanticHighlightingCalculatorImpl;
	}

	def Class<? extends ISemanticHighlightingStyleToTokenMapper> bindISemanticHighlightingStyleToTokenMapper() {
		return SemanticHighlightingStyleToTokenMapper;
	}

}
