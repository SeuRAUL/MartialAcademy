Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Artist))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Artist))==(Machine(Artist));
  Level(Machine(Artist))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Artist)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Artist))==(Academy_ctx)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Artist))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Artist))==(?);
  List_Includes(Machine(Artist))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Artist))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Artist))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Artist))==(?);
  Context_List_Variables(Machine(Artist))==(?);
  Abstract_List_Variables(Machine(Artist))==(?);
  Local_List_Variables(Machine(Artist))==(rank_artist,artists);
  List_Variables(Machine(Artist))==(rank_artist,artists);
  External_List_Variables(Machine(Artist))==(rank_artist,artists)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Artist))==(?);
  Abstract_List_VisibleVariables(Machine(Artist))==(?);
  External_List_VisibleVariables(Machine(Artist))==(?);
  Expanded_List_VisibleVariables(Machine(Artist))==(?);
  List_VisibleVariables(Machine(Artist))==(?);
  Internal_List_VisibleVariables(Machine(Artist))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Artist))==(btrue);
  Gluing_List_Invariant(Machine(Artist))==(btrue);
  Expanded_List_Invariant(Machine(Artist))==(btrue);
  Abstract_List_Invariant(Machine(Artist))==(btrue);
  Context_List_Invariant(Machine(Artist))==(btrue);
  List_Invariant(Machine(Artist))==(artists: 0..size_artists >+> ARTIST & rank_artist: ARTIST --> RANK)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Artist))==(btrue);
  Abstract_List_Assertions(Machine(Artist))==(btrue);
  Context_List_Assertions(Machine(Artist))==(btrue);
  List_Assertions(Machine(Artist))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Artist))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Artist))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Artist))==(artists,rank_artist:={},ARTIST*{});
  Context_List_Initialisation(Machine(Artist))==(skip);
  List_Initialisation(Machine(Artist))==(artists:={} || rank_artist:=ARTIST*{})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Artist))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Artist),Machine(Academy_ctx))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Artist))==(btrue);
  List_Constraints(Machine(Artist))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Artist))==(create_artist,delete_artist,graduate);
  List_Operations(Machine(Artist))==(create_artist,delete_artist,graduate)
END
&
THEORY ListInputX IS
  List_Input(Machine(Artist),create_artist)==(aa);
  List_Input(Machine(Artist),delete_artist)==(aa);
  List_Input(Machine(Artist),graduate)==(aa)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Artist),create_artist)==(?);
  List_Output(Machine(Artist),delete_artist)==(?);
  List_Output(Machine(Artist),graduate)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Artist),create_artist)==(create_artist(aa));
  List_Header(Machine(Artist),delete_artist)==(delete_artist(aa));
  List_Header(Machine(Artist),graduate)==(graduate(aa))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Artist),create_artist)==(aa: ARTIST & aa/:ran(artists));
  List_Precondition(Machine(Artist),delete_artist)==(aa: ARTIST & aa: ran(artists));
  List_Precondition(Machine(Artist),graduate)==(aa: ran(artists) & rank_artist(aa)/=master)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Artist),graduate)==(aa: ran(artists) & rank_artist(aa)/=master | rank_artist(aa) = white ==> rank_artist:=rank_artist<+{aa|->colour} [] not(rank_artist(aa) = white) ==> (rank_artist(aa) = colour ==> rank_artist:=rank_artist<+{aa|->black} [] not(rank_artist(aa) = colour) ==> (rank_artist(aa) = black ==> rank_artist:=rank_artist<+{aa|->master} [] not(rank_artist(aa) = black) ==> skip)));
  Expanded_List_Substitution(Machine(Artist),delete_artist)==(aa: ARTIST & aa: ran(artists) | artists:=artists|>>{aa});
  Expanded_List_Substitution(Machine(Artist),create_artist)==(aa: ARTIST & aa/:ran(artists) | @xx.(xx: 0..size_artists & xx/:dom(artists) ==> artists,rank_artist:=artists<+{xx|->aa},rank_artist<+{aa|->white}));
  List_Substitution(Machine(Artist),create_artist)==(ANY xx WHERE xx: 0..size_artists & xx/:dom(artists) THEN artists(xx):=aa || rank_artist(aa):=white END);
  List_Substitution(Machine(Artist),delete_artist)==(artists:=artists|>>{aa});
  List_Substitution(Machine(Artist),graduate)==(IF rank_artist(aa) = white THEN rank_artist(aa):=colour ELSIF rank_artist(aa) = colour THEN rank_artist(aa):=black ELSIF rank_artist(aa) = black THEN rank_artist(aa):=master END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Artist))==(?);
  Inherited_List_Constants(Machine(Artist))==(?);
  List_Constants(Machine(Artist))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Artist),RANK)==({white,colour,black,master});
  Context_List_Enumerated(Machine(Artist))==(RANK);
  Context_List_Defered(Machine(Artist))==(ARTIST,TECHNIQUE);
  Context_List_Sets(Machine(Artist))==(ARTIST,TECHNIQUE,RANK);
  List_Valuable_Sets(Machine(Artist))==(?);
  Inherited_List_Enumerated(Machine(Artist))==(?);
  Inherited_List_Defered(Machine(Artist))==(?);
  Inherited_List_Sets(Machine(Artist))==(?);
  List_Enumerated(Machine(Artist))==(?);
  List_Defered(Machine(Artist))==(?);
  List_Sets(Machine(Artist))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Artist))==(?);
  Expanded_List_HiddenConstants(Machine(Artist))==(?);
  List_HiddenConstants(Machine(Artist))==(?);
  External_List_HiddenConstants(Machine(Artist))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Artist))==(btrue);
  Context_List_Properties(Machine(Artist))==(size_artists: NAT1 & size_artists>1 & size_techniques: NAT1 & size_techniques>1 & ARTIST: FIN(INTEGER) & not(ARTIST = {}) & TECHNIQUE: FIN(INTEGER) & not(TECHNIQUE = {}) & RANK: FIN(INTEGER) & not(RANK = {}));
  Inherited_List_Properties(Machine(Artist))==(btrue);
  List_Properties(Machine(Artist))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(Artist),Machine(Academy_ctx))==(?);
  Seen_Context_List_Enumerated(Machine(Artist))==(?);
  Seen_Context_List_Invariant(Machine(Artist))==(btrue);
  Seen_Context_List_Assertions(Machine(Artist))==(btrue);
  Seen_Context_List_Properties(Machine(Artist))==(btrue);
  Seen_List_Constraints(Machine(Artist))==(btrue);
  Seen_List_Operations(Machine(Artist),Machine(Academy_ctx))==(?);
  Seen_Expanded_List_Invariant(Machine(Artist),Machine(Academy_ctx))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Artist),create_artist)==(Var(xx) == btype(INTEGER,?,?));
  List_ANY_Var(Machine(Artist),delete_artist)==(?);
  List_ANY_Var(Machine(Artist),graduate)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Artist)) == (? | ? | rank_artist,artists | ? | create_artist,delete_artist,graduate | ? | seen(Machine(Academy_ctx)) | ? | Artist);
  List_Of_HiddenCst_Ids(Machine(Artist)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Artist)) == (?);
  List_Of_VisibleVar_Ids(Machine(Artist)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Artist)) == (?: ?);
  List_Of_Ids(Machine(Academy_ctx)) == (size_artists,size_techniques,ARTIST,TECHNIQUE,RANK,white,colour,black,master | ? | ? | ? | ? | ? | ? | ? | Academy_ctx);
  List_Of_HiddenCst_Ids(Machine(Academy_ctx)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Academy_ctx)) == (size_artists,size_techniques);
  List_Of_VisibleVar_Ids(Machine(Academy_ctx)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Academy_ctx)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Artist)) == (Type(rank_artist) == Mvl(SetOf(atype(ARTIST,"[ARTIST","]ARTIST")*etype(RANK,0,3)));Type(artists) == Mvl(SetOf(btype(INTEGER,?,?)*atype(ARTIST,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Artist)) == (Type(graduate) == Cst(No_type,atype(ARTIST,?,?));Type(delete_artist) == Cst(No_type,atype(ARTIST,?,?));Type(create_artist) == Cst(No_type,atype(ARTIST,?,?)))
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
