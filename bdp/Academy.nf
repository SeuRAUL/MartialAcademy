Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Academy))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Academy))==(Machine(Academy));
  Level(Machine(Academy))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Academy)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Academy))==(Academy_ctx)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Academy))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Academy))==(Technique,Artist);
  List_Includes(Machine(Academy))==(Artist,Technique)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Academy))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Academy))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Academy))==(?);
  Context_List_Variables(Machine(Academy))==(?);
  Abstract_List_Variables(Machine(Academy))==(?);
  Local_List_Variables(Machine(Academy))==(artist_techniques);
  List_Variables(Machine(Academy))==(artist_techniques,rank_artist,artists,rank_technique,techniques);
  External_List_Variables(Machine(Academy))==(artist_techniques,rank_artist,artists,rank_technique,techniques)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Academy))==(?);
  Abstract_List_VisibleVariables(Machine(Academy))==(?);
  External_List_VisibleVariables(Machine(Academy))==(?);
  Expanded_List_VisibleVariables(Machine(Academy))==(?);
  List_VisibleVariables(Machine(Academy))==(?);
  Internal_List_VisibleVariables(Machine(Academy))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Academy))==(btrue);
  Gluing_List_Invariant(Machine(Academy))==(btrue);
  Abstract_List_Invariant(Machine(Academy))==(btrue);
  Expanded_List_Invariant(Machine(Academy))==(artists: 0..size_artists >+> ARTIST & rank_artist: ARTIST --> RANK & techniques: 0..size_techniques >+> TECHNIQUE & rank_technique: TECHNIQUE --> RANK);
  Context_List_Invariant(Machine(Academy))==(btrue);
  List_Invariant(Machine(Academy))==(artist_techniques: ARTIST <-> TECHNIQUE)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Machine(Academy))==(btrue);
  Expanded_List_Assertions(Machine(Academy))==(btrue);
  Context_List_Assertions(Machine(Academy))==(btrue);
  List_Assertions(Machine(Academy))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Academy))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Academy))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Academy))==(artists,rank_artist:={},ARTIST*{};techniques,rank_technique:={},TECHNIQUE*{};artist_techniques:={});
  Context_List_Initialisation(Machine(Academy))==(skip);
  List_Initialisation(Machine(Academy))==(artist_techniques:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Academy))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Academy),Machine(Artist))==(?);
  List_Instanciated_Parameters(Machine(Academy),Machine(Technique))==(?);
  List_Instanciated_Parameters(Machine(Academy),Machine(Academy_ctx))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Machine(Academy),Machine(Technique))==(btrue);
  List_Context_Constraints(Machine(Academy))==(btrue);
  List_Constraints(Machine(Academy))==(btrue);
  List_Constraints(Machine(Academy),Machine(Artist))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Academy))==(new_artist,new_technique,grant_technique,grant_rank,remove_artist,remove_technique);
  List_Operations(Machine(Academy))==(new_artist,new_technique,grant_technique,grant_rank,remove_artist,remove_technique)
END
&
THEORY ListInputX IS
  List_Input(Machine(Academy),new_artist)==(aa);
  List_Input(Machine(Academy),new_technique)==(tt,rr);
  List_Input(Machine(Academy),grant_technique)==(aa,tt);
  List_Input(Machine(Academy),grant_rank)==(aa);
  List_Input(Machine(Academy),remove_artist)==(aa);
  List_Input(Machine(Academy),remove_technique)==(tt)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Academy),new_artist)==(?);
  List_Output(Machine(Academy),new_technique)==(?);
  List_Output(Machine(Academy),grant_technique)==(?);
  List_Output(Machine(Academy),grant_rank)==(?);
  List_Output(Machine(Academy),remove_artist)==(?);
  List_Output(Machine(Academy),remove_technique)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Academy),new_artist)==(new_artist(aa));
  List_Header(Machine(Academy),new_technique)==(new_technique(tt,rr));
  List_Header(Machine(Academy),grant_technique)==(grant_technique(aa,tt));
  List_Header(Machine(Academy),grant_rank)==(grant_rank(aa));
  List_Header(Machine(Academy),remove_artist)==(remove_artist(aa));
  List_Header(Machine(Academy),remove_technique)==(remove_technique(tt))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Academy),new_artist)==(aa: ARTIST & aa/:ran(artists));
  List_Precondition(Machine(Academy),new_technique)==(tt: TECHNIQUE & tt/:ran(techniques) & rr: RANK);
  List_Precondition(Machine(Academy),grant_technique)==(aa: ran(artists) & tt: ran(techniques) & rank_artist(aa) = rank_technique(tt));
  List_Precondition(Machine(Academy),grant_rank)==(aa: ran(artists) & rank_artist(aa)/=master & ran({aa}<|artist_techniques) = ran({rank_artist(aa)}<|rank_technique~));
  List_Precondition(Machine(Academy),remove_artist)==(aa: ran(artists));
  List_Precondition(Machine(Academy),remove_technique)==(tt: ran(techniques))
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Academy),remove_technique)==(tt: ran(techniques) & tt: TECHNIQUE & tt: ran(techniques) | tt: ran(artist_techniques) ==> artist_techniques:=artist_techniques-(artist_techniques|>{tt}) [] not(tt: ran(artist_techniques)) ==> skip || techniques:=techniques|>>{tt});
  Expanded_List_Substitution(Machine(Academy),remove_artist)==(aa: ran(artists) & aa: ARTIST & aa: ran(artists) | {aa}<|artist_techniques/={} ==> artist_techniques:=artist_techniques-({aa}<|artist_techniques) [] not({aa}<|artist_techniques/={}) ==> skip || artists:=artists|>>{aa});
  Expanded_List_Substitution(Machine(Academy),grant_rank)==(aa: ran(artists) & rank_artist(aa)/=master & ran({aa}<|artist_techniques) = ran({rank_artist(aa)}<|rank_technique~) & aa: ran(artists) & rank_artist(aa)/=master | rank_artist(aa) = white ==> rank_artist:=rank_artist<+{aa|->colour} [] not(rank_artist(aa) = white) ==> (rank_artist(aa) = colour ==> rank_artist:=rank_artist<+{aa|->black} [] not(rank_artist(aa) = colour) ==> (rank_artist(aa) = black ==> rank_artist:=rank_artist<+{aa|->master} [] not(rank_artist(aa) = black) ==> skip)) || artist_techniques:=artist_techniques-({aa}<|artist_techniques));
  Expanded_List_Substitution(Machine(Academy),grant_technique)==(aa: ran(artists) & tt: ran(techniques) & rank_artist(aa) = rank_technique(tt) | artist_techniques:=artist_techniques\/{aa|->tt});
  Expanded_List_Substitution(Machine(Academy),new_technique)==(tt: TECHNIQUE & tt/:ran(techniques) & rr: RANK | @xx.(xx: 0..size_techniques & xx/:dom(techniques) ==> techniques,rank_technique:=techniques<+{xx|->tt},rank_technique<+{tt|->rr}));
  Expanded_List_Substitution(Machine(Academy),new_artist)==(aa: ARTIST & aa/:ran(artists) | @xx.(xx: 0..size_artists & xx/:dom(artists) ==> artists,rank_artist:=artists<+{xx|->aa},rank_artist<+{aa|->white}));
  List_Substitution(Machine(Academy),new_artist)==(create_artist(aa));
  List_Substitution(Machine(Academy),new_technique)==(create_technique(tt,rr));
  List_Substitution(Machine(Academy),grant_technique)==(artist_techniques:=artist_techniques\/{aa|->tt});
  List_Substitution(Machine(Academy),grant_rank)==(graduate(aa) || artist_techniques:=artist_techniques-({aa}<|artist_techniques));
  List_Substitution(Machine(Academy),remove_artist)==(IF {aa}<|artist_techniques/={} THEN artist_techniques:=artist_techniques-({aa}<|artist_techniques) END || delete_artist(aa));
  List_Substitution(Machine(Academy),remove_technique)==(IF tt: ran(artist_techniques) THEN artist_techniques:=artist_techniques-(artist_techniques|>{tt}) END || delete_technique(tt))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Academy))==(?);
  Inherited_List_Constants(Machine(Academy))==(?);
  List_Constants(Machine(Academy))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Academy),RANK)==({white,colour,black,master});
  Context_List_Enumerated(Machine(Academy))==(RANK);
  Context_List_Defered(Machine(Academy))==(ARTIST,TECHNIQUE);
  Context_List_Sets(Machine(Academy))==(ARTIST,TECHNIQUE,RANK);
  List_Valuable_Sets(Machine(Academy))==(?);
  Inherited_List_Enumerated(Machine(Academy))==(?);
  Inherited_List_Defered(Machine(Academy))==(?);
  Inherited_List_Sets(Machine(Academy))==(?);
  List_Enumerated(Machine(Academy))==(?);
  List_Defered(Machine(Academy))==(?);
  List_Sets(Machine(Academy))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Academy))==(?);
  Expanded_List_HiddenConstants(Machine(Academy))==(?);
  List_HiddenConstants(Machine(Academy))==(?);
  External_List_HiddenConstants(Machine(Academy))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Academy))==(btrue);
  Context_List_Properties(Machine(Academy))==(size_artists: NAT1 & size_artists>1 & size_techniques: NAT1 & size_techniques>1 & ARTIST: FIN(INTEGER) & not(ARTIST = {}) & TECHNIQUE: FIN(INTEGER) & not(TECHNIQUE = {}) & RANK: FIN(INTEGER) & not(RANK = {}));
  Inherited_List_Properties(Machine(Academy))==(btrue);
  List_Properties(Machine(Academy))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(Academy),Machine(Academy_ctx))==(?);
  Seen_Context_List_Enumerated(Machine(Academy))==(?);
  Seen_Context_List_Invariant(Machine(Academy))==(btrue);
  Seen_Context_List_Assertions(Machine(Academy))==(btrue);
  Seen_Context_List_Properties(Machine(Academy))==(btrue);
  Seen_List_Constraints(Machine(Academy))==(btrue);
  Seen_List_Operations(Machine(Academy),Machine(Academy_ctx))==(?);
  Seen_Expanded_List_Invariant(Machine(Academy),Machine(Academy_ctx))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Academy),new_artist)==(?);
  List_ANY_Var(Machine(Academy),new_technique)==(?);
  List_ANY_Var(Machine(Academy),grant_technique)==(?);
  List_ANY_Var(Machine(Academy),grant_rank)==(?);
  List_ANY_Var(Machine(Academy),remove_artist)==(?);
  List_ANY_Var(Machine(Academy),remove_technique)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Academy)) == (? | ? | artist_techniques | rank_technique,techniques,rank_artist,artists | new_artist,new_technique,grant_technique,grant_rank,remove_artist,remove_technique | ? | seen(Machine(Academy_ctx)),included(Machine(Artist)),included(Machine(Technique)) | ? | Academy);
  List_Of_HiddenCst_Ids(Machine(Academy)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Academy)) == (?);
  List_Of_VisibleVar_Ids(Machine(Academy)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Academy)) == (seen(Machine(Academy_ctx)): (size_artists,size_techniques,ARTIST,TECHNIQUE,RANK,white,colour,black,master | ? | ? | ? | ? | ? | ? | ? | ?));
  List_Of_Ids(Machine(Technique)) == (? | ? | rank_technique,techniques | ? | create_technique,delete_technique | ? | seen(Machine(Academy_ctx)) | ? | Technique);
  List_Of_HiddenCst_Ids(Machine(Technique)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Technique)) == (?);
  List_Of_VisibleVar_Ids(Machine(Technique)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Technique)) == (?: ?);
  List_Of_Ids(Machine(Academy_ctx)) == (size_artists,size_techniques,ARTIST,TECHNIQUE,RANK,white,colour,black,master | ? | ? | ? | ? | ? | ? | ? | Academy_ctx);
  List_Of_HiddenCst_Ids(Machine(Academy_ctx)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Academy_ctx)) == (size_artists,size_techniques);
  List_Of_VisibleVar_Ids(Machine(Academy_ctx)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Academy_ctx)) == (?: ?);
  List_Of_Ids(Machine(Artist)) == (? | ? | rank_artist,artists | ? | create_artist,delete_artist,graduate | ? | seen(Machine(Academy_ctx)) | ? | Artist);
  List_Of_HiddenCst_Ids(Machine(Artist)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Artist)) == (?);
  List_Of_VisibleVar_Ids(Machine(Artist)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Artist)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Academy)) == (Type(artists) == Mvl(SetOf(btype(INTEGER,?,?)*atype(ARTIST,?,?)));Type(rank_artist) == Mvl(SetOf(atype(ARTIST,"[ARTIST","]ARTIST")*etype(RANK,0,3)));Type(techniques) == Mvl(SetOf(btype(INTEGER,?,?)*atype(TECHNIQUE,?,?)));Type(rank_technique) == Mvl(SetOf(atype(TECHNIQUE,"[TECHNIQUE","]TECHNIQUE")*etype(RANK,0,3)));Type(artist_techniques) == Mvl(SetOf(atype(ARTIST,?,?)*atype(TECHNIQUE,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Academy)) == (Type(remove_technique) == Cst(No_type,atype(TECHNIQUE,?,?));Type(remove_artist) == Cst(No_type,atype(ARTIST,?,?));Type(grant_rank) == Cst(No_type,atype(ARTIST,?,?));Type(grant_technique) == Cst(No_type,atype(ARTIST,?,?)*atype(TECHNIQUE,?,?));Type(new_technique) == Cst(No_type,atype(TECHNIQUE,?,?)*etype(RANK,?,?));Type(new_artist) == Cst(No_type,atype(ARTIST,?,?)))
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
