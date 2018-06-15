:- use_module('./beePlaygound/bee/bApplications/auxs/auxGraphs',[isConnectedGraph/1]).
:- use_module('./beePlaygound/bee/bApplications/auxs/auxRunExpr',[runExprMin/5,runExpr/5, decodeIntArray/2]).

%radioVerify(Instance, Solution)

% We assume that the instance and solution are ordered in the same manner.

% checkValidityOfStrongTransmitters([(V1,V2,2)|Tg],[(V,T)|Ts]]) :-
%     V1 == V,
%     T == 2,
%     checkValidityOfStrongTransmitters(Tg,Ts).



% checkValidityOfStrongTransmitters([(V1,V2,1)|Tg],[(V,T)|Ts]) :-
%     checkValidityOfStrongTransmitters(Tg,[(V,T)|Ts]).


radioVerify([],[]).

radioVerify(graph(ID,N,G), Min, S) :-
    length(S,N),
    Min <= N,
    isConnectedGraph(ID,N,[],G).
    % checkValidityOfStrongTransmitters(G, S)

% %kakuroEncode(Instance,Map,Constraints).

% build_sum_constraint([Hint = VarBlock],int_array_plus(VarBlock,Hint)).

% build_all_diff_constraint([_ = VarBlock],int_array_allDiff(VarBlock)).

% build_all_blocks([],[]).

% build_all_blocks([Mh|Mt],[new_int(Mh,1,9)|Cs]) :-
%     build_all_blocks(Mt,Cs).


% get_vars_no_dups(I,Vars) :-
%     flatten(I,[],F), % flatten vars
%     list_to_set(F,Vars). % remove duplicates from flatten list of vars

% flatten([],F,F).

% flatten([_=I|R],F,Fn) :-
%     append(I,F,Ft),
%     flatten(R,Ft,Fn).

% build_map([],[],[]).

% build_map([Hint = VarBlock | Ti],[Hint = VarBlock | Tm],Cs) :-
%     build_sum_constraint([Hint = VarBlock],C1),
%     build_all_diff_constraint([Hint = VarBlock],C2),
%     append([C1],[C2],C3),
%     build_map(Ti,Tm,C4),
%     append(C4,C3,Cs).

% kakuroEncode(Instance,Map,Constraints) :-
%     get_vars_no_dups(Instance,Vars),
%     build_all_blocks(Vars,C0),
%     build_map(Instance,Map,C1),
%     append(C0,C1,Constraints).