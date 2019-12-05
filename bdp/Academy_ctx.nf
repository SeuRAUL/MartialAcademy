Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Academy_ctx))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Academy_ctx))==(Machine(Academy_ctx));
  Level(Machine(Academy_ctx))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Academy_ctx)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Academy_ctx))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Academy_ctx))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Academy_ctx))==(?);
  List_Includes(Machine(Academy_ctx))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Academy_ctx))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Academy_ctx))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Academy_ctx))==(?);
  Context_List_Variables(Machine(Academy_ctx))==(?);
  Abstract_List_Variables(Machine(Academy_ctx))==(?);
  Local_List_Variables(Machine(Academy_ctx))==(?);
  List_Variables(Machine(Academy_ctx))==(?);
  External_List_Variables(Machine(Academy_ctx))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Academy_ctx))==(?);
  Abstract_List_VisibleVariables(Machine(Academy_ctx))==(?);
  External_List_VisibleVariables(Machine(Academy_ctx))==(?);
  Expanded_List_VisibleVariables(Machine(Academy_ctx))==(?);
  List_VisibleVariables(Machine(Academy_ctx))==(?);
  Internal_List_VisibleVariables(Machine(Academy_ctx))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Academy_ctx))==(btrue);
  Gluing_List_Invariant(Machine(Academy_ctx))==(btrue);
  Expanded_List_Invariant(Machine(Academy_ctx))==(btrue);
  Abstract_List_Invariant(Machine(Academy_ctx))==(btrue);
  Context_List_Invariant(Machine(Academy_ctx))==(btrue);
  List_Invariant(Machine(Academy_ctx))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Academy_ctx))==(btrue);
  Abstract_List_Assertions(Machine(Academy_ctx))==(btrue);
  Context_List_Assertions(Machine(Academy_ctx))==(btrue);
  List_Assertions(Machine(Academy_ctx))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Academy_ctx))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Academy_ctx))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Academy_ctx))==(skip);
  Context_List_Initialisation(Machine(Academy_ctx))==(skip);
  List_Initialisation(Machine(Academy_ctx))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Academy_ctx))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Academy_ctx))==(btrue);
  List_Constraints(Machine(Academy_ctx))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Academy_ctx))==(?);
  List_Operations(Machine(Academy_ctx))==(?)
END
&
THEORY ListInputX END
&
THEORY ListOutputX END
&
THEORY ListHeaderX END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX END
&
THEORY ListSubstitutionX END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Academy_ctx))==(size_artists,size_techniques);
  Inherited_List_Constants(Machine(Academy_ctx))==(?);
  List_Constants(Machine(Academy_ctx))==(size_artists,size_techniques)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Academy_ctx),ARTIST)==(?);
  Context_List_Enumerated(Machine(Academy_ctx))==(?);
  Context_List_Defered(Machine(Academy_ctx))==(?);
  Context_List_Sets(Machine(Academy_ctx))==(?);
  List_Valuable_Sets(Machine(Academy_ctx))==(ARTIST,TECHNIQUE);
  Inherited_List_Enumerated(Machine(Academy_ctx))==(?);
  Inherited_List_Defered(Machine(Academy_ctx))==(?);
  Inherited_List_Sets(Machine(Academy_ctx))==(?);
  List_Enumerated(Machine(Academy_ctx))==(RANK);
  List_Defered(Machine(Academy_ctx))==(ARTIST,TECHNIQUE);
  List_Sets(Machine(Academy_ctx))==(ARTIST,TECHNIQUE,RANK);
  Set_Definition(Machine(Academy_ctx),TECHNIQUE)==(?);
  Set_Definition(Machine(Academy_ctx),RANK)==({white,colour,black,master})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Academy_ctx))==(?);
  Expanded_List_HiddenConstants(Machine(Academy_ctx))==(?);
  List_HiddenConstants(Machine(Academy_ctx))==(?);
  External_List_HiddenConstants(Machine(Academy_ctx))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Academy_ctx))==(btrue);
  Context_List_Properties(Machine(Academy_ctx))==(btrue);
  Inherited_List_Properties(Machine(Academy_ctx))==(btrue);
  List_Properties(Machine(Academy_ctx))==(size_artists: NAT1 & size_artists>1 & size_techniques: NAT1 & size_techniques>1 & ARTIST: FIN(INTEGER) & not(ARTIST = {}) & TECHNIQUE: FIN(INTEGER) & not(TECHNIQUE = {}) & RANK: FIN(INTEGER) & not(RANK = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Academy_ctx)) == (size_artists,size_techniques,ARTIST,TECHNIQUE,RANK,white,colour,black,master | ? | ? | ? | ? | ? | ? | ? | Academy_ctx);
  List_Of_HiddenCst_Ids(Machine(Academy_ctx)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Academy_ctx)) == (size_artists,size_techniques);
  List_Of_VisibleVar_Ids(Machine(Academy_ctx)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Academy_ctx)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Academy_ctx)) == (Type(ARTIST) == Cst(SetOf(atype(ARTIST,"[ARTIST","]ARTIST")));Type(TECHNIQUE) == Cst(SetOf(atype(TECHNIQUE,"[TECHNIQUE","]TECHNIQUE")));Type(RANK) == Cst(SetOf(etype(RANK,0,3))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Academy_ctx)) == (Type(white) == Cst(etype(RANK,0,3));Type(colour) == Cst(etype(RANK,0,3));Type(black) == Cst(etype(RANK,0,3));Type(master) == Cst(etype(RANK,0,3));Type(size_artists) == Cst(btype(INTEGER,?,?));Type(size_techniques) == Cst(btype(INTEGER,?,?)))
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
)
