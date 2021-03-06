TAGS = addMissionEventHandler ["Draw3D", {
    {
        if (side _x == side player && {alive _x}) then {
            _dist = (player distance _x) / 20;
            _color = getArray (configFile/'CfgInGameUI'/'SideColors'/'colorFriendly');
            if (cursorTarget != _x) then {
                _color set [3, 1 - _dist]
            };
            drawIcon3D [
                '',
                _color,
                [
                    visiblePosition _x select 0,
                    visiblePosition _x select 1,
                    (visiblePosition _x select 2) +
                    ((_x modelToWorld (
                        _x selectionPosition 'head'
                    )) select 2) + 0.4 + _dist / 1.5
                ],
                0,
                0,
                0,
                name _x,
                2,
                0.03,
                'PuristaMedium'
            ];
        };
    } count allUnits - [player];
}];