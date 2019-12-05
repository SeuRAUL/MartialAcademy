Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Technique))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Technique))==(Machine(Technique));
  Level(Machine(Technique))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Technique)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Technique))==(Academy_ctx)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Technique))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Technique))==(?);
  List_Includes(Machine(Technique))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Technique))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Technique))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Technique))==(?);
  Context_List_Variables(Machine(Technique))==(?);
  Abstract_List_Variables(Machine(Technique))==(?);
  Local_List_Variables(Machine(Technique))==(rank_technique,techniques);
  List_Variables(Machine(Technique))==(rank_technique,techniques);
  External_List_Variables(Machine(Technique))==(rank_technique,techniques)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Technique))==(?);
  Abstract_List_VisibleVariables(Machine(Technique))==(?);
  External_List_VisibleVariables(Machine(Technique))==(?);
  Expanded_List_VisibleVariables(Machine(Technique))==(?);
  List_VisibleVariables(Machine(Technique))==(?);
  Internal_List_VisibleVariables(Machine(Technique))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Technique))==(btrue);
  Gluing_List_Invariant(Machine(Technique))==(btrue);
  Expanded_List_Invariant(Machine(Technique))==(btrue);
  Abstract_List_Invariant(Machine(Technique))==(btrue);
  Context_List_Invariant(Machine(Technique))==(btrue);
  List_Invariant(Machine(Technique))==(techniques: 0..size_techniques >+> TECHNIQUE & rank_technique: TECHNIQUE --> RANK)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Technique))==(btrue);
  Abstract_List_Assertions(Machine(Technique))==(btrue);
  Context_List_Assertions(Machine(Technique))==(btrue);
  List_Assertions(Machine(Technique))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Technique))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Technique))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Technique))==(techniques,rank_technique:={},TECHNIQUE*{});
  Context_List_Initialisation(Machine(Technique))==(skip);
  List_Initialisation(Machine(Technique))==(techniques:={} || rank_technique:=TECHNIQUE*{})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Technique))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Technique),Machine(Academy_ctx))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Technique))==(btrue);
  List_Constraints(Machine(Technique))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Technique))==(create_technique,delete_technique);
  List_Operations(Machine(Technique))==(create_technique,delete_technique)
END
&
THEORY ListInputX IS
  List_Input(Machine(Technique),create_technique)==(tt,rr);
  List_Input(Machine(Technique),delete_technique)==(tt)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Technique),create_technique)==(?);
  List_Output(Machine(Technique),delete_technique)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Technique),create_technique)==(create_technique(tt,rr));
  List_Header(Machine(Technique),delete_technique)==(delete_technique(tt))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Technique),create_technique)==(tt: TECHNIQUE & tt/:ran(techniques) & rr: RANK);
  List_Precondition(Machine(Technique),delete_technique)==(tt: TECHNIQUE & tt: ran(techniques))
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Technique),delete_technique)==(tt: TECHNIQUE & tt: ran(techniques) | techniques:=techniques|>>{tt});
  Expanded_List_Substitution(Machine(Technique),create_technique)==(tt: TECHNIQUE & tt/:ran(techniques) & rr: RANK | @xx.(xx: 0..size_techniques & xx/:dom(techniques) ==> techniques,rank_technique:=techniques<+{xx|->tt},rank_technique<+{tt|->rr}));
  List_Substitution(Machine(Technique),create_technique)==(ANY xx WHERE xx: 0..size_techniques & xx/:dom(techniques) THEN techniques(xx):=tt || rank_technique(tt):=rr END);
  List_Substitution(Machine(Technique),delete_technique)==(techniques:=techniques|>>{tt})
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Technique))==(?);
  Inherited_List_Constants(Machine(Technique))==(?);
  List_Constants(Machine(Technique))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Technique),RANK)==({white,colour,black,master});
  Context_List_Enumerated(Machine(Technique))==(RANK);
  Context_List_Defered(Machine(Technique))==(ARTIST,TECHNIQUE);
  Context_List_Sets(Machine(Technique))==(ARTIST,TECHNIQUE,RANK);
  List_Valuable_Sets(Machine(Technique))==(?);
  Inherited_List_Enumerated(Machine(Technique))==(?);
  Inherited_List_Defered(Machine(Technique))==(?);
  Inherited_List_Sets(Machine(Technique))==(?);
  List_Enumerated(Machine(Technique))==(?);
  List_Defered(Machine(Technique))==(?);
  List_Sets(Machine(Technique))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Technique))==(?);
  Expanded_List_HiddenConstants(Machine(Technique))==(?);
  List_HiddenConstants(Machine(Technique))==(?);
  External_List_HiddenConstants(Machine(Technique))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Technique))==(btrue);
  Context_List_Properties(Machine(Technique))==(size_artists: NAT1 & size_artists>1 & size_techniques: NAT1 & size_techniques>1 & ARTIST: FIN(INTEGER) & not(ARTIST = {}) & TECHNIQUE: FIN(INTEGER) & not(TECHNIQUE = {}) & RANK: FIN(INTEGER) & not(RANK = {}));
  Inherited_List_Properties(Machine(Technique))==(btrue);
  List_Properties(Machine(Technique))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(Technique),Machine(Academy_ctx))==(?);
  Seen_Context_List_Enumerated(Machine(Technique))==(?);
  Seen_Context_List_Invariant(Machine(Technique))==(btrue);
  Seen_Context_List_Assertions(Machine(Technique))==(btrue);
  Seen_Context_List_Properties(Machine(Technique))==(btrue);
  Seen_List_Constraints(Machine(Technique))==(btrue);
  Seen_List_Operations(Machine(Technique),Machine(Academy_ctx))==(?);
  Seen_Expanded_List_Invariant(Machine(Technique),Machine(Academy_ctx))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Technique),create_technique)==(Var(xx) == btype(INTEGER,?,?));
  List_ANY_Var(Machine(Technique),delete_technique)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Technique)) == (? | ? | rank_technique,techniques | ? | create_technique,delete_technique | ? | seen(Machine(Academy_ctx)) | ? | Technique);
  List_Of_HiddenCst_Ids(Machine(Technique)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Technique)) == (?);
  List_Of_VisibleVar_Ids(Machine(Technique)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Technique)) == (?: ?);
  List_Of_Ids(Machine(Academy_ctx)) == (size_artists,size_techniques,ARTIST,TECHNIQUE,RANK,white,colour,black,master | ? | ? | ? | ? | ? | ? | ? | Academy_ctx);
  List_Of_HiddenCst_Ids(Machine(Academy_ctx)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Academy_ctx)) == (size_artists,size_techniques);
  List_Of_VisibleVar_Ids(Machine(Academy_ctx)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Academy_ctx)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Technique)) == (Type(rank_technique) == Mvl(SetOf(atype(TECHNIQUE,"[TECHNIQUE","]TECHNIQUE")*etype(RANK,0,3)));Type(techniques) == Mvl(SetOf(btype(INTEGER,?,?)*atype(TECHNIQUE,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Technique)) == (Type(delete_technique) == Cst(No_type,atype(TECHNIQUE,?,?));Type(create_technique) == Cst(No_type,atype(TECHNIQUE,?,?)*etype(RANK,?,?)))
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
