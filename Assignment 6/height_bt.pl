height( nil, 0 ).         % Height of nil tree is 0
height( t(_,L,R), H ) :-  % Height of binary tree t(_,L,R) is H if...
   height(L, LH),         % LH is the height of subtree L, and
   height(R, RH),         % RH is the height of subtree H, and
   H is max(LH, RH) + 1.
