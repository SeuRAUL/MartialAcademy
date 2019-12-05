Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(Academy_ctx_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(Academy_ctx_i))==(Machine(Academy_ctx));
  Level(Implementation(Academy_ctx_i))==(1);
  Upper_Level(Implementation(Academy_ctx_i))==(Machine(Academy_ctx))
END
&
THEORY LoadedStructureX IS
  Implementation(Academy_ctx_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(Academy_ctx_i))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(Academy_ctx_i))==(?);
  Inherited_List_Includes(Implementation(Academy_ctx_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(Academy_ctx_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(Academy_ctx_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(Academy_ctx_i))==(?);
  Context_List_Variables(Implementation(Academy_ctx_i))==(?);
  Abstract_List_Variables(Implementation(Academy_ctx_i))==(?);
  Local_List_Variables(Implementation(Academy_ctx_i))==(?);
  List_Variables(Implementation(Academy_ctx_i))==(?);
  External_List_Variables(Implementation(Academy_ctx_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(Academy_ctx_i))==(?);
  Abstract_List_VisibleVariables(Implementation(Academy_ctx_i))==(?);
  External_List_VisibleVariables(Implementation(Academy_ctx_i))==(?);
  Expanded_List_VisibleVariables(Implementation(Academy_ctx_i))==(?);
  List_VisibleVariables(Implementation(Academy_ctx_i))==(?);
  Internal_List_VisibleVariables(Implementation(Academy_ctx_i))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(Academy_ctx_i))==(btrue);
  Expanded_List_Invariant(Implementation(Academy_ctx_i))==(btrue);
  Abstract_List_Invariant(Implementation(Academy_ctx_i))==(btrue);
  Context_List_Invariant(Implementation(Academy_ctx_i))==(btrue);
  List_Invariant(Implementation(Academy_ctx_i))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(Academy_ctx_i))==(btrue);
  Abstract_List_Assertions(Implementation(Academy_ctx_i))==(btrue);
  Context_List_Assertions(Implementation(Academy_ctx_i))==(btrue);
  List_Assertions(Implementation(Academy_ctx_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(Academy_ctx_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(Academy_ctx_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(Academy_ctx_i))==(skip);
  Context_List_Initialisation(Implementation(Academy_ctx_i))==(skip);
  List_Initialisation(Implementation(Academy_ctx_i))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(Academy_ctx_i))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(Academy_ctx_i))==(btrue);
  List_Context_Constraints(Implementation(Academy_ctx_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(Academy_ctx_i))==(?);
  List_Operations(Implementation(Academy_ctx_i))==(?)
END
&
THEORY ListInputX END
&
THEORY ListOutputX END
&
THEORY ListHeaderX END
&
THEORY ListPreconditionX END
&
THEORY ListSubstitutionX END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(Academy_ctx_i))==(size_artists,size_techniques);
  Inherited_List_Constants(Implementation(Academy_ctx_i))==(size_artists,size_techniques);
  List_Constants(Implementation(Academy_ctx_i))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(Academy_ctx_i),RANK)==({white,colour,black,master});
  Context_List_Enumerated(Implementation(Academy_ctx_i))==(?);
  Context_List_Defered(Implementation(Academy_ctx_i))==(?);
  Context_List_Sets(Implementation(Academy_ctx_i))==(?);
  List_Own_Enumerated(Implementation(Academy_ctx_i))==(RANK);
  List_Valuable_Sets(Implementation(Academy_ctx_i))==(ARTIST,TECHNIQUE);
  Inherited_List_Enumerated(Implementation(Academy_ctx_i))==(RANK);
  Inherited_List_Defered(Implementation(Academy_ctx_i))==(ARTIST,TECHNIQUE);
  Inherited_List_Sets(Implementation(Academy_ctx_i))==(ARTIST,TECHNIQUE,RANK);
  List_Enumerated(Implementation(Academy_ctx_i))==(?);
  List_Defered(Implementation(Academy_ctx_i))==(?);
  List_Sets(Implementation(Academy_ctx_i))==(?);
  Set_Definition(Implementation(Academy_ctx_i),TECHNIQUE)==(?);
  Set_Definition(Implementation(Academy_ctx_i),ARTIST)==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(Academy_ctx_i))==(?);
  Expanded_List_HiddenConstants(Implementation(Academy_ctx_i))==(?);
  List_HiddenConstants(Implementation(Academy_ctx_i))==(?);
  External_List_HiddenConstants(Implementation(Academy_ctx_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(Academy_ctx_i))==(size_artists: NAT1 & size_artists>1 & size_techniques: NAT1 & size_techniques>1 & ARTIST: FIN(INTEGER) & not(ARTIST = {}) & TECHNIQUE: FIN(INTEGER) & not(TECHNIQUE = {}) & RANK: FIN(INTEGER) & not(RANK = {}));
  Context_List_Properties(Implementation(Academy_ctx_i))==(btrue);
  Inherited_List_Properties(Implementation(Academy_ctx_i))==(btrue);
  List_Properties(Implementation(Academy_ctx_i))==(btrue)
END
&
THEORY ListValuesX IS
  Precond_Valued_Objects(Implementation(Academy_ctx_i))==(btrue);
  Values_Subs(Implementation(Academy_ctx_i))==(size_artists,size_techniques,ARTIST,TECHNIQUE: 50,25,0..50,0..25);
  List_Values(Implementation(Academy_ctx_i))==(size_artists = 50;size_techniques = 25;ARTIST = 0..50;TECHNIQUE = 0..25)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  Constants(Implementation(Academy_ctx_i))==(Type(white) == Cst(etype(RANK,0,3));Type(colour) == Cst(etype(RANK,0,3));Type(black) == Cst(etype(RANK,0,3));Type(master) == Cst(etype(RANK,0,3));Type(size_artists) == Cst(btype(INTEGER,?,?));Type(size_techniques) == Cst(btype(INTEGER,?,?)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(Academy_ctx_i)) == (? | ? | ? | ? | ? | ? | ? | ? | Academy_ctx_i);
  List_Of_HiddenCst_Ids(Implementation(Academy_ctx_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(Academy_ctx_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(Academy_ctx_i)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(Academy_ctx_i)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Implementation(Academy_ctx_i)) == (Type(RANK) == Cst(SetOf(etype(RANK,0,3)));Type(TECHNIQUE) == Cst(SetOf(btype(INTEGER,"[TECHNIQUE","]TECHNIQUE")));Type(ARTIST) == Cst(SetOf(btype(INTEGER,"[ARTIST","]ARTIST"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Implementation(Academy_ctx_i)) == (Type(size_techniques) == Cst(btype(INTEGER,?,?));Type(size_artists) == Cst(btype(INTEGER,?,?));Type(master) == Cst(etype(RANK,0,3));Type(black) == Cst(etype(RANK,0,3));Type(colour) == Cst(etype(RANK,0,3));Type(white) == Cst(etype(RANK,0,3)))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
&
THEORY ListLocalOperationsX IS
  List_Local_Operations(Implementation(Academy_ctx_i))==(?)
END
&
THEORY ListLocalInputX END
&
THEORY ListLocalOutputX END
&
THEORY ListLocalHeaderX END
&
THEORY ListLocalPreconditionX END
&
THEORY ListLocalSubstitutionX END
&
THEORY TypingPredicateX IS
  TypingPredicate(Implementation(Academy_ctx_i))==(btrue)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
