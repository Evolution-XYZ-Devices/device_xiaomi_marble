/*
 * Copyright (C) 2015 The CyanogenMod Project
 *               2017-2020 The LineageOS Project
 * Copyright (C) 2023 Paranoid Android
 *
 * SPDX-License-Identifier: Apache-2.0
 */

package org.lineageos.settings;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;
import android.view.Display.HdrCapabilities;
import android.view.SurfaceControl;

import org.lineageos.settings.camera.NfcCameraService;
import org.lineageos.settings.dirac.DiracUtils;
import org.lineageos.settings.display.ColorService;
import org.lineageos.settings.doze.AodBrightnessService;
import org.lineageos.settings.doze.DozeUtils;
import org.lineageos.settings.doze.PocketService;
import org.lineageos.settings.refreshrate.RefreshUtils;
import org.lineageos.settings.thermal.ThermalUtils;

public class BootCompletedReceiver extends BroadcastReceiver {

    private static final boolean DEBUG = false;
    private static final String TAG = "XiaomiParts-BCR";

    @Override
    public void onReceive(final Context context, Intent intent) {
        if (DEBUG) Log.d(TAG, "Received boot completed intent");

        // Thermal Profiles
        ThermalUtils.startService(context);

        Log.i(TAG, "Boot completed");

        // Doze
        DozeUtils.checkDozeService(context);

        // Pocket
        PocketService.startService(context);

        // DisplayFeature
        ColorService.startService(context);

        // NFC
        NfcCameraService.startService(context);

        // AOD
        AodBrightnessService.startService(context);

        // Dirac
        try {
            DiracUtils.getInstance(context);
        } catch (Exception e) {
            Log.d(TAG, "Dirac is not present in system");
        }

        // Per app refresh rate
        RefreshUtils.initialize(context);

        // Override HDR types
        final IBinder displayToken = SurfaceControl.getInternalDisplayToken();
        SurfaceControl.overrideHdrTypes(displayToken, new int[]{
                HdrCapabilities.HDR_TYPE_DOLBY_VISION, HdrCapabilities.HDR_TYPE_HDR10,
                HdrCapabilities.HDR_TYPE_HLG, HdrCapabilities.HDR_TYPE_HDR10_PLUS});
    }
}
