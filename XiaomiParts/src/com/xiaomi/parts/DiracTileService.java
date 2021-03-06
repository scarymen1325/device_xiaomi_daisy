package com.xiaomi.parts;

import android.app.ActivityManager;
import android.content.Intent;
import android.os.Handler;
import android.service.quicksettings.Tile;
import android.service.quicksettings.TileService;

import com.xiaomi.parts.R;

public class DiracTileService extends TileService {

    @Override
    public void onStartListening() {

        boolean enhancerEnabled = DiracService.sDiracUtils.isDiracEnabled();

        Tile tile = getQsTile();
        if (enhancerEnabled) {
            tile.setState(Tile.STATE_ACTIVE);
        } else {
            tile.setState(Tile.STATE_INACTIVE);
        }

        tile.updateTile();

        super.onStartListening();
    }

    @Override
    public void onClick() {
        Tile tile = getQsTile();
        if (DiracService.sDiracUtils.isDiracEnabled()) {
            DiracService.sDiracUtils.setEnabled(false);
            tile.setState(Tile.STATE_INACTIVE);
        } else {
            DiracService.sDiracUtils.setEnabled(true);
            tile.setState(Tile.STATE_ACTIVE);
        }
        tile.updateTile();
        super.onClick();
    }
}
