import {
    __String,
    AccessExpression,
    AccessFlags,
    AccessorDeclaration,
    addRange,
    addRelatedInfo,
    addSyntheticLeadingComment,
    addSyntheticTrailingComment,
    AliasDeclarationNode,
    AllAccessorDeclarations,
    AmbientModuleDeclaration,
    and,
    AnonymousType,
    AnyImportOrJsDocImport,
    AnyImportOrReExport,
    append,
    appendIfUnique,
    ArrayBindingPattern,
    arrayFrom,
    arrayIsEqualTo,
    arrayIsHomogeneous,
    ArrayLiteralExpression,
    arrayOf,
    arrayToMultiMap,
    ArrayTypeNode,
    ArrowFunction,
    AsExpression,
    AssertionExpression,
    AssignmentDeclarationKind,
    AssignmentKind,
    AssignmentPattern,
    AwaitExpression,
    BaseType,
    BigIntLiteral,
    BigIntLiteralType,
    BinaryExpression,
    BinaryOperator,
    BinaryOperatorToken,
    binarySearch,
    BindableObjectDefinePropertyCall,
    BindableStaticNameExpression,
    BindingElement,
    BindingElementGrandparent,
    BindingName,
    BindingPattern,
    bindSourceFile,
    Block,
    BooleanLiteral,
    BreakOrContinueStatement,
    CallChain,
    CallExpression,
    CallLikeExpression,
    CallSignatureDeclaration,
    CancellationToken,
    canHaveDecorators,
    canHaveExportModifier,
    canHaveFlowNode,
    canHaveIllegalDecorators,
    canHaveIllegalModifiers,
    canHaveJSDoc,
    canHaveLocals,
    canHaveModifiers,
    canHaveModuleSpecifier,
    canHaveStatements,
    canHaveSymbol,
    canIncludeBindAndCheckDiagnostics,
    canUsePropertyAccess,
    cartesianProduct,
    CaseBlock,
    CaseClause,
    CaseOrDefaultClause,
    cast,
    chainDiagnosticMessages,
    CharacterCodes,
    CheckFlags,
    ClassDeclaration,
    ClassElement,
    classElementOrClassElementParameterIsDecorated,
    ClassExpression,
    ClassLikeDeclaration,
    classOrConstructorParameterIsDecorated,
    ClassStaticBlockDeclaration,
    clear,
    compareDiagnostics,
    comparePaths,
    compareValues,
    Comparison,
    CompilerOptions,
    ComputedPropertyName,
    concatenate,
    concatenateDiagnosticMessageChains,
    ConditionalExpression,
    ConditionalRoot,
    ConditionalType,
    ConditionalTypeNode,
    ConstructorDeclaration,
    ConstructorTypeNode,
    ConstructSignatureDeclaration,
    contains,
    containsParseError,
    ContextFlags,
    copyEntries,
    countWhere,
    createBinaryExpressionTrampoline,
    createCompilerDiagnostic,
    createDetachedDiagnostic,
    createDiagnosticCollection,
    createDiagnosticForFileFromMessageChain,
    createDiagnosticForNode,
    createDiagnosticForNodeArray,
    createDiagnosticForNodeArrayFromMessageChain,
    createDiagnosticForNodeFromMessageChain,
    createDiagnosticMessageChainFromDiagnostic,
    createEmptyExports,
    createEvaluator,
    createFileDiagnostic,
    createFlowNode,
    createGetSymbolWalker,
    createModeAwareCacheKey,
    createModeMismatchDetails,
    createModuleNotFoundChain,
    createMultiMap,
    createNameResolver,
    createPrinterWithDefaults,
    createPrinterWithRemoveComments,
    createPrinterWithRemoveCommentsNeverAsciiEscape,
    createPrinterWithRemoveCommentsOmitTrailingSemicolon,
    createPropertyNameNodeForIdentifierOrLiteral,
    createScanner,
    createSymbolTable,
    createSyntacticTypeNodeBuilder,
    createTextWriter,
    Debug,
    Declaration,
    DeclarationName,
    declarationNameToString,
    DeclarationStatement,
    DeclarationWithTypeParameterChildren,
    DeclarationWithTypeParameters,
    Decorator,
    deduplicate,
    DefaultClause,
    defaultMaximumTruncationLength,
    DeferredTypeReference,
    DeleteExpression,
    Diagnostic,
    DiagnosticAndArguments,
    DiagnosticArguments,
    DiagnosticCategory,
    DiagnosticMessage,
    DiagnosticMessageChain,
    DiagnosticRelatedInformation,
    Diagnostics,
    DiagnosticWithLocation,
    DoStatement,
    DynamicNamedDeclaration,
    ElementAccessChain,
    ElementAccessExpression,
    ElementFlags,
    ElementWithComputedPropertyName,
    EmitFlags,
    EmitHint,
    emitModuleKindIsNonNodeESM,
    EmitResolver,
    EmitTextWriter,
    emptyArray,
    EntityName,
    EntityNameExpression,
    EntityNameOrEntityNameExpression,
    entityNameToString,
    EnumDeclaration,
    EnumMember,
    EnumType,
    equateValues,
    ErrorOutputContainer,
    escapeLeadingUnderscores,
    escapeString,
    EvaluatorResult,
    evaluatorResult,
    every,
    EvolvingArrayType,
    ExclamationToken,
    ExportAssignment,
    exportAssignmentIsAlias,
    ExportDeclaration,
    ExportSpecifier,
    Expression,
    expressionResultIsUnused,
    ExpressionStatement,
    ExpressionWithTypeArguments,
    Extension,
    ExternalEmitHelpers,
    externalHelpersModuleNameText,
    factory,
    fileExtensionIs,
    fileExtensionIsOneOf,
    filter,
    find,
    findAncestor,
    findBestPatternMatch,
    findConstructorDeclaration,
    findIndex,
    findLast,
    findLastIndex,
    findUseStrictPrologue,
    first,
    firstDefined,
    firstIterator,
    firstOrUndefined,
    firstOrUndefinedIterator,
    flatMap,
    flatten,
    FlowArrayMutation,
    FlowAssignment,
    FlowCall,
    FlowCondition,
    FlowFlags,
    FlowLabel,
    FlowNode,
    FlowReduceLabel,
    FlowStart,
    FlowSwitchClause,
    FlowSwitchClauseData,
    FlowType,
    forEach,
    forEachChild,
    forEachChildRecursively,
    forEachEnclosingBlockScopeContainer,
    forEachEntry,
    forEachKey,
    forEachReturnStatement,
    forEachYieldExpression,
    ForInOrOfStatement,
    ForInStatement,
    formatMessage,
    ForOfStatement,
    ForStatement,
    FreshableIntrinsicType,
    FreshableType,
    FreshObjectLiteralType,
    FunctionDeclaration,
    FunctionExpression,
    FunctionFlags,
    FunctionLikeDeclaration,
    FunctionOrConstructorTypeNode,
    FunctionTypeNode,
    GenericType,
    GetAccessorDeclaration,
    getAliasDeclarationFromName,
    getAllJSDocTags,
    getAllowSyntheticDefaultImports,
    getAncestor,
    getAnyExtensionFromPath,
    getAssignedExpandoInitializer,
    getAssignmentDeclarationKind,
    getAssignmentDeclarationPropertyAccessKind,
    getAssignmentTargetKind,
    getCanonicalDiagnostic,
    getCheckFlags,
    getClassExtendsHeritageElement,
    getClassLikeDeclarationOfSymbol,
    getCombinedLocalAndExportSymbolFlags,
    getCombinedModifierFlags,
    getCombinedNodeFlags,
    getCommonSourceDirectoryOfConfig,
    getContainingClass,
    getContainingClassExcludingClassDecorators,
    getContainingClassStaticBlock,
    getContainingFunction,
    getContainingFunctionOrClassStaticBlock,
    getDeclarationFileExtension,
    getDeclarationModifierFlagsFromSymbol,
    getDeclarationOfKind,
    getDeclarationsOfKind,
    getDeclaredExpandoInitializer,
    getDecorators,
    getDirectoryPath,
    getEffectiveBaseTypeNode,
    getEffectiveConstraintOfTypeParameter,
    getEffectiveContainerForJSDocTemplateTag,
    getEffectiveImplementsTypeNodes,
    getEffectiveInitializer,
    getEffectiveJSDocHost,
    getEffectiveModifierFlags,
    getEffectiveReturnTypeNode,
    getEffectiveSetAccessorTypeAnnotationNode,
    getEffectiveTypeAnnotationNode,
    getEffectiveTypeParameterDeclarations,
    getElementOrPropertyAccessName,
    getEmitDeclarations,
    getEmitModuleKind,
    getEmitModuleResolutionKind,
    getEmitScriptTarget,
    getEmitStandardClassFields,
    getEnclosingBlockScopeContainer,
    getEnclosingContainer,
    getEntityNameFromTypeNode,
    getErrorSpanForNode,
    getEscapedTextOfIdentifierOrLiteral,
    getEscapedTextOfJsxAttributeName,
    getEscapedTextOfJsxNamespacedName,
    getESModuleInterop,
    getExpandoInitializer,
    getExportAssignmentExpression,
    getExternalModuleImportEqualsDeclarationExpression,
    getExternalModuleName,
    getExternalModuleRequireArgument,
    getFirstConstructorWithBody,
    getFirstIdentifier,
    getFunctionFlags,
    getHostSignatureFromJSDoc,
    getIdentifierGeneratedImportReference,
    getIdentifierTypeArguments,
    getImmediatelyInvokedFunctionExpression,
    getInitializerOfBinaryExpression,
    getInterfaceBaseTypeNodes,
    getInvokedExpression,
    getIsolatedModules,
    getJSDocClassTag,
    getJSDocDeprecatedTag,
    getJSDocEnumTag,
    getJSDocHost,
    getJSDocOverloadTags,
    getJSDocParameterTags,
    getJSDocRoot,
    getJSDocSatisfiesExpressionType,
    getJSDocTags,
    getJSDocThisTag,
    getJSDocType,
    getJSDocTypeAssertionType,
    getJSDocTypeParameterDeclarations,
    getJSDocTypeTag,
    getJSXImplicitImportBase,
    getJSXRuntimeImport,
    getJSXTransformEnabled,
    getLeftmostAccessExpression,
    getLineAndCharacterOfPosition,
    getMembersOfDeclaration,
    getModifiers,
    getModuleInstanceState,
    getModuleSpecifierOfBareOrAccessedRequire,
    getNameFromImportAttribute,
    getNameFromIndexInfo,
    getNameOfDeclaration,
    getNameOfExpando,
    getNamespaceDeclarationNode,
    getNewTargetContainer,
    getNonAugmentationDeclaration,
    getNonModifierTokenPosOfNode,
    getNormalizedAbsolutePath,
    getObjectFlags,
    getOriginalNode,
    getOrUpdate,
    getParameterSymbolFromJSDoc,
    getParseTreeNode,
    getPropertyAssignmentAliasLikeExpression,
    getPropertyNameForPropertyNameNode,
    getPropertyNameFromType,
    getRelativePathFromDirectory,
    getRelativePathFromFile,
    getResolutionDiagnostic,
    getResolutionModeOverride,
    getResolveJsonModule,
    getRestParameterElementType,
    getRootDeclaration,
    getScriptTargetFeatures,
    getSelectedEffectiveModifierFlags,
    getSemanticJsxChildren,
    getSetAccessorValueParameter,
    getSingleVariableOfVariableStatement,
    getSourceFileOfModule,
    getSourceFileOfNode,
    getSpanOfTokenAtPosition,
    getSpellingSuggestion,
    getStrictOptionValue,
    getSuperContainer,
    getSymbolNameForPrivateIdentifier,
    getSynthesizedDeepClone,
    getTextOfIdentifierOrLiteral,
    getTextOfJSDocComment,
    getTextOfJsxAttributeName,
    getTextOfNode,
    getTextOfPropertyName,
    getThisContainer,
    getThisParameter,
    getTrailingSemicolonDeferringWriter,
    getTypeParameterFromJsDoc,
    getUseDefineForClassFields,
    group,
    hasAbstractModifier,
    hasAccessorModifier,
    hasAmbientModifier,
    hasContextSensitiveParameters,
    HasDecorators,
    hasDecorators,
    hasDynamicName,
    hasEffectiveModifier,
    hasEffectiveModifiers,
    hasEffectiveReadonlyModifier,
    HasExpressionInitializer,
    hasExtension,
    HasIllegalDecorators,
    HasIllegalModifiers,
    HasInferredType,
    hasInferredType,
    HasInitializer,
    hasInitializer,
    hasJSDocNodes,
    hasJSDocParameterTags,
    hasJsonModuleEmitEnabled,
    HasLocals,
    HasModifiers,
    hasOnlyExpressionInitializer,
    hasOverrideModifier,
    hasPossibleExternalModuleReference,
    hasQuestionToken,
    hasResolutionModeOverride,
    hasRestParameter,
    hasScopeMarker,
    hasStaticModifier,
    hasSyntacticModifier,
    hasSyntacticModifiers,
    hasType,
    hasTypeArguments,
    HeritageClause,
    hostGetCanonicalFileName,
    Identifier,
    identifierToKeywordKind,
    IdentifierTypePredicate,
    idText,
    IfStatement,
    ImportAttribute,
    ImportAttributes,
    ImportCall,
    ImportClause,
    ImportDeclaration,
    ImportEqualsDeclaration,
    ImportOrExportSpecifier,
    ImportSpecifier,
    ImportTypeNode,
    IndexedAccessType,
    IndexedAccessTypeNode,
    IndexFlags,
    IndexInfo,
    IndexKind,
    indexOfNode,
    IndexSignatureDeclaration,
    IndexType,
    indicesOf,
    InferenceContext,
    InferenceFlags,
    InferenceInfo,
    InferencePriority,
    InferTypeNode,
    InstanceofExpression,
    InstantiableType,
    InstantiationExpressionType,
    InterfaceDeclaration,
    InterfaceType,
    InterfaceTypeWithDeclaredMembers,
    InternalNodeBuilderFlags,
    InternalSymbolName,
    IntersectionFlags,
    IntersectionType,
    IntersectionTypeNode,
    intrinsicTagNameToString,
    IntrinsicType,
    introducesArgumentsExoticObject,
    IntroducesNewScopeNode,
    isAccessExpression,
    isAccessor,
    isAccessorModifier,
    isAliasableExpression,
    isAmbientModule,
    isArray,
    isArrayBindingPattern,
    isArrayLiteralExpression,
    isArrowFunction,
    isAssertionExpression,
    isAssignmentDeclaration,
    isAssignmentExpression,
    isAssignmentOperator,
    isAssignmentPattern,
    isAssignmentTarget,
    isAutoAccessorPropertyDeclaration,
    isAwaitExpression,
    isBigIntLiteral,
    isBinaryExpression,
    isBinaryLogicalOperator,
    isBindableObjectDefinePropertyCall,
    isBindableStaticElementAccessExpression,
    isBindableStaticNameExpression,
    isBindingElement,
    isBindingElementOfBareOrAccessedRequire,
    isBindingPattern,
    isBlock,
    isBlockOrCatchScoped,
    isBlockScopedContainerTopLevel,
    isBooleanLiteral,
    isCallChain,
    isCallExpression,
    isCallLikeExpression,
    isCallLikeOrFunctionLikeExpression,
    isCallOrNewExpression,
    isCallSignatureDeclaration,
    isCaseOrDefaultClause,
    isCatchClause,
    isCatchClauseVariableDeclaration,
    isCatchClauseVariableDeclarationOrBindingElement,
    isCheckJsEnabledForFile,
    isClassDeclaration,
    isClassElement,
    isClassExpression,
    isClassInstanceProperty,
    isClassLike,
    isClassStaticBlockDeclaration,
    isCommaSequence,
    isCommonJsExportedExpression,
    isCommonJsExportPropertyAssignment,
    isCompoundAssignment,
    isComputedNonLiteralName,
    isComputedPropertyName,
    isConditionalExpression,
    isConditionalTypeNode,
    isConstAssertion,
    isConstructorDeclaration,
    isConstructorTypeNode,
    isConstructSignatureDeclaration,
    isConstTypeReference,
    isDeclaration,
    isDeclarationFileName,
    isDeclarationName,
    isDeclarationReadonly,
    isDecorator,
    isDefaultedExpandoInitializer,
    isDeleteTarget,
    isDottedName,
    isDynamicName,
    isEffectiveExternalModule,
    isElementAccessExpression,
    isEntityName,
    isEntityNameExpression,
    isEnumConst,
    isEnumDeclaration,
    isEnumMember,
    isExclusivelyTypeOnlyImportOrExport,
    isExpandoPropertyDeclaration,
    isExportAssignment,
    isExportDeclaration,
    isExportsIdentifier,
    isExportSpecifier,
    isExpression,
    isExpressionNode,
    isExpressionOfOptionalChainRoot,
    isExpressionStatement,
    isExpressionWithTypeArguments,
    isExpressionWithTypeArgumentsInClassExtendsClause,
    isExternalModule,
    isExternalModuleAugmentation,
    isExternalModuleImportEqualsDeclaration,
    isExternalModuleIndicator,
    isExternalModuleNameRelative,
    isExternalModuleReference,
    isExternalModuleSymbol,
    isExternalOrCommonJsModule,
    isForInOrOfStatement,
    isForInStatement,
    isForOfStatement,
    isForStatement,
    isFunctionDeclaration,
    isFunctionExpression,
    isFunctionExpressionOrArrowFunction,
    isFunctionLike,
    isFunctionLikeDeclaration,
    isFunctionLikeOrClassStaticBlockDeclaration,
    isFunctionOrModuleBlock,
    isFunctionTypeNode,
    isGeneratedIdentifier,
    isGetAccessor,
    isGetAccessorDeclaration,
    isGetOrSetAccessorDeclaration,
    isGlobalScopeAugmentation,
    isGlobalSourceFile,
    isHeritageClause,
    isIdentifier,
    isIdentifierText,
    isIdentifierTypePredicate,
    isIdentifierTypeReference,
    isIfStatement,
    isImportAttributes,
    isImportCall,
    isImportClause,
    isImportDeclaration,
    isImportEqualsDeclaration,
    isImportKeyword,
    isImportOrExportSpecifier,
    isImportSpecifier,
    isImportTypeNode,
    isInCompoundLikeAssignment,
    isIndexedAccessTypeNode,
    isIndexSignatureDeclaration,
    isInExpressionContext,
    isInfinityOrNaNString,
    isInitializedProperty,
    isInJSDoc,
    isInJSFile,
    isInJsonFile,
    isInstanceOfExpression,
    isInterfaceDeclaration,
    isInternalModuleImportEqualsDeclaration,
    isInTopLevelContext,
    isIntrinsicJsxName,
    isInTypeQuery,
    isIterationStatement,
    isJSDocAugmentsTag,
    isJSDocCallbackTag,
    isJSDocConstructSignature,
    isJSDocFunctionType,
    isJSDocImportTag,
    isJSDocIndexSignature,
    isJSDocLinkLike,
    isJSDocMemberName,
    isJSDocNameReference,
    isJSDocNode,
    isJSDocNonNullableType,
    isJSDocNullableType,
    isJSDocOptionalParameter,
    isJSDocOverloadTag,
    isJSDocParameterTag,
    isJSDocPropertyLikeTag,
    isJSDocPropertyTag,
    isJSDocSatisfiesExpression,
    isJSDocSatisfiesTag,
    isJSDocSignature,
    isJSDocTemplateTag,
    isJSDocThisTag,
    isJSDocTypeAlias,
    isJSDocTypeAssertion,
    isJSDocTypedefTag,
    isJSDocTypeExpression,
    isJSDocTypeLiteral,
    isJSDocVariadicType,
    isJsonSourceFile,
    isJsxAttribute,
    isJsxAttributeLike,
    isJsxAttributes,
    isJsxCallLike,
    isJsxElement,
    isJsxFragment,
    isJsxNamespacedName,
    isJsxOpeningElement,
    isJsxOpeningFragment,
    isJsxOpeningLikeElement,
    isJsxSelfClosingElement,
    isJsxSpreadAttribute,
    isJSXTagName,
    isKnownSymbol,
    isLateVisibilityPaintedStatement,
    isLeftHandSideExpression,
    isLineBreak,
    isLiteralComputedPropertyDeclarationName,
    isLiteralExpression,
    isLiteralExpressionOfObject,
    isLiteralImportTypeNode,
    isLiteralTypeNode,
    isLogicalOrCoalescingBinaryExpression,
    isLogicalOrCoalescingBinaryOperator,
    isMetaProperty,
    isMethodDeclaration,
    isMethodSignature,
    isModifier,
    isModuleBlock,
    isModuleDeclaration,
    isModuleExportsAccessExpression,
    isModuleIdentifier,
    isModuleOrEnumDeclaration,
    isModuleWithStringLiteralName,
    isNamedDeclaration,
    isNamedEvaluationSource,
    isNamedExports,
    isNamedTupleMember,
    isNamespaceExport,
    isNamespaceExportDeclaration,
    isNamespaceReexportDeclaration,
    isNewExpression,
    isNodeDescendantOf,
    isNonNullAccess,
    isNonNullExpression,
    isNumericLiteral,
    isNumericLiteralName,
    isObjectBindingPattern,
    isObjectLiteralElementLike,
    isObjectLiteralExpression,
    isObjectLiteralMethod,
    isObjectLiteralOrClassExpressionMethodOrAccessor,
    isOmittedExpression,
    isOptionalChain,
    isOptionalChainRoot,
    isOptionalDeclaration,
    isOptionalJSDocPropertyLikeTag,
    isOptionalTypeNode,
    isOutermostOptionalChain,
    isParameter,
    isParameterPropertyDeclaration,
    isParenthesizedExpression,
    isParenthesizedTypeNode,
    isPartOfParameterDeclaration,
    isPartOfTypeNode,
    isPartOfTypeOnlyImportOrExportDeclaration,
    isPartOfTypeQuery,
    isPlainJsFile,
    isPotentiallyExecutableNode,
    isPrefixUnaryExpression,
    isPrivateIdentifier,
    isPrivateIdentifierClassElementDeclaration,
    isPrivateIdentifierPropertyAccessExpression,
    isPrivateIdentifierSymbol,
    isPropertyAccessEntityNameExpression,
    isPropertyAccessExpression,
    isPropertyAccessOrQualifiedName,
    isPropertyAccessOrQualifiedNameOrImportTypeNode,
    isPropertyAssignment,
    isPropertyDeclaration,
    isPropertyName,
    isPropertyNameLiteral,
    isPropertySignature,
    isPrototypeAccess,
    isPrototypePropertyAssignment,
    isPushOrUnshiftIdentifier,
    isQualifiedName,
    isRequireCall,
    isRestParameter,
    isRestTypeNode,
    isRightSideOfAccessExpression,
    isRightSideOfInstanceofExpression,
    isRightSideOfQualifiedNameOrPropertyAccess,
    isRightSideOfQualifiedNameOrPropertyAccessOrJSDocMemberName,
    isSameEntityName,
    isSetAccessor,
    isSetAccessorDeclaration,
    isShorthandAmbientModuleSymbol,
    isShorthandPropertyAssignment,
    isSideEffectImport,
    isSingleOrDoubleQuote,
    isSourceFile,
    isSourceFileJS,
    isSpreadAssignment,
    isSpreadElement,
    isStatement,
    isStatementWithLocals,
    isStatic,
    isString,
    isStringANonContextualKeyword,
    isStringLiteral,
    isStringLiteralLike,
    isStringOrNumericLiteralLike,
    isSuperCall,
    isSuperProperty,
    isTaggedTemplateExpression,
    isTemplateSpan,
    isThisContainerOrFunctionBlock,
    isThisIdentifier,
    isThisInitializedDeclaration,
    isThisInitializedObjectBindingExpression,
    isThisInTypeQuery,
    isThisProperty,
    isThisTypeParameter,
    isThisTypePredicate,
    isTransientSymbol,
    isTupleTypeNode,
    isTypeAlias,
    isTypeAliasDeclaration,
    isTypeDeclaration,
    isTypeLiteralNode,
    isTypeNode,
    isTypeNodeKind,
    isTypeOfExpression,
    isTypeOnlyImportDeclaration,
    isTypeOnlyImportOrExportDeclaration,
    isTypeOperatorNode,
    isTypeParameterDeclaration,
    isTypePredicateNode,
    isTypeQueryNode,
    isTypeReferenceNode,
    isTypeReferenceType,
    isTypeUsableAsPropertyName,
    isUMDExportSymbol,
    isValidBigIntString,
    isValidESSymbolDeclaration,
    isValidTypeOnlyAliasUseSite,
    isValueSignatureDeclaration,
    isVariableDeclaration,
    isVariableDeclarationInitializedToBareOrAccessedRequire,
    isVariableDeclarationInVariableStatement,
    isVariableDeclarationList,
    isVariableLike,
    isVariableStatement,
    isWriteAccess,
    isWriteOnlyAccess,
    IterableOrIteratorType,
    IterationTypes,
    JSDoc,
    JSDocAugmentsTag,
    JSDocCallbackTag,
    JSDocComment,
    JSDocFunctionType,
    JSDocImplementsTag,
    JSDocImportTag,
    JSDocLink,
    JSDocLinkCode,
    JSDocLinkPlain,
    JSDocMemberName,
    JSDocNullableType,
    JSDocOptionalType,
    JSDocOverloadTag,
    JSDocParameterTag,
    JSDocPrivateTag,
    JSDocPropertyLikeTag,
    JSDocPropertyTag,
    JSDocProtectedTag,
    JSDocPublicTag,
    JSDocSatisfiesTag,
    JSDocSignature,
    JSDocTemplateTag,
    JSDocThisTag,
    JSDocTypeAssertion,
    JSDocTypedefTag,
    JSDocTypeExpression,
    JSDocTypeLiteral,
    JSDocTypeReferencingNode,
    JSDocTypeTag,
    JSDocVariadicType,
    JsxAttribute,
    JsxAttributeLike,
    JsxAttributeName,
    JsxAttributes,
    JsxCallLike,
    JsxChild,
    JsxClosingElement,
    JsxElement,
    JsxEmit,
    JsxExpression,
    JsxFlags,
    JsxFragment,
    JsxNamespacedName,
    JsxOpeningElement,
    JsxOpeningFragment,
    JsxOpeningLikeElement,
    JsxReferenceKind,
    JsxSelfClosingElement,
    JsxSpreadAttribute,
    JsxTagNameExpression,
    KeywordTypeNode,
    LabeledStatement,
    LanguageFeatureMinimumTarget,
    last,
    lastOrUndefined,
    LateBoundBinaryExpressionDeclaration,
    LateBoundDeclaration,
    LateBoundName,
    LateVisibilityPaintedStatement,
    LazyNodeCheckFlags,
    length,
    LiteralExpression,
    LiteralType,
    LiteralTypeNode,
    map,
    mapDefined,
    MappedSymbol,
    MappedType,
    MappedTypeNode,
    MatchingKeys,
    maybeBind,
    MemberOverrideStatus,
    MetaProperty,
    MethodDeclaration,
    MethodSignature,
    minAndMax,
    MinusToken,
    Modifier,
    ModifierFlags,
    modifiersToFlags,
    modifierToFlag,
    ModuleBlock,
    ModuleDeclaration,
    ModuleExportName,
    moduleExportNameIsDefault,
    moduleExportNameTextEscaped,
    moduleExportNameTextUnescaped,
    ModuleInstanceState,
    ModuleKind,
    ModuleName,
    ModuleResolutionKind,
    ModuleSpecifierResolutionHost,
    moduleSupportsImportAttributes,
    Mutable,
    MutableNodeArray,
    NamedDeclaration,
    NamedExports,
    NamedImportsOrExports,
    NamedTupleMember,
    NamespaceDeclaration,
    NamespaceExport,
    NamespaceExportDeclaration,
    NamespaceImport,
    needsScopeMarker,
    NewExpression,
    Node,
    NodeArray,
    NodeBuilderFlags,
    nodeCanBeDecorated,
    NodeCheckFlags,
    NodeFlags,
    nodeHasName,
    nodeIsMissing,
    nodeIsPresent,
    nodeIsSynthesized,
    NodeLinks,
    nodeStartsNewLexicalEnvironment,
    NodeWithTypeArguments,
    NonNullChain,
    NonNullExpression,
    NoSubstitutionTemplateLiteral,
    not,
    noTruncationMaximumTruncationLength,
    NumberLiteralType,
    NumericLiteral,
    objectAllocator,
    ObjectBindingPattern,
    ObjectFlags,
    ObjectFlagsType,
    ObjectLiteralElementLike,
    ObjectLiteralExpression,
    ObjectType,
    OptionalChain,
    OptionalTypeNode,
    or,
    orderedRemoveItemAt,
    OuterExpressionKinds,
    ParameterDeclaration,
    parameterIsThisKeyword,
    ParameterPropertyDeclaration,
    ParenthesizedExpression,
    ParenthesizedTypeNode,
    parseIsolatedEntityName,
    parseNodeFactory,
    parsePseudoBigInt,
    parseValidBigInt,
    Path,
    pathIsRelative,
    PatternAmbientModule,
    PlusToken,
    PostfixUnaryExpression,
    PredicateSemantics,
    PrefixUnaryExpression,
    PrivateIdentifier,
    Program,
    PromiseOrAwaitableType,
    PropertyAccessChain,
    PropertyAccessEntityNameExpression,
    PropertyAccessExpression,
    PropertyAssignment,
    PropertyDeclaration,
    PropertyName,
    PropertySignature,
    PseudoBigInt,
    pseudoBigIntToString,
    PunctuationSyntaxKind,
    pushIfUnique,
    QualifiedName,
    QuestionToken,
    rangeEquals,
    rangeOfNode,
    rangeOfTypeParameters,
    ReadonlyKeyword,
    reduceLeft,
    RegularExpressionLiteral,
    RelationComparisonResult,
    relativeComplement,
    removeExtension,
    removePrefix,
    replaceElement,
    resolutionExtensionIsTSOrJson,
    ResolutionMode,
    ResolvedModuleFull,
    ResolvedType,
    resolvingEmptyArray,
    RestTypeNode,
    ReturnStatement,
    ReverseMappedSymbol,
    ReverseMappedType,
    sameMap,
    SatisfiesExpression,
    Scanner,
    scanTokenAtPosition,
    ScriptKind,
    ScriptTarget,
    SetAccessorDeclaration,
    setCommentRange as setCommentRangeWorker,
    setEmitFlags,
    setIdentifierTypeArguments,
    setNodeFlags,
    setOriginalNode,
    setParent,
    setSyntheticLeadingComments,
    setTextRange as setTextRangeWorker,
    setTextRangePosEnd,
    setValueDeclaration,
    ShorthandPropertyAssignment,
    shouldAllowImportingTsExtension,
    shouldPreserveConstEnums,
    shouldRewriteModuleSpecifier,
    Signature,
    SignatureDeclaration,
    SignatureFlags,
    SignatureKind,
    singleElementArray,
    skipOuterExpressions,
    skipParentheses,
    skipTrivia,
    skipTypeChecking,
    skipTypeParentheses,
    some,
    SourceFile,
    sourceFileMayBeEmitted,
    SpreadAssignment,
    SpreadElement,
    startsWith,
    Statement,
    StringLiteral,
    StringLiteralLike,
    StringLiteralType,
    StringMappingType,
    stripQuotes,
    StructuredType,
    SubstitutionType,
    SuperCall,
    SwitchStatement,
    Symbol,
    SymbolAccessibility,
    SymbolAccessibilityResult,
    SymbolFlags,
    SymbolFormatFlags,
    SymbolId,
    SymbolLinks,
    symbolName,
    SymbolTable,
    SymbolTracker,
    SymbolVisibilityResult,
    SyntacticTypeNodeBuilderContext,
    SyntacticTypeNodeBuilderResolver,
    SyntaxKind,
    SyntheticDefaultModuleType,
    SyntheticExpression,
    TaggedTemplateExpression,
    TemplateExpression,
    TemplateLiteralType,
    TemplateLiteralTypeNode,
    Ternary,
    textRangeContainsPositionInclusive,
    TextSpan,
    textSpanContainsPosition,
    textSpanEnd,
    ThisExpression,
    ThisTypeNode,
    ThrowStatement,
    TokenFlags,
    tokenToString,
    tracing,
    TracingNode,
    TrackedSymbol,
    TransientSymbol,
    TransientSymbolLinks,
    tryAddToSet,
    tryCast,
    tryExtractTSExtension,
    tryGetClassImplementingOrExtendingExpressionWithTypeArguments,
    tryGetExtensionFromPath,
    tryGetJSDocSatisfiesTypeNode,
    tryGetModuleSpecifierFromDeclaration,
    tryGetPropertyAccessOrIdentifierToString,
    TryStatement,
    TupleType,
    TupleTypeNode,
    TupleTypeReference,
    Type,
    TypeAliasDeclaration,
    TypeAssertion,
    TypeChecker,
    TypeCheckerHost,
    TypeComparer,
    TypeElement,
    TypeFlags,
    TypeFormatFlags,
    TypeId,
    TypeLiteralNode,
    TypeMapKind,
    TypeMapper,
    TypeNode,
    TypeNodeSyntaxKind,
    TypeOfExpression,
    TypeOnlyAliasDeclaration,
    TypeOnlyCompatibleAliasDeclaration,
    TypeOperatorNode,
    TypeParameter,
    TypeParameterDeclaration,
    TypePredicate,
    TypePredicateKind,
    TypePredicateNode,
    TypeQueryNode,
    TypeReference,
    TypeReferenceNode,
    TypeReferenceSerializationKind,
    TypeReferenceType,
    TypeVariable,
    unescapeLeadingUnderscores,
    UnionOrIntersectionType,
    UnionOrIntersectionTypeNode,
    UnionReduction,
    UnionType,
    UnionTypeNode,
    UniqueESSymbolType,
    usingSingleLineStringWriter,
    VariableDeclaration,
    VariableDeclarationList,
    VariableLikeDeclaration,
    VariableStatement,
    VarianceFlags,
    visitEachChild as visitEachChildWorker,
    visitNode,
    visitNodes,
    Visitor,
    VisitResult,
    VoidExpression,
    walkUpBindingElementsAndPatterns,
    walkUpOuterExpressions,
    walkUpParenthesizedExpressions,
    walkUpParenthesizedTypes,
    walkUpParenthesizedTypesAndGetParentAndChild,
    WhileStatement,
    WideningContext,
    WithStatement,
    WriterContextOut,
    YieldExpression,
} from "./_namespaces/ts.js";
import * as moduleSpecifiers from "./_namespaces/ts.moduleSpecifiers.js";
import * as performance from "./_namespaces/ts.performance.js";

const ambientModuleSymbolRegex = /^".+"$/;
const anon = "(anonymous)" as __String & string;

const enum ReferenceHint {
    Unspecified,
    Identifier,
    Property,
    ExportAssignment,
    Jsx,
    AsyncFunction,
    ExportImportEquals,
    ExportSpecifier,
    Decorator,
}

let nextSymbolId = 1;
let nextNodeId = 1;
let nextMergeId = 1;
let nextFlowId = 1;

const enum IterationUse {
    AllowsSyncIterablesFlag = 1 << 0,
    AllowsAsyncIterablesFlag = 1 << 1,
    AllowsStringInputFlag = 1 << 2,
    ForOfFlag = 1 << 3,
    YieldStarFlag = 1 << 4,
    SpreadFlag = 1 << 5,
    DestructuringFlag = 1 << 6,
    PossiblyOutOfBounds = 1 << 7,

    // Spread, Destructuring, Array element assignment
    Element = AllowsSyncIterablesFlag,
    Spread = AllowsSyncIterablesFlag | SpreadFlag,
    Destructuring = AllowsSyncIterablesFlag | DestructuringFlag,

    ForOf = AllowsSyncIterablesFlag | AllowsStringInputFlag | ForOfFlag,
    ForAwaitOf = AllowsSyncIterablesFlag | AllowsAsyncIterablesFlag | AllowsStringInputFlag | ForOfFlag,

    YieldStar = AllowsSyncIterablesFlag | YieldStarFlag,
    AsyncYieldStar = AllowsSyncIterablesFlag | AllowsAsyncIterablesFlag | YieldStarFlag,

    GeneratorReturnType = AllowsSyncIterablesFlag,
    AsyncGeneratorReturnType = AllowsAsyncIterablesFlag,
}

const enum IterationTypeKind {
    Yield,
    Return,
    Next,
}

interface IterationTypesResolver {
    iterableCacheKey: "iterationTypesOfAsyncIterable" | "iterationTypesOfIterable";
    iteratorCacheKey: "iterationTypesOfAsyncIterator" | "iterationTypesOfIterator";
    iteratorSymbolName: "asyncIterator" | "iterator";
    getGlobalIteratorType: (reportErrors: boolean) => GenericType;
    getGlobalIterableType: (reportErrors: boolean) => GenericType;
    getGlobalIterableIteratorType: (reportErrors: boolean) => GenericType;
    getGlobalIteratorObjectType: (reportErrors: boolean) => GenericType;
    getGlobalGeneratorType: (reportErrors: boolean) => GenericType;
    getGlobalBuiltinIteratorTypes: () => readonly GenericType[];
    resolveIterationType: (type: Type, errorNode: Node | undefined) => Type | undefined;
    mustHaveANextMethodDiagnostic: DiagnosticMessage;
    mustBeAMethodDiagnostic: DiagnosticMessage;
    mustHaveAValueDiagnostic: DiagnosticMessage;
}

const enum WideningKind {
    Normal,
    FunctionReturn,
    GeneratorNext,
    GeneratorYield,
}

// dprint-ignore
/** @internal */
export const enum TypeFacts {
    None = 0,
    TypeofEQString = 1 << 0,      // typeof x === "string"
    TypeofEQNumber = 1 << 1,      // typeof x === "number"
    TypeofEQBigInt = 1 << 2,      // typeof x === "bigint"
    TypeofEQBoolean = 1 << 3,     // typeof x === "boolean"
    TypeofEQSymbol = 1 << 4,      // typeof x === "symbol"
    TypeofEQObject = 1 << 5,      // typeof x === "object"
    TypeofEQFunction = 1 << 6,    // typeof x === "function"
    TypeofEQHostObject = 1 << 7,  // typeof x === "xxx"
    TypeofNEString = 1 << 8,      // typeof x !== "string"
    TypeofNENumber = 1 << 9,      // typeof x !== "number"
    TypeofNEBigInt = 1 << 10,     // typeof x !== "bigint"
    TypeofNEBoolean = 1 << 11,    // typeof x !== "boolean"
    TypeofNESymbol = 1 << 12,     // typeof x !== "symbol"
    TypeofNEObject = 1 << 13,     // typeof x !== "object"
    TypeofNEFunction = 1 << 14,   // typeof x !== "function"
    TypeofNEHostObject = 1 << 15, // typeof x !== "xxx"
    EQUndefined = 1 << 16,        // x === undefined
    EQNull = 1 << 17,             // x === null
    EQUndefinedOrNull = 1 << 18,  // x === undefined / x === null
    NEUndefined = 1 << 19,        // x !== undefined
    NENull = 1 << 20,             // x !== null
    NEUndefinedOrNull = 1 << 21,  // x != undefined / x != null
    Truthy = 1 << 22,             // x
    Falsy = 1 << 23,              // !x
    IsUndefined = 1 << 24,        // Contains undefined or intersection with undefined
    IsNull = 1 << 25,             // Contains null or intersection with null
    IsUndefinedOrNull = IsUndefined | IsNull,
    All = (1 << 27) - 1,
    // The following members encode facts about particular kinds of types for use in the getTypeFacts function.
    // The presence of a particular fact means that the given test is true for some (and possibly all) values
    // of that kind of type.
    BaseStringStrictFacts = TypeofEQString | TypeofNENumber | TypeofNEBigInt | TypeofNEBoolean | TypeofNESymbol | TypeofNEObject | TypeofNEFunction | TypeofNEHostObject | NEUndefined | NENull | NEUndefinedOrNull,
    BaseStringFacts = BaseStringStrictFacts | EQUndefined | EQNull | EQUndefinedOrNull | Falsy,
    StringStrictFacts = BaseStringStrictFacts | Truthy | Falsy,
    StringFacts = BaseStringFacts | Truthy,
    EmptyStringStrictFacts = BaseStringStrictFacts | Falsy,
    EmptyStringFacts = BaseStringFacts,
    NonEmptyStringStrictFacts = BaseStringStrictFacts | Truthy,
    NonEmptyStringFacts = BaseStringFacts | Truthy,
    BaseNumberStrictFacts = TypeofEQNumber | TypeofNEString | TypeofNEBigInt | TypeofNEBoolean | TypeofNESymbol | TypeofNEObject | TypeofNEFunction | TypeofNEHostObject | NEUndefined | NENull | NEUndefinedOrNull,
    BaseNumberFacts = BaseNumberStrictFacts | EQUndefined | EQNull | EQUndefinedOrNull | Falsy,
    NumberStrictFacts = BaseNumberStrictFacts | Truthy | Falsy,
    NumberFacts = BaseNumberFacts | Truthy,
    ZeroNumberStrictFacts = BaseNumberStrictFacts | Falsy,
    ZeroNumberFacts = BaseNumberFacts,
    NonZeroNumberStrictFacts = BaseNumberStrictFacts | Truthy,
    NonZeroNumberFacts = BaseNumberFacts | Truthy,
    BaseBigIntStrictFacts = TypeofEQBigInt | TypeofNEString | TypeofNENumber | TypeofNEBoolean | TypeofNESymbol | TypeofNEObject | TypeofNEFunction | TypeofNEHostObject | NEUndefined | NENull | NEUndefinedOrNull,
    BaseBigIntFacts = BaseBigIntStrictFacts | EQUndefined | EQNull | EQUndefinedOrNull | Falsy,
    BigIntStrictFacts = BaseBigIntStrictFacts | Truthy | Falsy,
    BigIntFacts = BaseBigIntFacts | Truthy,
    ZeroBigIntStrictFacts = BaseBigIntStrictFacts | Falsy,
    ZeroBigIntFacts = BaseBigIntFacts,
    NonZeroBigIntStrictFacts = BaseBigIntStrictFacts | Truthy,
    NonZeroBigIntFacts = BaseBigIntFacts | Truthy,
    BaseBooleanStrictFacts = TypeofEQBoolean | TypeofNEString | TypeofNENumber | TypeofNEBigInt | TypeofNESymbol | TypeofNEObject | TypeofNEFunction | TypeofNEHostObject | NEUndefined | NENull | NEUndefinedOrNull,
    BaseBooleanFacts = BaseBooleanStrictFacts | EQUndefined | EQNull | EQUndefinedOrNull | Falsy,
    BooleanStrictFacts = BaseBooleanStrictFacts | Truthy | Falsy,
    BooleanFacts = BaseBooleanFacts | Truthy,
    FalseStrictFacts = BaseBooleanStrictFacts | Falsy,
    FalseFacts = BaseBooleanFacts,
    TrueStrictFacts = BaseBooleanStrictFacts | Truthy,
    TrueFacts = BaseBooleanFacts | Truthy,
    SymbolStrictFacts = TypeofEQSymbol | TypeofNEString | TypeofNENumber | TypeofNEBigInt | TypeofNEBoolean | TypeofNEObject | TypeofNEFunction | TypeofNEHostObject | NEUndefined | NENull | NEUndefinedOrNull | Truthy,
    SymbolFacts = SymbolStrictFacts | EQUndefined | EQNull | EQUndefinedOrNull | Falsy,
    ObjectStrictFacts = TypeofEQObject | TypeofEQHostObject | TypeofNEString | TypeofNENumber | TypeofNEBigInt | TypeofNEBoolean | TypeofNESymbol | TypeofNEFunction | NEUndefined | NENull | NEUndefinedOrNull | Truthy,
    ObjectFacts = ObjectStrictFacts | EQUndefined | EQNull | EQUndefinedOrNull | Falsy,
    FunctionStrictFacts = TypeofEQFunction | TypeofEQHostObject | TypeofNEString | TypeofNENumber | TypeofNEBigInt | TypeofNEBoolean | TypeofNESymbol | TypeofNEObject | NEUndefined | NENull | NEUndefinedOrNull | Truthy,
    FunctionFacts = FunctionStrictFacts | EQUndefined | EQNull | EQUndefinedOrNull | Falsy,
    VoidFacts = TypeofNEString | TypeofNENumber | TypeofNEBigInt | TypeofNEBoolean | TypeofNESymbol | TypeofNEObject | TypeofNEFunction | TypeofNEHostObject | EQUndefined | EQUndefinedOrNull | NENull | Falsy,
    UndefinedFacts = TypeofNEString | TypeofNENumber | TypeofNEBigInt | TypeofNEBoolean | TypeofNESymbol | TypeofNEObject | TypeofNEFunction | TypeofNEHostObject | EQUndefined | EQUndefinedOrNull | NENull | Falsy | IsUndefined,
    NullFacts = TypeofEQObject | TypeofNEString | TypeofNENumber | TypeofNEBigInt | TypeofNEBoolean | TypeofNESymbol | TypeofNEFunction | TypeofNEHostObject | EQNull | EQUndefinedOrNull | NEUndefined | Falsy | IsNull,
    EmptyObjectStrictFacts = All & ~(EQUndefined | EQNull | EQUndefinedOrNull | IsUndefinedOrNull),
    EmptyObjectFacts = All & ~IsUndefinedOrNull,
    UnknownFacts = All & ~IsUndefinedOrNull,
    AllTypeofNE = TypeofNEString | TypeofNENumber | TypeofNEBigInt | TypeofNEBoolean | TypeofNESymbol | TypeofNEObject | TypeofNEFunction | NEUndefined,
    // Masks
    OrFactsMask = TypeofEQFunction | TypeofNEObject,
    AndFactsMask = All & ~OrFactsMask,
}

const typeofNEFacts: ReadonlyMap<string, TypeFacts> = new Map(Object.entries({
    string: TypeFacts.TypeofNEString,
    number: TypeFacts.TypeofNENumber,
    bigint: TypeFacts.TypeofNEBigInt,
    boolean: TypeFacts.TypeofNEBoolean,
    symbol: TypeFacts.TypeofNESymbol,
    undefined: TypeFacts.NEUndefined,
    object: TypeFacts.TypeofNEObject,
    function: TypeFacts.TypeofNEFunction,
}));

type TypeSystemEntity = Node | Symbol | Type | Signature;

const enum TypeSystemPropertyName {
    Type,
    ResolvedBaseConstructorType,
    DeclaredType,
    ResolvedReturnType,
    ImmediateBaseConstraint,
    ResolvedTypeArguments,
    ResolvedBaseTypes,
    WriteType,
    ParameterInitializerContainsUndefined,
}

// dprint-ignore
/** @internal */
export const enum CheckMode {
    Normal = 0,                                     // Normal type checking
    Contextual = 1 << 0,                            // Explicitly assigned contextual type, therefore not cacheable
    Inferential = 1 << 1,                           // Inferential typing
    SkipContextSensitive = 1 << 2,                  // Skip context sensitive function expressions
    SkipGenericFunctions = 1 << 3,                  // Skip single signature generic functions
    IsForSignatureHelp = 1 << 4,                    // Call resolution for purposes of signature help
    RestBindingElement = 1 << 5,                    // Checking a type that is going to be used to determine the type of a rest binding element
                                                    //   e.g. in `const { a, ...rest } = foo`, when checking the type of `foo` to determine the type of `rest`,
                                                    //   we need to preserve generic types instead of substituting them for constraints
    TypeOnly = 1 << 6,                              // Called from getTypeOfExpression, diagnostics may be omitted
}

/** @internal */
export const enum SignatureCheckMode {
    None = 0,
    BivariantCallback = 1 << 0,
    StrictCallback = 1 << 1,
    IgnoreReturnTypes = 1 << 2,
    StrictArity = 1 << 3,
    StrictTopSignature = 1 << 4,
    Callback = BivariantCallback | StrictCallback,
}

const enum IntersectionState {
    None = 0,
    Source = 1 << 0, // Source type is a constituent of an outer intersection
    Target = 1 << 1, // Target type is a constituent of an outer intersection
}

const enum RecursionFlags {
    None = 0,
    Source = 1 << 0,
    Target = 1 << 1,
    Both = Source | Target,
}

const enum MappedTypeModifiers {
    IncludeReadonly = 1 << 0,
    ExcludeReadonly = 1 << 1,
    IncludeOptional = 1 << 2,
    ExcludeOptional = 1 << 3,
}

const enum MappedTypeNameTypeKind {
    None,
    Filtering,
    Remapping,
}

const enum ExpandingFlags {
    None = 0,
    Source = 1,
    Target = 1 << 1,
    Both = Source | Target,
}

const enum MembersOrExportsResolutionKind {
    resolvedExports = "resolvedExports",
    resolvedMembers = "resolvedMembers",
}

const enum UnusedKind {
    Local,
    Parameter,
}

/** @param containingNode Node to check for parse error */
type AddUnusedDiagnostic = (containingNode: Node, type: UnusedKind, diagnostic: DiagnosticWithLocation) => void;

const isNotOverloadAndNotAccessor = and(isNotOverload, isNotAccessor);

const enum DeclarationMeaning {
    GetAccessor = 1,
    SetAccessor = 2,
    PropertyAssignment = 4,
    Method = 8,
    PrivateStatic = 16,
    GetOrSetAccessor = GetAccessor | SetAccessor,
    PropertyAssignmentOrMethod = PropertyAssignment | Method,
}

const enum DeclarationSpaces {
    None = 0,
    ExportValue = 1 << 0,
    ExportType = 1 << 1,
    ExportNamespace = 1 << 2,
}

const enum MinArgumentCountFlags {
    None = 0,
    StrongArityForUntypedJS = 1 << 0,
    VoidIsNonOptional = 1 << 1,
}

const enum IntrinsicTypeKind {
    Uppercase,
    Lowercase,
    Capitalize,
    Uncapitalize,
    NoInfer,
}

const intrinsicTypeKinds: ReadonlyMap<string, IntrinsicTypeKind> = new Map(Object.entries({
    Uppercase: IntrinsicTypeKind.Uppercase,
    Lowercase: IntrinsicTypeKind.Lowercase,
    Capitalize: IntrinsicTypeKind.Capitalize,
    Uncapitalize: IntrinsicTypeKind.Uncapitalize,
    NoInfer: IntrinsicTypeKind.NoInfer,
}));

const SymbolLinks = class implements SymbolLinks {
    declare _symbolLinksBrand: any;
};

function NodeLinks(this: NodeLinks) {
    this.flags = NodeCheckFlags.None;
}

/** @internal */
export function getNodeId(node: Node): number {
    if (!node.id) {
        node.id = nextNodeId;
        nextNodeId++;
    }
    return node.id;
}

/** @internal */
export function getSymbolId(symbol: Symbol): SymbolId {
    if (!symbol.id) {
        symbol.id = nextSymbolId;
        nextSymbolId++;
    }

    return symbol.id;
}

/** @internal */
export function isInstantiatedModule(node: ModuleDeclaration, preserveConstEnums: boolean): boolean {
    const moduleState = getModuleInstanceState(node);
    return moduleState === ModuleInstanceState.Instantiated ||
        (preserveConstEnums && moduleState === ModuleInstanceState.ConstEnumOnly);
}

/** @internal */
export function createTypeChecker(host: TypeCheckerHost): TypeChecker {
    // Why var? It avoids TDZ checks in the runtime which can be costly.
    // See: https://github.com/microsoft/TypeScript/issues/52924
    /* eslint-disable no-var */
    var deferredDiagnosticsCallbacks: (() => void)[] = [];

    var addLazyDiagnostic = (arg: () => void) => {
        deferredDiagnosticsCallbacks.push(arg);
    };

    // Cancellation that controls whether or not we can cancel in the middle of type checking.
    // In general cancelling is *not* safe for the type checker.  We might be in the middle of
    // computing something, and we will leave our internals in an inconsistent state.  Callers
    // who set the cancellation token should catch if a cancellation exception occurs, and
    // should throw away and create a new TypeChecker.
    //
    // Currently we only support setting the cancellation token when getting diagnostics.  This
    // is because diagnostics can be quite expensive, and we want to allow hosts to bail out if
    // they no longer need the information (for example, if the user started editing again).
    var cancellationToken: CancellationToken | undefined;

    var scanner: Scanner | undefined;

    var Symbol = objectAllocator.getSymbolConstructor();
    var Type = objectAllocator.getTypeConstructor();
    var Signature = objectAllocator.getSignatureConstructor();

    var typeCount = 0;
    var symbolCount = 0;
    var totalInstantiationCount = 0;
    var instantiationCount = 0;
    var instantiationDepth = 0;
    var inlineLevel = 0;
    var currentNode: Node | undefined;
    var varianceTypeParameter: TypeParameter | undefined;
    var isInferencePartiallyBlocked = false;
    var withinUnreachableCode = false;
    var reportedUnreachableNodes: Set<Node> | undefined;

    var emptySymbols = createSymbolTable();
    var arrayVariances = [VarianceFlags.Covariant];

    var compilerOptions = host.getCompilerOptions();
    var languageVersion = getEmitScriptTarget(compilerOptions);
    var moduleKind = getEmitModuleKind(compilerOptions);
    var legacyDecorators = !!compilerOptions.experimentalDecorators;
    var useDefineForClassFields = getUseDefineForClassFields(compilerOptions);
    var emitStandardClassFields = getEmitStandardClassFields(compilerOptions);
    var allowSyntheticDefaultImports = getAllowSyntheticDefaultImports(compilerOptions);
    var strictNullChecks = getStrictOptionValue(compilerOptions, "strictNullChecks");
    var strictFunctionTypes = getStrictOptionValue(compilerOptions, "strictFunctionTypes");
    var strictBindCallApply = getStrictOptionValue(compilerOptions, "strictBindCallApply");
    var strictPropertyInitialization = getStrictOptionValue(compilerOptions, "strictPropertyInitialization");
    var strictBuiltinIteratorReturn = getStrictOptionValue(compilerOptions, "strictBuiltinIteratorReturn");
    var noImplicitAny = getStrictOptionValue(compilerOptions, "noImplicitAny");
    var noImplicitThis = getStrictOptionValue(compilerOptions, "noImplicitThis");
    var useUnknownInCatchVariables = getStrictOptionValue(compilerOptions, "useUnknownInCatchVariables");
    var exactOptionalPropertyTypes = compilerOptions.exactOptionalPropertyTypes;
    var noUncheckedSideEffectImports = compilerOptions.noUncheckedSideEffectImports !== false;

    var checkBinaryExpression = createCheckBinaryExpression();
    var emitResolver = createResolver();
    var nodeBuilder = createNodeBuilder();
    var syntacticNodeBuilder = createSyntacticTypeNodeBuilder(compilerOptions, nodeBuilder.syntacticBuilderResolver);
    var evaluate = createEvaluator({
        evaluateElementAccessExpression,
        evaluateEntityNameExpression,
    });

    var globals = createSymbolTable();
    var undefinedSymbol = createSymbol(SymbolFlags.Property, "undefined" as __String);
    undefinedSymbol.declarations = [];

    var globalThisSymbol = createSymbol(SymbolFlags.Module, "globalThis" as __String, CheckFlags.Readonly);
    globalThisSymbol.exports = globals;
    globalThisSymbol.declarations = [];
    globals.set(globalThisSymbol.escapedName, globalThisSymbol);

    var argumentsSymbol = createSymbol(SymbolFlags.Property, "arguments" as __String);
    var requireSymbol = createSymbol(SymbolFlags.Property, "require" as __String);
    var isolatedModulesLikeFlagName = compilerOptions.verbatimModuleSyntax ? "verbatimModuleSyntax" : "isolatedModules";
    var canCollectSymbolAliasAccessabilityData = !compilerOptions.verbatimModuleSyntax;

    /** This will be set during calls to `getResolvedSignature` where services determines an apparent number of arguments greater than what is actually provided. */
    var apparentArgumentCount: number | undefined;

    var lastGetCombinedNodeFlagsNode: Node | undefined;
    var lastGetCombinedNodeFlagsResult = NodeFlags.None;
    var lastGetCombinedModifierFlagsNode: Declaration | undefined;
    var lastGetCombinedModifierFlagsResult = ModifierFlags.None;
    var resolveName = createNameResolver({
        compilerOptions,
        requireSymbol,
        argumentsSymbol,
        globals,
        getSymbolOfDeclaration,
        error,
        getRequiresScopeChangeCache,
        setRequiresScopeChangeCache,
        lookup: getSymbol,
        onPropertyWithInvalidInitializer: checkAndReportErrorForInvalidInitializer,
        onFailedToResolveSymbol,
        onSuccessfullyResolvedSymbol,
    });

    var resolveNameForSymbolSuggestion = createNameResolver({
        compilerOptions,
        requireSymbol,
        argumentsSymbol,
        globals,
        getSymbolOfDeclaration,
        error,
        getRequiresScopeChangeCache,
        setRequiresScopeChangeCache,
        lookup: getSuggestionForSymbolNameLookup,
    });
    // for public members that accept a Node or one of its subtypes, we must guard against
    // synthetic nodes created during transformations by calling `getParseTreeNode`.
    // for most of these, we perform the guard only on `checker` to avoid any possible
    // extra cost of calling `getParseTreeNode` when calling these functions from inside the
    // checker.
    const checker: TypeChecker = {
        getNodeCount: () => reduceLeft(host.getSourceFiles(), (n, s) => n + s.nodeCount, 0),
        getIdentifierCount: () => reduceLeft(host.getSourceFiles(), (n, s) => n + s.identifierCount, 0),
        getSymbolCount: () => reduceLeft(host.getSourceFiles(), (n, s) => n + s.symbolCount, symbolCount),
        getTypeCount: () => typeCount,
        getInstantiationCount: () => totalInstantiationCount,
        getRelationCacheSizes: () => ({
            assignable: assignableRelation.size,
            identity: identityRelation.size,
            subtype: subtypeRelation.size,
            strictSubtype: strictSubtypeRelation.size,
        }),
        isUndefinedSymbol: symbol => symbol === undefinedSymbol,
        isArgumentsSymbol: symbol => symbol === argumentsSymbol,
        isUnknownSymbol: symbol => symbol === unknownSymbol,
        getMergedSymbol,
        symbolIsValue,
        getDiagnostics,
        getGlobalDiagnostics,
        getRecursionIdentity,
        getUnmatchedProperties,
        getTypeOfSymbolAtLocation: (symbol, locationIn) => {
            const location = getParseTreeNode(locationIn);
            return location ? getTypeOfSymbolAtLocation(symbol, location) : errorType;
        },
        getTypeOfSymbol,
        getSymbolsOfParameterPropertyDeclaration: (parameterIn, parameterName) => {
            const parameter = getParseTreeNode(parameterIn, isParameter);
            if (parameter === undefined) return Debug.fail("Cannot get symbols of a synthetic parameter that cannot be resolved to a parse-tree node.");
            Debug.assert(isParameterPropertyDeclaration(parameter, parameter.parent));
            return getSymbolsOfParameterPropertyDeclaration(parameter, escapeLeadingUnderscores(parameterName));
        },
        getDeclaredTypeOfSymbol,
        getPropertiesOfType,
        getPropertyOfType: (type, name) => getPropertyOfType(type, escapeLeadingUnderscores(name)),
        getPrivateIdentifierPropertyOfType: (leftType: Type, name: string, location: Node) => {
            const node = getParseTreeNode(location);
            if (!node) {
                return undefined;
            }
            const propName = escapeLeadingUnderscores(name);
            const lexicallyScopedIdentifier = lookupSymbolForPrivateIdentifierDeclaration(propName, node);
            return lexicallyScopedIdentifier ? getPrivateIdentifierPropertyOfType(leftType, lexicallyScopedIdentifier) : undefined;
        },
        getTypeOfPropertyOfType: (type, name) => getTypeOfPropertyOfType(type, escapeLeadingUnderscores(name)),
        getIndexInfoOfType: (type, kind) => getIndexInfoOfType(type, kind === IndexKind.String ? stringType : numberType),
        getIndexInfosOfType,
        getIndexInfosOfIndexSymbol,
        getSignaturesOfType,
        getIndexTypeOfType: (type, kind) => getIndexTypeOfType(type, kind === IndexKind.String ? stringType : numberType),
        getIndexType: type => getIndexType(type),
        getBaseTypes,
        getBaseTypeOfLiteralType,
        getWidenedType,
        getWidenedLiteralType,
        fillMissingTypeArguments,
        getTypeFromTypeNode: nodeIn => {
            const node = getParseTreeNode(nodeIn, isTypeNode);
            return node ? getTypeFromTypeNode(node) : errorType;
        },
        getParameterType: getTypeAtPosition,
        getParameterIdentifierInfoAtPosition,
        getPromisedTypeOfPromise,
        getAwaitedType: type => getAwaitedType(type),
        getReturnTypeOfSignature,
        isNullableType,
        getNullableType,
        getNonNullableType,
        getNonOptionalType: removeOptionalTypeMarker,
        getTypeArguments,
        typeToTypeNode: nodeBuilder.typeToTypeNode,
        typePredicateToTypePredicateNode: nodeBuilder.typePredicateToTypePredicateNode,
        indexInfoToIndexSignatureDeclaration: nodeBuilder.indexInfoToIndexSignatureDeclaration,
        signatureToSignatureDeclaration: nodeBuilder.signatureToSignatureDeclaration,
        symbolToEntityName: nodeBuilder.symbolToEntityName,
        symbolToExpression: nodeBuilder.symbolToExpression,
        symbolToNode: nodeBuilder.symbolToNode,
        symbolToTypeParameterDeclarations: nodeBuilder.symbolToTypeParameterDeclarations,
        symbolToParameterDeclaration: nodeBuilder.symbolToParameterDeclaration,
        typeParameterToDeclaration: nodeBuilder.typeParameterToDeclaration,
        getSymbolsInScope: (locationIn, meaning) => {
            const location = getParseTreeNode(locationIn);
            return location ? getSymbolsInScope(location, meaning) : [];
        },
        getSymbolAtLocation: nodeIn => {
            const node = getParseTreeNode(nodeIn);
            // set ignoreErrors: true because any lookups invoked by the API shouldn't cause any new errors
            return node ? getSymbolAtLocation(node, /*ignoreErrors*/ true) : undefined;
        },
        getIndexInfosAtLocation: nodeIn => {
            const node = getParseTreeNode(nodeIn);
            return node ? getIndexInfosAtLocation(node) : undefined;
        },
        getShorthandAssignmentValueSymbol: nodeIn => {
            const node = getParseTreeNode(nodeIn);
            return node ? getShorthandAssignmentValueSymbol(node) : undefined;
        },
        getExportSpecifierLocalTargetSymbol: nodeIn => {
            const node = getParseTreeNode(nodeIn, isExportSpecifier);
            return node ? getExportSpecifierLocalTargetSymbol(node) : undefined;
        },
        getExportSymbolOfSymbol(symbol) {
            return getMergedSymbol(symbol.exportSymbol || symbol);
        },
        getTypeAtLocation: nodeIn => {
            const node = getParseTreeNode(nodeIn);
            return node ? getTypeOfNode(node) : errorType;
        },
        getTypeOfAssignmentPattern: nodeIn => {
            const node = getParseTreeNode(nodeIn, isAssignmentPattern);
            return node && getTypeOfAssignmentPattern(node) || errorType;
        },
        getPropertySymbolOfDestructuringAssignment: locationIn => {
            const location = getParseTreeNode(locationIn, isIdentifier);
            return location ? getPropertySymbolOfDestructuringAssignment(location) : undefined;
        },
        signatureToString: (signature, enclosingDeclaration, flags, kind) => {
            return signatureToString(signature, getParseTreeNode(enclosingDeclaration), flags, kind);
        },
        typeToString: (type, enclosingDeclaration, flags) => {
            return typeToString(type, getParseTreeNode(enclosingDeclaration), flags);
        },
        symbolToString: (symbol, enclosingDeclaration, meaning, flags) => {
            return symbolToString(symbol, getParseTreeNode(enclosingDeclaration), meaning, flags);
        },
        typePredicateToString: (predicate, enclosingDeclaration, flags) => {
            return typePredicateToString(predicate, getParseTreeNode(enclosingDeclaration), flags);
        },
        writeSignature: (signature, enclosingDeclaration, flags, kind, writer, maximumLength, verbosityLevel, out) => {
            return signatureToString(signature, getParseTreeNode(enclosingDeclaration), flags, kind, writer, maximumLength, verbosityLevel, out);
        },
        writeType: (type, enclosingDeclaration, flags, writer, maximumLength, verbosityLevel, out) => {
            return typeToString(type, getParseTreeNode(enclosingDeclaration), flags, writer, maximumLength, verbosityLevel, out);
        },
        writeSymbol: (symbol, enclosingDeclaration, meaning, flags, writer) => {
            return symbolToString(symbol, getParseTreeNode(enclosingDeclaration), meaning, flags, writer);
        },
        writeTypePredicate: (predicate, enclosingDeclaration, flags, writer) => {
            return typePredicateToString(predicate, getParseTreeNode(enclosingDeclaration), flags, writer);
        },
        getAugmentedPropertiesOfType,
        getRootSymbols,
        getSymbolOfExpando,
        getContextualType: (nodeIn: Expression, contextFlags?: ContextFlags) => {
            const node = getParseTreeNode(nodeIn, isExpression);
            if (!node) {
                return undefined;
            }
            if (contextFlags! & ContextFlags.Completions) {
                return runWithInferenceBlockedFromSourceNode(node, () => getContextualType(node, contextFlags));
            }
            return getContextualType(node, contextFlags);
        },
        getContextualTypeForObjectLiteralElement: nodeIn => {
            const node = getParseTreeNode(nodeIn, isObjectLiteralElementLike);
            return node ? getContextualTypeForObjectLiteralElement(node, /*contextFlags*/ undefined) : undefined;
        },
        getContextualTypeForArgumentAtIndex: (nodeIn, argIndex) => {
            const node = getParseTreeNode(nodeIn, isCallLikeExpression);
            return node && getContextualTypeForArgumentAtIndex(node, argIndex);
        },
        getContextualTypeForJsxAttribute: nodeIn => {
            const node = getParseTreeNode(nodeIn, isJsxAttributeLike);
            return node && getContextualTypeForJsxAttribute(node, /*contextFlags*/ undefined);
        },
        isContextSensitive,
        getTypeOfPropertyOfContextualType,
        getFullyQualifiedName,
        getResolvedSignature: (node, candidatesOutArray, argumentCount) => getResolvedSignatureWorker(node, candidatesOutArray, argumentCount, CheckMode.Normal),
        getCandidateSignaturesForStringLiteralCompletions,
        getResolvedSignatureForSignatureHelp: (node, candidatesOutArray, argumentCount) => runWithoutResolvedSignatureCaching(node, () => getResolvedSignatureWorker(node, candidatesOutArray, argumentCount, CheckMode.IsForSignatureHelp)),
        getExpandedParameters,
        hasEffectiveRestParameter,
        containsArgumentsReference,
        getConstantValue: nodeIn => {
            const node = getParseTreeNode(nodeIn, canHaveConstantValue);
            return node ? getConstantValue(node) : undefined;
        },
        isValidPropertyAccess: (nodeIn, propertyName) => {
            const node = getParseTreeNode(nodeIn, isPropertyAccessOrQualifiedNameOrImportTypeNode);
            return !!node && isValidPropertyAccess(node, escapeLeadingUnderscores(propertyName));
        },
        isValidPropertyAccessForCompletions: (nodeIn, type, property) => {
            const node = getParseTreeNode(nodeIn, isPropertyAccessExpression);
            return !!node && isValidPropertyAccessForCompletions(node, type, property);
        },
        getSignatureFromDeclaration: declarationIn => {
            const declaration = getParseTreeNode(declarationIn, isFunctionLike);
            return declaration ? getSignatureFromDeclaration(declaration) : undefined;
        },
        isImplementationOfOverload: nodeIn => {
            const node = getParseTreeNode(nodeIn, isFunctionLike);
            return node ? isImplementationOfOverload(node) : undefined;
        },
        getImmediateAliasedSymbol,
        getAliasedSymbol: resolveAlias,
        getEmitResolver,
        requiresAddingImplicitUndefined,
        getExportsOfModule: getExportsOfModuleAsArray,
        getExportsAndPropertiesOfModule,
        forEachExportAndPropertyOfModule,
        getSymbolWalker: createGetSymbolWalker(
            getRestTypeOfSignature,
            getTypePredicateOfSignature,
            getReturnTypeOfSignature,
            getBaseTypes,
            resolveStructuredTypeMembers,
            getTypeOfSymbol,
            getResolvedSymbol,
            getConstraintOfTypeParameter,
            getFirstIdentifier,
            getTypeArguments,
        ),
        getAmbientModules,
        getJsxIntrinsicTagNamesAt,
        isOptionalParameter: nodeIn => {
            const node = getParseTreeNode(nodeIn, isParameter);
            return node ? isOptionalParameter(node) : false;
        },
        tryGetMemberInModuleExports: (name, symbol) => tryGetMemberInModuleExports(escapeLeadingUnderscores(name), symbol),
        tryGetMemberInModuleExportsAndProperties: (name, symbol) => tryGetMemberInModuleExportsAndProperties(escapeLeadingUnderscores(name), symbol),
        tryFindAmbientModule: moduleName => tryFindAmbientModule(moduleName, /*withAugmentations*/ true),
        getApparentType,
        getUnionType,
        isTypeAssignableTo,
        createAnonymousType,
        createSignature,
        createSymbol,
        createIndexInfo,
        getAnyType: () => anyType,
        getStringType: () => stringType,
        getStringLiteralType,
        getNumberType: () => numberType,
        getNumberLiteralType,
        getBigIntType: () => bigintType,
        getBigIntLiteralType,
        getUnknownType: () => unknownType,
        createPromiseType,
        createArrayType,
        getElementTypeOfArrayType,
        getBooleanType: () => booleanType,
        getFalseType: (fresh?) => fresh ? falseType : regularFalseType,
        getTrueType: (fresh?) => fresh ? trueType : regularTrueType,
        getVoidType: () => voidType,
        getUndefinedType: () => undefinedType,
        getNullType: () => nullType,
        getESSymbolType: () => esSymbolType,
        getNeverType: () => neverType,
        getNonPrimitiveType: () => nonPrimitiveType,
        getOptionalType: () => optionalType,
        getPromiseType: () => getGlobalPromiseType(/*reportErrors*/ false),
        getPromiseLikeType: () => getGlobalPromiseLikeType(/*reportErrors*/ false),
        getAnyAsyncIterableType: () => {
            const type = getGlobalAsyncIterableType(/*reportErrors*/ false);
            if (type === emptyGenericType) return undefined;
            return createTypeReference(type, [anyType, anyType, anyType]);
        },
        isSymbolAccessible,
        isArrayType,
        isTupleType,
        isArrayLikeType,
        isEmptyAnonymousObjectType,
        isTypeInvalidDueToUnionDiscriminant,
        getExactOptionalProperties,
        getAllPossiblePropertiesOfTypes,
        getSuggestedSymbolForNonexistentProperty,
        getSuggestedSymbolForNonexistentJSXAttribute,
        getSuggestedSymbolForNonexistentSymbol: (location, name, meaning) => getSuggestedSymbolForNonexistentSymbol(location, escapeLeadingUnderscores(name), meaning),
        getSuggestedSymbolForNonexistentModule,
        getSuggestedSymbolForNonexistentClassMember,
        getBaseConstraintOfType,
        getDefaultFromTypeParameter: type => type && type.flags & TypeFlags.TypeParameter ? getDefaultFromTypeParameter(type as TypeParameter) : undefined,
        resolveName(name, location, meaning, excludeGlobals) {
            return resolveName(location, escapeLeadingUnderscores(name), meaning, /*nameNotFoundMessage*/ undefined, /*isUse*/ false, excludeGlobals);
        },
        getJsxNamespace: n => unescapeLeadingUnderscores(getJsxNamespace(n)),
        getJsxFragmentFactory: n => {
            const jsxFragmentFactory = getJsxFragmentFactoryEntity(n);
            return jsxFragmentFactory && unescapeLeadingUnderscores(getFirstIdentifier(jsxFragmentFactory).escapedText);
        },
        getAccessibleSymbolChain,
        getTypePredicateOfSignature,
        resolveExternalModuleName: moduleSpecifierIn => {
            const moduleSpecifier = getParseTreeNode(moduleSpecifierIn, isExpression);
            return moduleSpecifier && resolveExternalModuleName(moduleSpecifier, moduleSpecifier, /*ignoreErrors*/ true);
        },
        resolveExternalModuleSymbol,
        tryGetThisTypeAt: (nodeIn, includeGlobalThis, container) => {
            const node = getParseTreeNode(nodeIn);
            return node && tryGetThisTypeAt(node, includeGlobalThis, container);
        },
        getTypeArgumentConstraint: nodeIn => {
            const node = getParseTreeNode(nodeIn, isTypeNode);
            return node && getTypeArgumentConstraint(node);
        },
        getSuggestionDiagnostics: (fileIn, ct) => {
            const file = getParseTreeNode(fileIn, isSourceFile) || Debug.fail("Could not determine parsed source file.");
            if (skipTypeChecking(file, compilerOptions, host)) {
                return emptyArray;
            }

            let diagnostics: DiagnosticWithLocation[] | undefined;
            try {
                // Record the cancellation token so it can be checked later on during checkSourceElement.
                // Do this in a finally block so we can ensure that it gets reset back to nothing after
                // this call is done.
                cancellationToken = ct;

                // Ensure file is type checked, with _eager_ diagnostic production, so identifiers are registered as potentially unused
                checkSourceFileWithEagerDiagnostics(file);
                Debug.assert(!!(getNodeLinks(file).flags & NodeCheckFlags.TypeChecked));

                diagnostics = addRange(diagnostics, suggestionDiagnostics.getDiagnostics(file.fileName));
                checkUnusedIdentifiers(getPotentiallyUnusedIdentifiers(file), (containingNode, kind, diag) => {
                    if (!containsParseError(containingNode) && !unusedIsError(kind, !!(containingNode.flags & NodeFlags.Ambient))) {
                        (diagnostics || (diagnostics = [])).push({ ...diag, category: DiagnosticCategory.Suggestion });
                    }
                });

                return diagnostics || emptyArray;
            }
            finally {
                cancellationToken = undefined;
            }
        },

        runWithCancellationToken: (token, callback) => {
            try {
                cancellationToken = token;
                return callback(checker);
            }
            finally {
                cancellationToken = undefined;
            }
        },

        getLocalTypeParametersOfClassOrInterfaceOrTypeAlias,
        isDeclarationVisible,
        isPropertyAccessible,
        getTypeOnlyAliasDeclaration,
        getMemberOverrideModifierStatus,
        isTypeParameterPossiblyReferenced,
        typeHasCallOrConstructSignatures,
        getSymbolFlags,
        getTypeArgumentsForResolvedSignature,
        isLibType,
    };

    function getTypeArgumentsForResolvedSignature(signature: Signature) {
        if (signature.mapper === undefined) return undefined;
        return instantiateTypes((signature.target || signature).typeParameters, signature.mapper);
    }

    function getCandidateSignaturesForStringLiteralCompletions(call: CallLikeExpression, editingArgument: Node) {
        const candidatesSet = new Set<Signature>();
        const candidates: Signature[] = [];

        // first, get candidates when inference is blocked from the source node.
        runWithInferenceBlockedFromSourceNode(editingArgument, () => getResolvedSignatureWorker(call, candidates, /*argumentCount*/ undefined, CheckMode.Normal));
        for (const candidate of candidates) {
            candidatesSet.add(candidate);
        }

        // reset candidates for second pass
        candidates.length = 0;

        // next, get candidates where the source node is considered for inference.
        runWithoutResolvedSignatureCaching(editingArgument, () => getResolvedSignatureWorker(call, candidates, /*argumentCount*/ undefined, CheckMode.Normal));
        for (const candidate of candidates) {
            candidatesSet.add(candidate);
        }

        return arrayFrom(candidatesSet);
    }

    function runWithoutResolvedSignatureCaching<T>(node: Node | undefined, fn: () => T): T {
        node = findAncestor(node, isCallLikeOrFunctionLikeExpression);
        if (node) {
            const cachedResolvedSignatures = [];
            const cachedTypes = [];
            while (node) {
                const nodeLinks = getNodeLinks(node);
                cachedResolvedSignatures.push([nodeLinks, nodeLinks.resolvedSignature] as const);
                nodeLinks.resolvedSignature = undefined;
                if (isFunctionExpressionOrArrowFunction(node)) {
                    const symbolLinks = getSymbolLinks(getSymbolOfDeclaration(node));
                    const type = symbolLinks.type;
                    cachedTypes.push([symbolLinks, type] as const);
                    symbolLinks.type = undefined;
                }
                node = findAncestor(node.parent, isCallLikeOrFunctionLikeExpression);
            }
            const result = fn();
            for (const [nodeLinks, resolvedSignature] of cachedResolvedSignatures) {
                nodeLinks.resolvedSignature = resolvedSignature;
            }
            for (const [symbolLinks, type] of cachedTypes) {
                symbolLinks.type = type;
