.class Lcom/android/server/ServerThread;
.super Ljava/lang/Object;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ServerThread$AdbPortObserver;
    }
.end annotation


# static fields
.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 1137
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1138
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1141
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1142
    return-void
.end method


# virtual methods
.method public initAndLoop()V
    .locals 161

    .prologue
    .line 108
    const/16 v7, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v7, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 111
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 113
    const/4 v7, -0x2

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 116
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 117
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 121
    const-string v7, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v135

    .line 123
    .local v135, shutdownAction:Ljava/lang/String;
    if-eqz v135, :cond_0

    invoke-virtual/range {v135 .. v135}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 124
    const/4 v7, 0x0

    move-object/from16 v0, v135

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x31

    if-ne v7, v9, :cond_22

    const/16 v129, 0x1

    .line 127
    .local v129, reboot:Z
    :goto_0
    invoke-virtual/range {v135 .. v135}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x1

    if-le v7, v9, :cond_23

    .line 128
    const/4 v7, 0x1

    invoke-virtual/range {v135 .. v135}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v135

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v128

    .line 133
    .local v128, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v129

    move-object/from16 v1, v128

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 137
    .end local v128           #reason:Ljava/lang/String;
    .end local v129           #reboot:Z
    :cond_0
    const-string v7, "ro.factorytest"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v101

    .line 138
    .local v101, factoryTestStr:Ljava/lang/String;
    const-string v7, ""

    move-object/from16 v0, v101

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    const/16 v100, 0x0

    .line 140
    .local v100, factoryTest:I
    :goto_2
    const-string v7, "1"

    const-string v9, "ro.config.headless"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    .line 142
    .local v33, headless:Z
    const/16 v106, 0x0

    .line 143
    .local v106, installer:Lcom/android/server/pm/Installer;
    const/16 v63, 0x0

    .line 144
    .local v63, accountManager:Lcom/android/server/accounts/AccountManagerService;
    const/16 v80, 0x0

    .line 145
    .local v80, contentService:Lcom/android/server/content/ContentService;
    const/16 v108, 0x0

    .line 146
    .local v108, lights:Lcom/android/server/LightsService;
    const/4 v4, 0x0

    .line 147
    .local v4, power:Lcom/android/server/power/PowerManagerService;
    const/16 v94, 0x0

    .line 148
    .local v94, display:Lcom/android/server/display/DisplayManagerService;
    const/16 v70, 0x0

    .line 149
    .local v70, battery:Lcom/android/server/BatteryService;
    const/16 v150, 0x0

    .line 150
    .local v150, vibrator:Lcom/android/server/VibratorService;
    const/16 v65, 0x0

    .line 151
    .local v65, alarm:Lcom/android/server/AlarmManagerService;
    const/16 v116, 0x0

    .line 152
    .local v116, mountService:Lcom/android/server/MountService;
    const/16 v30, 0x0

    .line 153
    .local v30, networkManagement:Lcom/android/server/NetworkManagementService;
    const/16 v29, 0x0

    .line 154
    .local v29, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v118, 0x0

    .line 155
    .local v118, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v76, 0x0

    .line 156
    .local v76, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v157, 0x0

    .line 157
    .local v157, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v155, 0x0

    .line 158
    .local v155, wifi:Lcom/android/server/wifi/WifiService;
    const/16 v134, 0x0

    .line 159
    .local v134, serviceDiscovery:Lcom/android/server/NsdService;
    const/16 v124, 0x0

    .line 160
    .local v124, pm:Landroid/content/pm/IPackageManager;
    const/4 v5, 0x0

    .line 161
    .local v5, context:Landroid/content/Context;
    const/16 v159, 0x0

    .line 162
    .local v159, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v71, 0x0

    .line 163
    .local v71, bluetooth:Lcom/android/server/BluetoothManagerService;
    const/16 v95, 0x0

    .line 164
    .local v95, dock:Lcom/android/server/DockObserver;
    const/16 v148, 0x0

    .line 165
    .local v148, usb:Lcom/android/server/usb/UsbService;
    const/16 v132, 0x0

    .line 166
    .local v132, serial:Lcom/android/server/SerialService;
    const/16 v144, 0x0

    .line 167
    .local v144, twilight:Lcom/android/server/TwilightService;
    const/16 v146, 0x0

    .line 168
    .local v146, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v130, 0x0

    .line 169
    .local v130, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v120, 0x0

    .line 170
    .local v120, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    const/16 v73, 0x0

    .line 171
    .local v73, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    const/16 v105, 0x0

    .line 172
    .local v105, inputManager:Lcom/android/server/input/InputManagerService;
    const/16 v140, 0x0

    .line 173
    .local v140, telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    const/16 v78, 0x0

    .line 174
    .local v78, consumerIr:Lcom/android/server/ConsumerIrService;
    const/16 v138, 0x0

    .line 177
    .local v138, switchObserver:Lcom/android/server/RotationSwitchObserver;
    new-instance v160, Landroid/os/HandlerThread;

    const-string v7, "WindowManager"

    move-object/from16 v0, v160

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 178
    .local v160, wmHandlerThread:Landroid/os/HandlerThread;
    invoke-virtual/range {v160 .. v160}, Landroid/os/HandlerThread;->start()V

    .line 179
    new-instance v21, Landroid/os/Handler;

    invoke-virtual/range {v160 .. v160}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 180
    .local v21, wmHandler:Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 197
    const/16 v24, 0x0

    .line 198
    .local v24, onlyCore:Z
    const/16 v102, 0x0

    .line 203
    .local v102, firstBoot:Z
    :try_start_0
    const-string v7, "SystemServer"

    const-string v9, "Waiting for installd to be ready."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance v107, Lcom/android/server/pm/Installer;

    invoke-direct/range {v107 .. v107}, Lcom/android/server/pm/Installer;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .end local v106           #installer:Lcom/android/server/pm/Installer;
    .local v107, installer:Lcom/android/server/pm/Installer;
    :try_start_1
    invoke-virtual/range {v107 .. v107}, Lcom/android/server/pm/Installer;->ping()Z

    .line 207
    const-string v7, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance v125, Lcom/android/server/power/PowerManagerService;

    invoke-direct/range {v125 .. v125}, Lcom/android/server/power/PowerManagerService;-><init>()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_5f

    .line 209
    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .local v125, power:Lcom/android/server/power/PowerManagerService;
    :try_start_2
    const-string v7, "power"

    move-object/from16 v0, v125

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 211
    const-string v7, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-static/range {v100 .. v100}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_60

    move-result-object v5

    move-object/from16 v4, v125

    .end local v125           #power:Lcom/android/server/power/PowerManagerService;
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    move-object/from16 v106, v107

    .line 218
    .end local v107           #installer:Lcom/android/server/pm/Installer;
    .restart local v106       #installer:Lcom/android/server/pm/Installer;
    :goto_3
    const-string v7, "config.disable_storage"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v91

    .line 219
    .local v91, disableStorage:Z
    const-string v7, "config.disable_media"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v88

    .line 220
    .local v88, disableMedia:Z
    const-string v7, "config.disable_bluetooth"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v86

    .line 221
    .local v86, disableBluetooth:Z
    const-string v7, "config.disable_telephony"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v93

    .line 222
    .local v93, disableTelephony:Z
    const-string v7, "config.disable_location"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v87

    .line 223
    .local v87, disableLocation:Z
    const-string v7, "config.disable_systemui"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v92

    .line 224
    .local v92, disableSystemUI:Z
    const-string v7, "config.disable_noncore"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v90

    .line 225
    .local v90, disableNonCoreServices:Z
    const-string v7, "config.disable_network"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v89

    .line 228
    .local v89, disableNetwork:Z
    :try_start_3
    const-string v7, "SystemServer"

    const-string v9, "Display Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    new-instance v11, Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, v21

    invoke-direct {v11, v5, v0}, Lcom/android/server/display/DisplayManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_55

    .line 230
    .end local v94           #display:Lcom/android/server/display/DisplayManagerService;
    .local v11, display:Lcom/android/server/display/DisplayManagerService;
    :try_start_4
    const-string v7, "display"

    const/4 v9, 0x1

    invoke-static {v7, v11, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 232
    const-string v7, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance v141, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v141

    invoke-direct {v0, v5}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_56

    .line 234
    .end local v140           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .local v141, telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :try_start_5
    const-string v7, "telephony.registry"

    move-object/from16 v0, v141

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 236
    const-string v7, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const-string v7, "scheduling_policy"

    new-instance v9, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v9}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 239
    invoke-static {v5}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 241
    invoke-virtual {v11}, Lcom/android/server/display/DisplayManagerService;->waitForDefaultDisplay()Z

    move-result v7

    if-nez v7, :cond_1

    .line 242
    const-string v7, "Timeout waiting for default display to be initialized."

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 246
    :cond_1
    const-string v7, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const-string v7, "vold.decrypt"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v83

    .line 249
    .local v83, cryptState:Ljava/lang/String;
    const-string v7, "trigger_restart_min_framework"

    move-object/from16 v0, v83

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    .line 250
    const-string v7, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/16 v24, 0x1

    .line 257
    :cond_2
    :goto_4
    if-eqz v100, :cond_26

    const/4 v7, 0x1

    :goto_5
    move-object/from16 v0, v106

    move/from16 v1, v24

    invoke-static {v5, v0, v7, v1}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Landroid/content/pm/IPackageManager;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v124

    .line 261
    :try_start_6
    invoke-interface/range {v124 .. v124}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3c
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2

    move-result v102

    .line 265
    :goto_6
    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 267
    const-string v7, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const-string v7, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9, v5}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 270
    const-string v7, "SystemServer"

    const-string v9, "User Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const-string v7, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 274
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    .line 279
    :try_start_8
    const-string v7, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    new-instance v64, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v64

    invoke-direct {v0, v5}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2

    .line 281
    .end local v63           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .local v64, accountManager:Lcom/android/server/accounts/AccountManagerService;
    :try_start_9
    const-string v7, "account"

    move-object/from16 v0, v64

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5e
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_57

    move-object/from16 v63, v64

    .line 286
    .end local v64           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .restart local v63       #accountManager:Lcom/android/server/accounts/AccountManagerService;
    :goto_7
    :try_start_a
    const-string v7, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/4 v7, 0x1

    move/from16 v0, v100

    if-ne v0, v7, :cond_27

    const/4 v7, 0x1

    :goto_8
    invoke-static {v5, v7}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v80

    .line 290
    const-string v7, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 293
    const-string v7, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    new-instance v6, Lcom/android/server/LightsService;

    invoke-direct {v6, v5}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_2

    .line 296
    .end local v108           #lights:Lcom/android/server/LightsService;
    .local v6, lights:Lcom/android/server/LightsService;
    :try_start_b
    const-string v7, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    new-instance v8, Lcom/android/server/BatteryService;

    invoke-direct {v8, v5, v6}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_58

    .line 298
    .end local v70           #battery:Lcom/android/server/BatteryService;
    .local v8, battery:Lcom/android/server/BatteryService;
    :try_start_c
    const-string v7, "battery"

    invoke-static {v7, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 300
    const-string v7, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    new-instance v151, Lcom/android/server/VibratorService;

    move-object/from16 v0, v151

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_59

    .line 302
    .end local v150           #vibrator:Lcom/android/server/VibratorService;
    .local v151, vibrator:Lcom/android/server/VibratorService;
    :try_start_d
    const-string v7, "vibrator"

    move-object/from16 v0, v151

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 304
    const-string v7, "SystemServer"

    const-string v9, "Consumer IR Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    new-instance v79, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v79

    invoke-direct {v0, v5}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_5a

    .line 306
    .end local v78           #consumerIr:Lcom/android/server/ConsumerIrService;
    .local v79, consumerIr:Lcom/android/server/ConsumerIrService;
    :try_start_e
    const-string v7, "consumer_ir"

    move-object/from16 v0, v79

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 310
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v10

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/power/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/BatteryService;Lcom/android/internal/app/IBatteryStats;Lcom/android/internal/app/IAppOpsService;Lcom/android/server/display/DisplayManagerService;)V

    .line 314
    const-string v7, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    new-instance v16, Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_5b

    .line 316
    .end local v65           #alarm:Lcom/android/server/AlarmManagerService;
    .local v16, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_f
    const-string v7, "alarm"

    move-object/from16 v0, v16

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 318
    const-string v7, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v17

    move-object v13, v5

    move-object v14, v8

    move-object v15, v4

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/power/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 321
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v7

    const-string v9, "WindowManager thread"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0, v9}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;Ljava/lang/String;)V

    .line 323
    const-string v7, "SystemServer"

    const-string v9, "Input Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    new-instance v20, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_5c

    .line 326
    .end local v105           #inputManager:Lcom/android/server/input/InputManagerService;
    .local v20, inputManager:Lcom/android/server/input/InputManagerService;
    :try_start_10
    const-string v7, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const/4 v7, 0x1

    move/from16 v0, v100

    if-eq v0, v7, :cond_28

    const/16 v22, 0x1

    :goto_9
    if-nez v102, :cond_29

    const/16 v23, 0x1

    :goto_a
    move-object/from16 v17, v5

    move-object/from16 v18, v4

    move-object/from16 v19, v11

    invoke-static/range {v17 .. v24}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;Landroid/os/Handler;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v159

    .line 330
    const-string v7, "window"

    move-object/from16 v0, v159

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 331
    const-string v7, "input"

    move-object/from16 v0, v20

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 333
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    move-object/from16 v0, v159

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 335
    invoke-virtual/range {v159 .. v159}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 336
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/input/InputManagerService;->start()V

    .line 338
    move-object/from16 v0, v159

    invoke-virtual {v11, v0}, Lcom/android/server/display/DisplayManagerService;->setWindowManager(Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;)V

    .line 339
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/android/server/display/DisplayManagerService;->setInputManager(Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;)V

    .line 344
    const-string v7, "ro.kernel.qemu"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "1"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 345
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_3

    :goto_b
    move-object/from16 v78, v79

    .end local v79           #consumerIr:Lcom/android/server/ConsumerIrService;
    .restart local v78       #consumerIr:Lcom/android/server/ConsumerIrService;
    move-object/from16 v140, v141

    .end local v141           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v150, v151

    .line 363
    .end local v83           #cryptState:Ljava/lang/String;
    .end local v151           #vibrator:Lcom/android/server/VibratorService;
    .restart local v150       #vibrator:Lcom/android/server/VibratorService;
    :goto_c
    const/16 v84, 0x0

    .line 364
    .local v84, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v136, 0x0

    .line 365
    .local v136, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v103, 0x0

    .line 366
    .local v103, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v66, 0x0

    .line 367
    .local v66, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v122, 0x0

    .line 368
    .local v122, notification:Lcom/android/server/NotificationManagerService;
    const/16 v153, 0x0

    .line 369
    .local v153, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v109, 0x0

    .line 370
    .local v109, location:Lcom/android/server/LocationManagerService;
    const/16 v81, 0x0

    .line 371
    .local v81, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v142, 0x0

    .line 372
    .local v142, tsms:Lcom/android/server/TextServicesManagerService;
    const/16 v111, 0x0

    .line 373
    .local v111, lockSettings:Lcom/android/server/LockSettingsService;
    const/16 v97, 0x0

    .line 374
    .local v97, dreamy:Lcom/android/server/dreams/DreamManagerService;
    const/16 v68, 0x0

    .line 375
    .local v68, atlas:Lcom/android/server/AssetAtlasService;
    const/16 v126, 0x0

    .line 376
    .local v126, printManager:Lcom/android/server/print/PrintManagerService;
    const/16 v113, 0x0

    .line 379
    .local v113, mediaRouter:Lcom/android/server/media/MediaRouterService;
    const/4 v7, 0x1

    move/from16 v0, v100

    if-eq v0, v7, :cond_3

    .line 383
    :try_start_11
    const-string v7, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    new-instance v104, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v104

    move-object/from16 v1, v159

    invoke-direct {v0, v5, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_4

    .line 385
    .end local v103           #imm:Lcom/android/server/InputMethodManagerService;
    .local v104, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_12
    const-string v7, "input_method"

    move-object/from16 v0, v104

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_54

    move-object/from16 v103, v104

    .line 391
    .end local v104           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v103       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_d
    :try_start_13
    const-string v7, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const-string v7, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_5

    .line 401
    :cond_3
    :goto_e
    :try_start_14
    invoke-virtual/range {v159 .. v159}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_6

    .line 407
    :goto_f
    :try_start_15
    invoke-interface/range {v124 .. v124}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_7

    .line 413
    :goto_10
    :try_start_16
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x104042b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_53

    .line 420
    :goto_11
    const/4 v7, 0x1

    move/from16 v0, v100

    if-eq v0, v7, :cond_30

    .line 421
    if-nez v91, :cond_4

    const-string v7, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 428
    :try_start_17
    const-string v7, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    new-instance v117, Lcom/android/server/MountService;

    move-object/from16 v0, v117

    invoke-direct {v0, v5}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_8

    .line 430
    .end local v116           #mountService:Lcom/android/server/MountService;
    .local v117, mountService:Lcom/android/server/MountService;
    :try_start_18
    const-string v7, "mount"

    move-object/from16 v0, v117

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_52

    move-object/from16 v116, v117

    .line 436
    .end local v117           #mountService:Lcom/android/server/MountService;
    .restart local v116       #mountService:Lcom/android/server/MountService;
    :cond_4
    :goto_12
    if-nez v90, :cond_5

    .line 438
    :try_start_19
    const-string v7, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    new-instance v112, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v112

    invoke-direct {v0, v5}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_9

    .line 440
    .end local v111           #lockSettings:Lcom/android/server/LockSettingsService;
    .local v112, lockSettings:Lcom/android/server/LockSettingsService;
    :try_start_1a
    const-string v7, "lock_settings"

    move-object/from16 v0, v112

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_51

    move-object/from16 v111, v112

    .line 446
    .end local v112           #lockSettings:Lcom/android/server/LockSettingsService;
    .restart local v111       #lockSettings:Lcom/android/server/LockSettingsService;
    :goto_13
    :try_start_1b
    const-string v7, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    new-instance v85, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v85

    invoke-direct {v0, v5}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_a

    .line 448
    .end local v84           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v85, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_1c
    const-string v7, "device_policy"

    move-object/from16 v0, v85

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_50

    move-object/from16 v84, v85

    .line 454
    .end local v85           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v84       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :cond_5
    :goto_14
    if-nez v92, :cond_6

    .line 456
    :try_start_1d
    const-string v7, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    new-instance v137, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v137

    move-object/from16 v1, v159

    invoke-direct {v0, v5, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_b

    .line 458
    .end local v136           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v137, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_1e
    const-string v7, "statusbar"

    move-object/from16 v0, v137

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_4f

    move-object/from16 v136, v137

    .line 464
    .end local v137           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v136       #statusBar:Lcom/android/server/StatusBarManagerService;
    :cond_6
    :goto_15
    if-nez v90, :cond_7

    .line 466
    :try_start_1f
    const-string v7, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const-string v7, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v5}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_c

    .line 474
    :cond_7
    :goto_16
    if-nez v89, :cond_8

    .line 476
    :try_start_20
    const-string v7, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-static {v5}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v30

    .line 478
    const-string v7, "network_management"

    move-object/from16 v0, v30

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_d

    .line 484
    :cond_8
    :goto_17
    if-nez v90, :cond_9

    .line 486
    :try_start_21
    const-string v7, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    new-instance v143, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v143

    invoke-direct {v0, v5}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_e

    .line 488
    .end local v142           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v143, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_22
    const-string v7, "textservices"

    move-object/from16 v0, v143

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_4e

    move-object/from16 v142, v143

    .line 494
    .end local v143           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v142       #tsms:Lcom/android/server/TextServicesManagerService;
    :cond_9
    :goto_18
    if-nez v89, :cond_2f

    .line 496
    :try_start_23
    const-string v7, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    new-instance v119, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v119

    move-object/from16 v1, v30

    move-object/from16 v2, v16

    invoke-direct {v0, v5, v1, v2}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_f

    .line 498
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v119, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_24
    const-string v7, "netstats"

    move-object/from16 v0, v119

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_4d

    move-object/from16 v29, v119

    .line 504
    .end local v119           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_19
    :try_start_25
    const-string v7, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    new-instance v25, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v27

    move-object/from16 v26, v5

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_10

    .line 508
    .end local v118           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v25, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_26
    const-string v7, "netpolicy"

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_4c

    .line 514
    :goto_1a
    :try_start_27
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    new-instance v158, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v158

    invoke-direct {v0, v5}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_11

    .line 516
    .end local v157           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v158, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_28
    const-string v7, "wifip2p"

    move-object/from16 v0, v158

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_4b

    move-object/from16 v157, v158

    .line 522
    .end local v158           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v157       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_1b
    :try_start_29
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    new-instance v156, Lcom/android/server/wifi/WifiService;

    move-object/from16 v0, v156

    invoke-direct {v0, v5}, Lcom/android/server/wifi/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_12

    .line 524
    .end local v155           #wifi:Lcom/android/server/wifi/WifiService;
    .local v156, wifi:Lcom/android/server/wifi/WifiService;
    :try_start_2a
    const-string v7, "wifi"

    move-object/from16 v0, v156

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_4a

    move-object/from16 v155, v156

    .line 530
    .end local v156           #wifi:Lcom/android/server/wifi/WifiService;
    .restart local v155       #wifi:Lcom/android/server/wifi/WifiService;
    :goto_1c
    :try_start_2b
    const-string v7, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    new-instance v77, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v77

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    move-object/from16 v3, v25

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_13

    .line 533
    .end local v76           #connectivity:Lcom/android/server/ConnectivityService;
    .local v77, connectivity:Lcom/android/server/ConnectivityService;
    :try_start_2c
    const-string v7, "connectivity"

    move-object/from16 v0, v77

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 534
    move-object/from16 v0, v29

    move-object/from16 v1, v77

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 535
    move-object/from16 v0, v25

    move-object/from16 v1, v77

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 537
    invoke-virtual/range {v157 .. v157}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V

    .line 538
    invoke-virtual/range {v155 .. v155}, Lcom/android/server/wifi/WifiService;->checkAndStartWifi()V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_49

    move-object/from16 v76, v77

    .line 544
    .end local v77           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v76       #connectivity:Lcom/android/server/ConnectivityService;
    :goto_1d
    :try_start_2d
    const-string v7, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-static {v5}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v134

    .line 546
    const-string v7, "servicediscovery"

    move-object/from16 v0, v134

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_14

    .line 553
    :goto_1e
    if-nez v90, :cond_a

    .line 555
    :try_start_2e
    const-string v7, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const-string v7, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v5}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_15

    .line 568
    :cond_a
    :goto_1f
    if-eqz v116, :cond_b

    if-nez v24, :cond_b

    .line 569
    invoke-virtual/range {v116 .. v116}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 573
    :cond_b
    if-eqz v63, :cond_c

    .line 574
    :try_start_2f
    invoke-virtual/range {v63 .. v63}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_16

    .line 580
    :cond_c
    :goto_20
    if-eqz v80, :cond_d

    .line 581
    :try_start_30
    invoke-virtual/range {v80 .. v80}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_17

    .line 587
    :cond_d
    :goto_21
    :try_start_31
    const-string v7, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    new-instance v123, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v123

    move-object/from16 v1, v136

    invoke-direct {v0, v5, v1, v6}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_18

    .line 589
    .end local v122           #notification:Lcom/android/server/NotificationManagerService;
    .local v123, notification:Lcom/android/server/NotificationManagerService;
    :try_start_32
    const-string v7, "notification"

    move-object/from16 v0, v123

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 590
    move-object/from16 v0, v25

    move-object/from16 v1, v123

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_48

    move-object/from16 v122, v123

    .line 596
    .end local v123           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v122       #notification:Lcom/android/server/NotificationManagerService;
    :goto_22
    :try_start_33
    const-string v7, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const-string v7, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v5}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_19

    .line 603
    :goto_23
    if-nez v87, :cond_e

    .line 605
    :try_start_34
    const-string v7, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    new-instance v110, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v110

    invoke-direct {v0, v5}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1a

    .line 607
    .end local v109           #location:Lcom/android/server/LocationManagerService;
    .local v110, location:Lcom/android/server/LocationManagerService;
    :try_start_35
    const-string v7, "location"

    move-object/from16 v0, v110

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_47

    move-object/from16 v109, v110

    .line 613
    .end local v110           #location:Lcom/android/server/LocationManagerService;
    .restart local v109       #location:Lcom/android/server/LocationManagerService;
    :goto_24
    :try_start_36
    const-string v7, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    new-instance v82, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v82

    invoke-direct {v0, v5}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_1b

    .line 615
    .end local v81           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v82, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_37
    const-string v7, "country_detector"

    move-object/from16 v0, v82

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_46

    move-object/from16 v81, v82

    .line 621
    .end local v82           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v81       #countryDetector:Lcom/android/server/CountryDetectorService;
    :cond_e
    :goto_25
    if-nez v90, :cond_f

    .line 623
    :try_start_38
    const-string v7, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const-string v7, "search"

    new-instance v9, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_1c

    .line 632
    :cond_f
    :goto_26
    :try_start_39
    const-string v7, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const-string v7, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v12, "/data/system/dropbox"

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v5, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_1d

    .line 639
    :goto_27
    if-nez v90, :cond_10

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1110037

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 642
    :try_start_3a
    const-string v7, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    if-nez v33, :cond_10

    .line 644
    new-instance v154, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v154

    invoke-direct {v0, v5}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_1e

    .line 645
    .end local v153           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v154, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_3b
    const-string v7, "wallpaper"

    move-object/from16 v0, v154

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_45

    move-object/from16 v153, v154

    .line 652
    .end local v154           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v153       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_10
    :goto_28
    if-nez v88, :cond_11

    const-string v7, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 654
    :try_start_3c
    const-string v7, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const-string v7, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v5}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_1f

    .line 661
    :cond_11
    :goto_29
    if-nez v90, :cond_12

    .line 663
    :try_start_3d
    const-string v7, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    new-instance v96, Lcom/android/server/DockObserver;

    move-object/from16 v0, v96

    invoke-direct {v0, v5}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_20

    .end local v95           #dock:Lcom/android/server/DockObserver;
    .local v96, dock:Lcom/android/server/DockObserver;
    move-object/from16 v95, v96

    .line 671
    .end local v96           #dock:Lcom/android/server/DockObserver;
    .restart local v95       #dock:Lcom/android/server/DockObserver;
    :cond_12
    :goto_2a
    if-nez v88, :cond_13

    .line 673
    :try_start_3e
    const-string v7, "SystemServer"

    const-string v9, "Wired Accessory Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    new-instance v7, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v20

    invoke-direct {v7, v5, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_21

    .line 682
    :cond_13
    :goto_2b
    if-nez v90, :cond_14

    .line 684
    :try_start_3f
    const-string v7, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    new-instance v149, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v149

    invoke-direct {v0, v5}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_22

    .line 687
    .end local v148           #usb:Lcom/android/server/usb/UsbService;
    .local v149, usb:Lcom/android/server/usb/UsbService;
    :try_start_40
    const-string v7, "usb"

    move-object/from16 v0, v149

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_44

    move-object/from16 v148, v149

    .line 693
    .end local v149           #usb:Lcom/android/server/usb/UsbService;
    .restart local v148       #usb:Lcom/android/server/usb/UsbService;
    :goto_2c
    :try_start_41
    const-string v7, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    new-instance v133, Lcom/android/server/SerialService;

    move-object/from16 v0, v133

    invoke-direct {v0, v5}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_23

    .line 696
    .end local v132           #serial:Lcom/android/server/SerialService;
    .local v133, serial:Lcom/android/server/SerialService;
    :try_start_42
    const-string v7, "serial"

    move-object/from16 v0, v133

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_43

    move-object/from16 v132, v133

    .line 703
    .end local v133           #serial:Lcom/android/server/SerialService;
    .restart local v132       #serial:Lcom/android/server/SerialService;
    :cond_14
    :goto_2d
    :try_start_43
    const-string v7, "SystemServer"

    const-string v9, "Twilight Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    new-instance v145, Lcom/android/server/TwilightService;

    move-object/from16 v0, v145

    invoke-direct {v0, v5}, Lcom/android/server/TwilightService;-><init>(Landroid/content/Context;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_24

    .end local v144           #twilight:Lcom/android/server/TwilightService;
    .local v145, twilight:Lcom/android/server/TwilightService;
    move-object/from16 v144, v145

    .line 710
    .end local v145           #twilight:Lcom/android/server/TwilightService;
    .restart local v144       #twilight:Lcom/android/server/TwilightService;
    :goto_2e
    :try_start_44
    const-string v7, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    new-instance v147, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v147

    move-object/from16 v1, v144

    invoke-direct {v0, v5, v1}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;Lcom/android/server/TwilightService;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_25

    .end local v146           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v147, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v146, v147

    .line 717
    .end local v147           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v146       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_2f
    if-nez v90, :cond_15

    .line 719
    :try_start_45
    const-string v7, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const-string v7, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_26

    .line 727
    :goto_30
    :try_start_46
    const-string v7, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    new-instance v67, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v67

    invoke-direct {v0, v5}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_27

    .line 729
    .end local v66           #appWidget:Lcom/android/server/AppWidgetService;
    .local v67, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_47
    const-string v7, "appwidget"

    move-object/from16 v0, v67

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_42

    move-object/from16 v66, v67

    .line 735
    .end local v67           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v66       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_31
    :try_start_48
    const-string v7, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    new-instance v131, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v131

    invoke-direct {v0, v5}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_28

    .end local v130           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v131, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v130, v131

    .line 743
    .end local v131           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v130       #recognition:Lcom/android/server/RecognitionManagerService;
    :cond_15
    :goto_32
    :try_start_49
    const-string v7, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    const-string v7, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v5}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_29

    .line 754
    :goto_33
    :try_start_4a
    const-string v7, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    const-string v7, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v5}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_2a

    .line 761
    :goto_34
    if-nez v89, :cond_16

    .line 763
    :try_start_4b
    const-string v7, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    new-instance v121, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v121

    invoke-direct {v0, v5}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_2b

    .end local v120           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v121, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v120, v121

    .line 770
    .end local v121           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v120       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :cond_16
    :goto_35
    if-nez v88, :cond_17

    .line 772
    :try_start_4c
    const-string v7, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    new-instance v74, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v74

    invoke-direct {v0, v5}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_2c

    .line 774
    .end local v73           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .local v74, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :try_start_4d
    const-string v7, "commontime_management"

    move-object/from16 v0, v74

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_41

    move-object/from16 v73, v74

    .line 780
    .end local v74           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v73       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :cond_17
    :goto_36
    if-nez v89, :cond_18

    .line 782
    :try_start_4e
    const-string v7, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    new-instance v7, Lcom/android/server/CertBlacklister;

    invoke-direct {v7, v5}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_2d

    .line 789
    :cond_18
    :goto_37
    if-nez v90, :cond_19

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1110051

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 792
    :try_start_4f
    const-string v7, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    new-instance v98, Lcom/android/server/dreams/DreamManagerService;

    move-object/from16 v0, v98

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/dreams/DreamManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_2e

    .line 795
    .end local v97           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .local v98, dreamy:Lcom/android/server/dreams/DreamManagerService;
    :try_start_50
    const-string v7, "dreams"

    move-object/from16 v0, v98

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_40

    move-object/from16 v97, v98

    .line 801
    .end local v98           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v97       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    :cond_19
    :goto_38
    if-nez v90, :cond_1a

    .line 803
    :try_start_51
    const-string v7, "SystemServer"

    const-string v9, "Assets Atlas Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    new-instance v69, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v69

    invoke-direct {v0, v5}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_2f

    .line 805
    .end local v68           #atlas:Lcom/android/server/AssetAtlasService;
    .local v69, atlas:Lcom/android/server/AssetAtlasService;
    :try_start_52
    const-string v7, "assetatlas"

    move-object/from16 v0, v69

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_3f

    move-object/from16 v68, v69

    .line 812
    .end local v69           #atlas:Lcom/android/server/AssetAtlasService;
    .restart local v68       #atlas:Lcom/android/server/AssetAtlasService;
    :cond_1a
    :goto_39
    :try_start_53
    const-string v7, "SystemServer"

    const-string v9, "IdleMaintenanceService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    new-instance v7, Lcom/android/server/IdleMaintenanceService;

    invoke-direct {v7, v5, v8}, Lcom/android/server/IdleMaintenanceService;-><init>(Landroid/content/Context;Lcom/android/server/BatteryService;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_30

    .line 819
    :goto_3a
    :try_start_54
    const-string v7, "SystemServer"

    const-string v9, "Print Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    new-instance v127, Lcom/android/server/print/PrintManagerService;

    move-object/from16 v0, v127

    invoke-direct {v0, v5}, Lcom/android/server/print/PrintManagerService;-><init>(Landroid/content/Context;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_31

    .line 821
    .end local v126           #printManager:Lcom/android/server/print/PrintManagerService;
    .local v127, printManager:Lcom/android/server/print/PrintManagerService;
    :try_start_55
    const-string v7, "print"

    move-object/from16 v0, v127

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_3e

    move-object/from16 v126, v127

    .line 826
    .end local v127           #printManager:Lcom/android/server/print/PrintManagerService;
    .restart local v126       #printManager:Lcom/android/server/print/PrintManagerService;
    :goto_3b
    if-nez v90, :cond_1b

    .line 828
    :try_start_56
    const-string v7, "SystemServer"

    const-string v9, "Media Router Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    new-instance v114, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v114

    invoke-direct {v0, v5}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_32

    .line 830
    .end local v113           #mediaRouter:Lcom/android/server/media/MediaRouterService;
    .local v114, mediaRouter:Lcom/android/server/media/MediaRouterService;
    :try_start_57
    const-string v7, "media_router"

    move-object/from16 v0, v114

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_3d

    move-object/from16 v113, v114

    .line 836
    .end local v114           #mediaRouter:Lcom/android/server/media/MediaRouterService;
    .restart local v113       #mediaRouter:Lcom/android/server/media/MediaRouterService;
    :cond_1b
    :goto_3c
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1110067

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 838
    :try_start_58
    new-instance v139, Lcom/android/server/RotationSwitchObserver;

    move-object/from16 v0, v139

    invoke-direct {v0, v5}, Lcom/android/server/RotationSwitchObserver;-><init>(Landroid/content/Context;)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_33

    .end local v138           #switchObserver:Lcom/android/server/RotationSwitchObserver;
    .local v139, switchObserver:Lcom/android/server/RotationSwitchObserver;
    move-object/from16 v138, v139

    .line 846
    .end local v139           #switchObserver:Lcom/android/server/RotationSwitchObserver;
    .restart local v138       #switchObserver:Lcom/android/server/RotationSwitchObserver;
    :cond_1c
    :goto_3d
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "adb_port"

    const-string v10, "service.adb.tcp.port"

    const-string v12, "-1"

    invoke-static {v10, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 850
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "adb_port"

    invoke-static {v9}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x0

    new-instance v12, Lcom/android/server/ServerThread$AdbPortObserver;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/server/ServerThread$AdbPortObserver;-><init>(Lcom/android/server/ServerThread;)V

    invoke-virtual {v7, v9, v10, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 856
    invoke-virtual/range {v159 .. v159}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v48

    .line 857
    .local v48, safeMode:Z
    if-eqz v48, :cond_2e

    .line 858
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 860
    const/4 v7, 0x1

    sput-boolean v7, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 862
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 871
    :goto_3e
    :try_start_59
    invoke-virtual/range {v150 .. v150}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_34

    .line 876
    :goto_3f
    if-eqz v111, :cond_1d

    .line 878
    :try_start_5a
    invoke-virtual/range {v111 .. v111}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_35

    .line 884
    :cond_1d
    :goto_40
    if-eqz v84, :cond_1e

    .line 886
    :try_start_5b
    invoke-virtual/range {v84 .. v84}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5b} :catch_36

    .line 892
    :cond_1e
    :goto_41
    if-eqz v122, :cond_1f

    .line 894
    :try_start_5c
    invoke-virtual/range {v122 .. v122}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5c} :catch_37

    .line 901
    :cond_1f
    :goto_42
    :try_start_5d
    invoke-virtual/range {v159 .. v159}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5d} :catch_38

    .line 906
    :goto_43
    if-eqz v48, :cond_20

    .line 907
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 913
    :cond_20
    invoke-virtual/range {v159 .. v159}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v75

    .line 914
    .local v75, config:Landroid/content/res/Configuration;
    new-instance v115, Landroid/util/DisplayMetrics;

    invoke-direct/range {v115 .. v115}, Landroid/util/DisplayMetrics;-><init>()V

    .line 915
    .local v115, metrics:Landroid/util/DisplayMetrics;
    const-string v7, "window"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v152

    check-cast v152, Landroid/view/WindowManager;

    .line 916
    .local v152, w:Landroid/view/WindowManager;
    invoke-interface/range {v152 .. v152}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    move-object/from16 v0, v115

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 917
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, v75

    move-object/from16 v1, v115

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 920
    :try_start_5e
    move-object/from16 v0, v144

    move-object/from16 v1, v97

    invoke-virtual {v4, v0, v1}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/server/TwilightService;Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_5e} :catch_39

    .line 926
    :goto_44
    :try_start_5f
    invoke-interface/range {v124 .. v124}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_5f} :catch_3a

    .line 932
    :goto_45
    :try_start_60
    move/from16 v0, v48

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_60} :catch_3b

    .line 938
    :goto_46
    move-object/from16 v34, v5

    .line 939
    .local v34, contextF:Landroid/content/Context;
    move-object/from16 v35, v116

    .line 940
    .local v35, mountServiceF:Lcom/android/server/MountService;
    move-object/from16 v36, v8

    .line 941
    .local v36, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v37, v30

    .line 942
    .local v37, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v38, v29

    .line 943
    .local v38, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v39, v25

    .line 944
    .local v39, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v40, v76

    .line 945
    .local v40, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v41, v95

    .line 946
    .local v41, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v42, v148

    .line 947
    .local v42, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v43, v144

    .line 948
    .local v43, twilightF:Lcom/android/server/TwilightService;
    move-object/from16 v44, v146

    .line 949
    .local v44, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v47, v66

    .line 950
    .local v47, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v49, v153

    .line 951
    .local v49, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v50, v103

    .line 952
    .local v50, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v45, v130

    .line 953
    .local v45, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v52, v109

    .line 954
    .local v52, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v53, v81

    .line 955
    .local v53, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v54, v120

    .line 956
    .local v54, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v55, v73

    .line 957
    .local v55, commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v56, v142

    .line 958
    .local v56, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v51, v136

    .line 959
    .local v51, statusBarF:Lcom/android/server/StatusBarManagerService;
    move-object/from16 v57, v97

    .line 960
    .local v57, dreamyF:Lcom/android/server/dreams/DreamManagerService;
    move-object/from16 v58, v68

    .line 961
    .local v58, atlasF:Lcom/android/server/AssetAtlasService;
    move-object/from16 v59, v20

    .line 962
    .local v59, inputManagerF:Lcom/android/server/input/InputManagerService;
    move-object/from16 v60, v140

    .line 963
    .local v60, telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v61, v126

    .line 964
    .local v61, printManagerF:Lcom/android/server/print/PrintManagerService;
    move-object/from16 v62, v113

    .line 965
    .local v62, mediaRouterF:Lcom/android/server/media/MediaRouterService;
    move-object/from16 v46, v138

    .line 972
    .local v46, switchObserverF:Lcom/android/server/RotationSwitchObserver;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    new-instance v31, Lcom/android/server/ServerThread$2;

    move-object/from16 v32, p0

    invoke-direct/range {v31 .. v62}, Lcom/android/server/ServerThread$2;-><init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/TwilightService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/RotationSwitchObserver;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/print/PrintManagerService;Lcom/android/server/media/MediaRouterService;)V

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1128
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v7

    if-eqz v7, :cond_21

    .line 1129
    const-string v7, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    :cond_21
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1133
    const-string v7, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    return-void

    .line 124
    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v5           #context:Landroid/content/Context;
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v11           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v16           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v20           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v21           #wmHandler:Landroid/os/Handler;
    .end local v24           #onlyCore:Z
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v30           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v33           #headless:Z
    .end local v34           #contextF:Landroid/content/Context;
    .end local v35           #mountServiceF:Lcom/android/server/MountService;
    .end local v36           #batteryF:Lcom/android/server/BatteryService;
    .end local v37           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v38           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v39           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v40           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v41           #dockF:Lcom/android/server/DockObserver;
    .end local v42           #usbF:Lcom/android/server/usb/UsbService;
    .end local v43           #twilightF:Lcom/android/server/TwilightService;
    .end local v44           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v45           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v46           #switchObserverF:Lcom/android/server/RotationSwitchObserver;
    .end local v47           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v48           #safeMode:Z
    .end local v49           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v50           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v51           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v52           #locationF:Lcom/android/server/LocationManagerService;
    .end local v53           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v54           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v55           #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .end local v56           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v57           #dreamyF:Lcom/android/server/dreams/DreamManagerService;
    .end local v58           #atlasF:Lcom/android/server/AssetAtlasService;
    .end local v59           #inputManagerF:Lcom/android/server/input/InputManagerService;
    .end local v60           #telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    .end local v61           #printManagerF:Lcom/android/server/print/PrintManagerService;
    .end local v62           #mediaRouterF:Lcom/android/server/media/MediaRouterService;
    .end local v63           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .end local v66           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v68           #atlas:Lcom/android/server/AssetAtlasService;
    .end local v71           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .end local v73           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .end local v75           #config:Landroid/content/res/Configuration;
    .end local v76           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v78           #consumerIr:Lcom/android/server/ConsumerIrService;
    .end local v80           #contentService:Lcom/android/server/content/ContentService;
    .end local v81           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v84           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v86           #disableBluetooth:Z
    .end local v87           #disableLocation:Z
    .end local v88           #disableMedia:Z
    .end local v89           #disableNetwork:Z
    .end local v90           #disableNonCoreServices:Z
    .end local v91           #disableStorage:Z
    .end local v92           #disableSystemUI:Z
    .end local v93           #disableTelephony:Z
    .end local v95           #dock:Lcom/android/server/DockObserver;
    .end local v97           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v100           #factoryTest:I
    .end local v101           #factoryTestStr:Ljava/lang/String;
    .end local v102           #firstBoot:Z
    .end local v103           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v106           #installer:Lcom/android/server/pm/Installer;
    .end local v109           #location:Lcom/android/server/LocationManagerService;
    .end local v111           #lockSettings:Lcom/android/server/LockSettingsService;
    .end local v113           #mediaRouter:Lcom/android/server/media/MediaRouterService;
    .end local v115           #metrics:Landroid/util/DisplayMetrics;
    .end local v116           #mountService:Lcom/android/server/MountService;
    .end local v120           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v122           #notification:Lcom/android/server/NotificationManagerService;
    .end local v124           #pm:Landroid/content/pm/IPackageManager;
    .end local v126           #printManager:Lcom/android/server/print/PrintManagerService;
    .end local v130           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v132           #serial:Lcom/android/server/SerialService;
    .end local v134           #serviceDiscovery:Lcom/android/server/NsdService;
    .end local v136           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v138           #switchObserver:Lcom/android/server/RotationSwitchObserver;
    .end local v140           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v142           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v144           #twilight:Lcom/android/server/TwilightService;
    .end local v146           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v148           #usb:Lcom/android/server/usb/UsbService;
    .end local v150           #vibrator:Lcom/android/server/VibratorService;
    .end local v152           #w:Landroid/view/WindowManager;
    .end local v153           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v155           #wifi:Lcom/android/server/wifi/WifiService;
    .end local v157           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v159           #wm:Lcom/android/server/wm/WindowManagerService;
    .end local v160           #wmHandlerThread:Landroid/os/HandlerThread;
    :cond_22
    const/16 v129, 0x0

    goto/16 :goto_0

    .line 130
    .restart local v129       #reboot:Z
    :cond_23
    const/16 v128, 0x0

    .restart local v128       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .line 138
    .end local v128           #reason:Ljava/lang/String;
    .end local v129           #reboot:Z
    .restart local v101       #factoryTestStr:Ljava/lang/String;
    :cond_24
    invoke-static/range {v101 .. v101}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v100

    goto/16 :goto_2

    .line 213
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    .restart local v5       #context:Landroid/content/Context;
    .restart local v21       #wmHandler:Landroid/os/Handler;
    .restart local v24       #onlyCore:Z
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v30       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v33       #headless:Z
    .restart local v63       #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .restart local v65       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v70       #battery:Lcom/android/server/BatteryService;
    .restart local v71       #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v73       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v76       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v78       #consumerIr:Lcom/android/server/ConsumerIrService;
    .restart local v80       #contentService:Lcom/android/server/content/ContentService;
    .restart local v94       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v95       #dock:Lcom/android/server/DockObserver;
    .restart local v100       #factoryTest:I
    .restart local v102       #firstBoot:Z
    .restart local v105       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v106       #installer:Lcom/android/server/pm/Installer;
    .restart local v108       #lights:Lcom/android/server/LightsService;
    .restart local v116       #mountService:Lcom/android/server/MountService;
    .restart local v118       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v120       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v124       #pm:Landroid/content/pm/IPackageManager;
    .restart local v130       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v132       #serial:Lcom/android/server/SerialService;
    .restart local v134       #serviceDiscovery:Lcom/android/server/NsdService;
    .restart local v138       #switchObserver:Lcom/android/server/RotationSwitchObserver;
    .restart local v140       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v144       #twilight:Lcom/android/server/TwilightService;
    .restart local v146       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v148       #usb:Lcom/android/server/usb/UsbService;
    .restart local v150       #vibrator:Lcom/android/server/VibratorService;
    .restart local v155       #wifi:Lcom/android/server/wifi/WifiService;
    .restart local v157       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v159       #wm:Lcom/android/server/wm/WindowManagerService;
    .restart local v160       #wmHandlerThread:Landroid/os/HandlerThread;
    :catch_0
    move-exception v99

    .line 214
    .local v99, e:Ljava/lang/RuntimeException;
    :goto_47
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const-string v7, "System"

    const-string v9, "************ Failure starting bootstrap service"

    move-object/from16 v0, v99

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 252
    .end local v94           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v99           #e:Ljava/lang/RuntimeException;
    .end local v140           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v11       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v83       #cryptState:Ljava/lang/String;
    .restart local v86       #disableBluetooth:Z
    .restart local v87       #disableLocation:Z
    .restart local v88       #disableMedia:Z
    .restart local v89       #disableNetwork:Z
    .restart local v90       #disableNonCoreServices:Z
    .restart local v91       #disableStorage:Z
    .restart local v92       #disableSystemUI:Z
    .restart local v93       #disableTelephony:Z
    .restart local v141       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :cond_25
    :try_start_61
    const-string v7, "1"

    move-object/from16 v0, v83

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 253
    const-string v7, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/16 v24, 0x1

    goto/16 :goto_4

    .line 257
    :cond_26
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 282
    :catch_1
    move-exception v99

    .line 283
    .local v99, e:Ljava/lang/Throwable;
    :goto_48
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v99

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_61
    .catch Ljava/lang/RuntimeException; {:try_start_61 .. :try_end_61} :catch_2

    goto/16 :goto_7

    .line 358
    .end local v83           #cryptState:Ljava/lang/String;
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_2
    move-exception v99

    move-object/from16 v140, v141

    .end local v141           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v105

    .end local v105           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v20       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v65

    .end local v65           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v16       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v70

    .end local v70           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v108

    .line 359
    .end local v108           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .local v99, e:Ljava/lang/RuntimeException;
    :goto_49
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const-string v7, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v99

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .line 287
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v16           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v20           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v99           #e:Ljava/lang/RuntimeException;
    .end local v140           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v65       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v70       #battery:Lcom/android/server/BatteryService;
    .restart local v83       #cryptState:Ljava/lang/String;
    .restart local v105       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v108       #lights:Lcom/android/server/LightsService;
    .restart local v141       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :cond_27
    const/4 v7, 0x0

    goto/16 :goto_8

    .line 327
    .end local v65           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v70           #battery:Lcom/android/server/BatteryService;
    .end local v78           #consumerIr:Lcom/android/server/ConsumerIrService;
    .end local v105           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v108           #lights:Lcom/android/server/LightsService;
    .end local v150           #vibrator:Lcom/android/server/VibratorService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v16       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v20       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v79       #consumerIr:Lcom/android/server/ConsumerIrService;
    .restart local v151       #vibrator:Lcom/android/server/VibratorService;
    :cond_28
    const/16 v22, 0x0

    goto/16 :goto_9

    :cond_29
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 346
    :cond_2a
    const/4 v7, 0x1

    move/from16 v0, v100

    if-ne v0, v7, :cond_2b

    .line 347
    :try_start_62
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 358
    :catch_3
    move-exception v99

    move-object/from16 v78, v79

    .end local v79           #consumerIr:Lcom/android/server/ConsumerIrService;
    .restart local v78       #consumerIr:Lcom/android/server/ConsumerIrService;
    move-object/from16 v140, v141

    .end local v141           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v150, v151

    .end local v151           #vibrator:Lcom/android/server/VibratorService;
    .restart local v150       #vibrator:Lcom/android/server/VibratorService;
    goto :goto_49

    .line 348
    .end local v78           #consumerIr:Lcom/android/server/ConsumerIrService;
    .end local v140           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v150           #vibrator:Lcom/android/server/VibratorService;
    .restart local v79       #consumerIr:Lcom/android/server/ConsumerIrService;
    .restart local v141       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v151       #vibrator:Lcom/android/server/VibratorService;
    :cond_2b
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "android.hardware.bluetooth"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2c

    .line 350
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 351
    :cond_2c
    if-eqz v86, :cond_2d

    .line 352
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Service disabled by config"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 354
    :cond_2d
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    new-instance v72, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v72

    invoke-direct {v0, v5}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_62
    .catch Ljava/lang/RuntimeException; {:try_start_62 .. :try_end_62} :catch_3

    .line 356
    .end local v71           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .local v72, bluetooth:Lcom/android/server/BluetoothManagerService;
    :try_start_63
    const-string v7, "bluetooth_manager"

    move-object/from16 v0, v72

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_63
    .catch Ljava/lang/RuntimeException; {:try_start_63 .. :try_end_63} :catch_5d

    move-object/from16 v71, v72

    .end local v72           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v71       #bluetooth:Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_b

    .line 386
    .end local v79           #consumerIr:Lcom/android/server/ConsumerIrService;
    .end local v83           #cryptState:Ljava/lang/String;
    .end local v141           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v151           #vibrator:Lcom/android/server/VibratorService;
    .restart local v66       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v68       #atlas:Lcom/android/server/AssetAtlasService;
    .restart local v78       #consumerIr:Lcom/android/server/ConsumerIrService;
    .restart local v81       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v84       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v97       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v103       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v109       #location:Lcom/android/server/LocationManagerService;
    .restart local v111       #lockSettings:Lcom/android/server/LockSettingsService;
    .restart local v113       #mediaRouter:Lcom/android/server/media/MediaRouterService;
    .restart local v122       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v126       #printManager:Lcom/android/server/print/PrintManagerService;
    .restart local v136       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v140       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v142       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v150       #vibrator:Lcom/android/server/VibratorService;
    .restart local v153       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_4
    move-exception v99

    .line 387
    .local v99, e:Ljava/lang/Throwable;
    :goto_4a
    const-string v7, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 394
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_5
    move-exception v99

    .line 395
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 402
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v99

    .line 403
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 408
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_7
    move-exception v99

    .line 409
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 431
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_8
    move-exception v99

    .line 432
    .restart local v99       #e:Ljava/lang/Throwable;
    :goto_4b
    const-string v7, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 441
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_9
    move-exception v99

    .line 442
    .restart local v99       #e:Ljava/lang/Throwable;
    :goto_4c
    const-string v7, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 449
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v99

    .line 450
    .restart local v99       #e:Ljava/lang/Throwable;
    :goto_4d
    const-string v7, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 459
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v99

    .line 460
    .restart local v99       #e:Ljava/lang/Throwable;
    :goto_4e
    const-string v7, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 469
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v99

    .line 470
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 479
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v99

    .line 480
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 489
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v99

    .line 490
    .restart local v99       #e:Ljava/lang/Throwable;
    :goto_4f
    const-string v7, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 499
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v99

    .line 500
    .restart local v99       #e:Ljava/lang/Throwable;
    :goto_50
    const-string v7, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 509
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v99

    move-object/from16 v25, v118

    .line 510
    .end local v118           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v99       #e:Ljava/lang/Throwable;
    :goto_51
    const-string v7, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 517
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v99

    .line 518
    .restart local v99       #e:Ljava/lang/Throwable;
    :goto_52
    const-string v7, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 525
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v99

    .line 526
    .restart local v99       #e:Ljava/lang/Throwable;
    :goto_53
    const-string v7, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 539
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v99

    .line 540
    .restart local v99       #e:Ljava/lang/Throwable;
    :goto_54
    const-string v7, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 548
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v99

    .line 549
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 558
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v99

    .line 559
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 575
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v99

    .line 576
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 582
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v99

    .line 583
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 591
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v99

    .line 592
    .restart local v99       #e:Ljava/lang/Throwable;
    :goto_55
    const-string v7, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 599
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v99

    .line 600
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 608
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v99

    .line 609
    .restart local v99       #e:Ljava/lang/Throwable;
    :goto_56
    const-string v7, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 616
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v99

    .line 617
    .restart local v99       #e:Ljava/lang/Throwable;
    :goto_57
    const-string v7, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 626
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v99

    .line 627
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 635
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v99

    .line 636
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 647
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v99

    .line 648
    .restart local v99       #e:Ljava/lang/Throwable;
    :goto_58
    const-string v7, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 656
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v99

    .line 657
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 666
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v99

    .line 667
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 677
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_21
    move-exception v99

    .line 678
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 688
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_22
    move-exception v99

    .line 689
    .restart local v99       #e:Ljava/lang/Throwable;
    :goto_59
    const-string v7, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 697
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_23
    move-exception v99

    .line 698
    .restart local v99       #e:Ljava/lang/Throwable;
    :goto_5a
    const-string v7, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v99

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2d

    .line 705
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_24
    move-exception v99

    .line 706
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "starting TwilightService"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 713
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_25
    move-exception v99

    .line 714
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 722
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_26
    move-exception v99

    .line 723
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v99

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_30

    .line 730
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_27
    move-exception v99

    .line 731
    .restart local v99       #e:Ljava/lang/Throwable;
    :goto_5b
    const-string v7, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 737
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_28
    move-exception v99

    .line 738
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 745
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_29
    move-exception v99

    .line 746
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 757
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_2a
    move-exception v99

    .line 758
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 765
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_2b
    move-exception v99

    .line 766
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 775
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_2c
    move-exception v99

    .line 776
    .restart local v99       #e:Ljava/lang/Throwable;
    :goto_5c
    const-string v7, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 784
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_2d
    move-exception v99

    .line 785
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 796
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_2e
    move-exception v99

    .line 797
    .restart local v99       #e:Ljava/lang/Throwable;
    :goto_5d
    const-string v7, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 806
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_2f
    move-exception v99

    .line 807
    .restart local v99       #e:Ljava/lang/Throwable;
    :goto_5e
    const-string v7, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .line 814
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_30
    move-exception v99

    .line 815
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "starting IdleMaintenanceService"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .line 822
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_31
    move-exception v99

    .line 823
    .restart local v99       #e:Ljava/lang/Throwable;
    :goto_5f
    const-string v7, "starting Print Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    .line 831
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_32
    move-exception v99

    .line 832
    .restart local v99       #e:Ljava/lang/Throwable;
    :goto_60
    const-string v7, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3c

    .line 840
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_33
    move-exception v99

    .line 841
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "starting RotationSwitchObserver failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 865
    .end local v99           #e:Ljava/lang/Throwable;
    .restart local v48       #safeMode:Z
    :cond_2e
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_3e

    .line 872
    :catch_34
    move-exception v99

    .line 873
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f

    .line 879
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_35
    move-exception v99

    .line 880
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_40

    .line 887
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_36
    move-exception v99

    .line 888
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_41

    .line 895
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_37
    move-exception v99

    .line 896
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_42

    .line 902
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_38
    move-exception v99

    .line 903
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_43

    .line 921
    .end local v99           #e:Ljava/lang/Throwable;
    .restart local v75       #config:Landroid/content/res/Configuration;
    .restart local v115       #metrics:Landroid/util/DisplayMetrics;
    .restart local v152       #w:Landroid/view/WindowManager;
    :catch_39
    move-exception v99

    .line 922
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44

    .line 927
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_3a
    move-exception v99

    .line 928
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_45

    .line 933
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_3b
    move-exception v99

    .line 934
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_46

    .line 262
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v16           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v20           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v48           #safeMode:Z
    .end local v66           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v68           #atlas:Lcom/android/server/AssetAtlasService;
    .end local v75           #config:Landroid/content/res/Configuration;
    .end local v81           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v84           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v97           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v99           #e:Ljava/lang/Throwable;
    .end local v103           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v109           #location:Lcom/android/server/LocationManagerService;
    .end local v111           #lockSettings:Lcom/android/server/LockSettingsService;
    .end local v113           #mediaRouter:Lcom/android/server/media/MediaRouterService;
    .end local v115           #metrics:Landroid/util/DisplayMetrics;
    .end local v122           #notification:Lcom/android/server/NotificationManagerService;
    .end local v126           #printManager:Lcom/android/server/print/PrintManagerService;
    .end local v136           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v140           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v142           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v152           #w:Landroid/view/WindowManager;
    .end local v153           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v65       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v70       #battery:Lcom/android/server/BatteryService;
    .restart local v83       #cryptState:Ljava/lang/String;
    .restart local v105       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v108       #lights:Lcom/android/server/LightsService;
    .restart local v118       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v141       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_3c
    move-exception v7

    goto/16 :goto_6

    .line 831
    .end local v65           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v70           #battery:Lcom/android/server/BatteryService;
    .end local v83           #cryptState:Ljava/lang/String;
    .end local v105           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v108           #lights:Lcom/android/server/LightsService;
    .end local v118           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v141           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v16       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v20       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v66       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v68       #atlas:Lcom/android/server/AssetAtlasService;
    .restart local v81       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v84       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v97       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v103       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v109       #location:Lcom/android/server/LocationManagerService;
    .restart local v111       #lockSettings:Lcom/android/server/LockSettingsService;
    .restart local v114       #mediaRouter:Lcom/android/server/media/MediaRouterService;
    .restart local v122       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v126       #printManager:Lcom/android/server/print/PrintManagerService;
    .restart local v136       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v140       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v142       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v153       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3d
    move-exception v99

    move-object/from16 v113, v114

    .end local v114           #mediaRouter:Lcom/android/server/media/MediaRouterService;
    .restart local v113       #mediaRouter:Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_60

    .line 822
    .end local v126           #printManager:Lcom/android/server/print/PrintManagerService;
    .restart local v127       #printManager:Lcom/android/server/print/PrintManagerService;
    :catch_3e
    move-exception v99

    move-object/from16 v126, v127

    .end local v127           #printManager:Lcom/android/server/print/PrintManagerService;
    .restart local v126       #printManager:Lcom/android/server/print/PrintManagerService;
    goto/16 :goto_5f

    .line 806
    .end local v68           #atlas:Lcom/android/server/AssetAtlasService;
    .restart local v69       #atlas:Lcom/android/server/AssetAtlasService;
    :catch_3f
    move-exception v99

    move-object/from16 v68, v69

    .end local v69           #atlas:Lcom/android/server/AssetAtlasService;
    .restart local v68       #atlas:Lcom/android/server/AssetAtlasService;
    goto/16 :goto_5e

    .line 796
    .end local v97           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v98       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    :catch_40
    move-exception v99

    move-object/from16 v97, v98

    .end local v98           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v97       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    goto/16 :goto_5d

    .line 775
    .end local v73           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v74       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :catch_41
    move-exception v99

    move-object/from16 v73, v74

    .end local v74           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v73       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_5c

    .line 730
    .end local v66           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v67       #appWidget:Lcom/android/server/AppWidgetService;
    :catch_42
    move-exception v99

    move-object/from16 v66, v67

    .end local v67           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v66       #appWidget:Lcom/android/server/AppWidgetService;
    goto/16 :goto_5b

    .line 697
    .end local v132           #serial:Lcom/android/server/SerialService;
    .restart local v133       #serial:Lcom/android/server/SerialService;
    :catch_43
    move-exception v99

    move-object/from16 v132, v133

    .end local v133           #serial:Lcom/android/server/SerialService;
    .restart local v132       #serial:Lcom/android/server/SerialService;
    goto/16 :goto_5a

    .line 688
    .end local v148           #usb:Lcom/android/server/usb/UsbService;
    .restart local v149       #usb:Lcom/android/server/usb/UsbService;
    :catch_44
    move-exception v99

    move-object/from16 v148, v149

    .end local v149           #usb:Lcom/android/server/usb/UsbService;
    .restart local v148       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_59

    .line 647
    .end local v153           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v154       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_45
    move-exception v99

    move-object/from16 v153, v154

    .end local v154           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v153       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_58

    .line 616
    .end local v81           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v82       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_46
    move-exception v99

    move-object/from16 v81, v82

    .end local v82           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v81       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_57

    .line 608
    .end local v109           #location:Lcom/android/server/LocationManagerService;
    .restart local v110       #location:Lcom/android/server/LocationManagerService;
    :catch_47
    move-exception v99

    move-object/from16 v109, v110

    .end local v110           #location:Lcom/android/server/LocationManagerService;
    .restart local v109       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_56

    .line 591
    .end local v122           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v123       #notification:Lcom/android/server/NotificationManagerService;
    :catch_48
    move-exception v99

    move-object/from16 v122, v123

    .end local v123           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v122       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_55

    .line 539
    .end local v76           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v77       #connectivity:Lcom/android/server/ConnectivityService;
    :catch_49
    move-exception v99

    move-object/from16 v76, v77

    .end local v77           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v76       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_54

    .line 525
    .end local v155           #wifi:Lcom/android/server/wifi/WifiService;
    .restart local v156       #wifi:Lcom/android/server/wifi/WifiService;
    :catch_4a
    move-exception v99

    move-object/from16 v155, v156

    .end local v156           #wifi:Lcom/android/server/wifi/WifiService;
    .restart local v155       #wifi:Lcom/android/server/wifi/WifiService;
    goto/16 :goto_53

    .line 517
    .end local v157           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v158       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_4b
    move-exception v99

    move-object/from16 v157, v158

    .end local v158           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v157       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_52

    .line 509
    :catch_4c
    move-exception v99

    goto/16 :goto_51

    .line 499
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v118       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v119       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_4d
    move-exception v99

    move-object/from16 v29, v119

    .end local v119           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_50

    .line 489
    .end local v142           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v143       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_4e
    move-exception v99

    move-object/from16 v142, v143

    .end local v143           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v142       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_4f

    .line 459
    .end local v136           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v137       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_4f
    move-exception v99

    move-object/from16 v136, v137

    .end local v137           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v136       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_4e

    .line 449
    .end local v84           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v85       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_50
    move-exception v99

    move-object/from16 v84, v85

    .end local v85           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v84       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_4d

    .line 441
    .end local v111           #lockSettings:Lcom/android/server/LockSettingsService;
    .restart local v112       #lockSettings:Lcom/android/server/LockSettingsService;
    :catch_51
    move-exception v99

    move-object/from16 v111, v112

    .end local v112           #lockSettings:Lcom/android/server/LockSettingsService;
    .restart local v111       #lockSettings:Lcom/android/server/LockSettingsService;
    goto/16 :goto_4c

    .line 431
    .end local v116           #mountService:Lcom/android/server/MountService;
    .restart local v117       #mountService:Lcom/android/server/MountService;
    :catch_52
    move-exception v99

    move-object/from16 v116, v117

    .end local v117           #mountService:Lcom/android/server/MountService;
    .restart local v116       #mountService:Lcom/android/server/MountService;
    goto/16 :goto_4b

    .line 417
    :catch_53
    move-exception v7

    goto/16 :goto_11

    .line 386
    .end local v103           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v104       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_54
    move-exception v99

    move-object/from16 v103, v104

    .end local v104           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v103       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_4a

    .line 358
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v11           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v16           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v20           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v66           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v68           #atlas:Lcom/android/server/AssetAtlasService;
    .end local v81           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v84           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v97           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v103           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v109           #location:Lcom/android/server/LocationManagerService;
    .end local v111           #lockSettings:Lcom/android/server/LockSettingsService;
    .end local v113           #mediaRouter:Lcom/android/server/media/MediaRouterService;
    .end local v122           #notification:Lcom/android/server/NotificationManagerService;
    .end local v126           #printManager:Lcom/android/server/print/PrintManagerService;
    .end local v136           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v142           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v153           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v65       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v70       #battery:Lcom/android/server/BatteryService;
    .restart local v94       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v105       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v108       #lights:Lcom/android/server/LightsService;
    :catch_55
    move-exception v99

    move-object/from16 v20, v105

    .end local v105           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v20       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v65

    .end local v65           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v16       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v70

    .end local v70           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v11, v94

    .end local v94           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v11       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v6, v108

    .end local v108           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_49

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v16           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v20           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v65       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v70       #battery:Lcom/android/server/BatteryService;
    .restart local v105       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v108       #lights:Lcom/android/server/LightsService;
    :catch_56
    move-exception v99

    move-object/from16 v20, v105

    .end local v105           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v20       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v65

    .end local v65           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v16       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v70

    .end local v70           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v108

    .end local v108           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_49

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v16           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v20           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v63           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .end local v140           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v64       #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .restart local v65       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v70       #battery:Lcom/android/server/BatteryService;
    .restart local v83       #cryptState:Ljava/lang/String;
    .restart local v105       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v108       #lights:Lcom/android/server/LightsService;
    .restart local v141       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_57
    move-exception v99

    move-object/from16 v140, v141

    .end local v141           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v105

    .end local v105           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v20       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v65

    .end local v65           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v16       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v70

    .end local v70           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v108

    .end local v108           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v63, v64

    .end local v64           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .restart local v63       #accountManager:Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_49

    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v16           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v20           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v140           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v65       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v70       #battery:Lcom/android/server/BatteryService;
    .restart local v105       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v141       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_58
    move-exception v99

    move-object/from16 v140, v141

    .end local v141           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v105

    .end local v105           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v20       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v65

    .end local v65           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v16       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v70

    .end local v70           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    goto/16 :goto_49

    .end local v16           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v20           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v140           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v65       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v105       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v141       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_59
    move-exception v99

    move-object/from16 v140, v141

    .end local v141           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v105

    .end local v105           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v20       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v65

    .end local v65           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v16       #alarm:Lcom/android/server/AlarmManagerService;
    goto/16 :goto_49

    .end local v16           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v20           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v140           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v150           #vibrator:Lcom/android/server/VibratorService;
    .restart local v65       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v105       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v141       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v151       #vibrator:Lcom/android/server/VibratorService;
    :catch_5a
    move-exception v99

    move-object/from16 v140, v141

    .end local v141           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v105

    .end local v105           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v20       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v65

    .end local v65           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v16       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v150, v151

    .end local v151           #vibrator:Lcom/android/server/VibratorService;
    .restart local v150       #vibrator:Lcom/android/server/VibratorService;
    goto/16 :goto_49

    .end local v16           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v20           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v78           #consumerIr:Lcom/android/server/ConsumerIrService;
    .end local v140           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v150           #vibrator:Lcom/android/server/VibratorService;
    .restart local v65       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v79       #consumerIr:Lcom/android/server/ConsumerIrService;
    .restart local v105       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v141       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v151       #vibrator:Lcom/android/server/VibratorService;
    :catch_5b
    move-exception v99

    move-object/from16 v78, v79

    .end local v79           #consumerIr:Lcom/android/server/ConsumerIrService;
    .restart local v78       #consumerIr:Lcom/android/server/ConsumerIrService;
    move-object/from16 v140, v141

    .end local v141           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v105

    .end local v105           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v20       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v65

    .end local v65           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v16       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v150, v151

    .end local v151           #vibrator:Lcom/android/server/VibratorService;
    .restart local v150       #vibrator:Lcom/android/server/VibratorService;
    goto/16 :goto_49

    .end local v20           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v78           #consumerIr:Lcom/android/server/ConsumerIrService;
    .end local v140           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v150           #vibrator:Lcom/android/server/VibratorService;
    .restart local v79       #consumerIr:Lcom/android/server/ConsumerIrService;
    .restart local v105       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v141       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v151       #vibrator:Lcom/android/server/VibratorService;
    :catch_5c
    move-exception v99

    move-object/from16 v78, v79

    .end local v79           #consumerIr:Lcom/android/server/ConsumerIrService;
    .restart local v78       #consumerIr:Lcom/android/server/ConsumerIrService;
    move-object/from16 v140, v141

    .end local v141           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v105

    .end local v105           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v20       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v150, v151

    .end local v151           #vibrator:Lcom/android/server/VibratorService;
    .restart local v150       #vibrator:Lcom/android/server/VibratorService;
    goto/16 :goto_49

    .end local v71           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .end local v78           #consumerIr:Lcom/android/server/ConsumerIrService;
    .end local v140           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v150           #vibrator:Lcom/android/server/VibratorService;
    .restart local v72       #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v79       #consumerIr:Lcom/android/server/ConsumerIrService;
    .restart local v141       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v151       #vibrator:Lcom/android/server/VibratorService;
    :catch_5d
    move-exception v99

    move-object/from16 v78, v79

    .end local v79           #consumerIr:Lcom/android/server/ConsumerIrService;
    .restart local v78       #consumerIr:Lcom/android/server/ConsumerIrService;
    move-object/from16 v140, v141

    .end local v141           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v71, v72

    .end local v72           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v71       #bluetooth:Lcom/android/server/BluetoothManagerService;
    move-object/from16 v150, v151

    .end local v151           #vibrator:Lcom/android/server/VibratorService;
    .restart local v150       #vibrator:Lcom/android/server/VibratorService;
    goto/16 :goto_49

    .line 282
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v16           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v20           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v63           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .end local v140           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v64       #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .restart local v65       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v70       #battery:Lcom/android/server/BatteryService;
    .restart local v105       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v108       #lights:Lcom/android/server/LightsService;
    .restart local v141       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_5e
    move-exception v99

    move-object/from16 v63, v64

    .end local v64           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .restart local v63       #accountManager:Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_48

    .line 213
    .end local v11           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v83           #cryptState:Ljava/lang/String;
    .end local v86           #disableBluetooth:Z
    .end local v87           #disableLocation:Z
    .end local v88           #disableMedia:Z
    .end local v89           #disableNetwork:Z
    .end local v90           #disableNonCoreServices:Z
    .end local v91           #disableStorage:Z
    .end local v92           #disableSystemUI:Z
    .end local v93           #disableTelephony:Z
    .end local v106           #installer:Lcom/android/server/pm/Installer;
    .end local v141           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v94       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v107       #installer:Lcom/android/server/pm/Installer;
    .restart local v140       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_5f
    move-exception v99

    move-object/from16 v106, v107

    .end local v107           #installer:Lcom/android/server/pm/Installer;
    .restart local v106       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_47

    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v106           #installer:Lcom/android/server/pm/Installer;
    .restart local v107       #installer:Lcom/android/server/pm/Installer;
    .restart local v125       #power:Lcom/android/server/power/PowerManagerService;
    :catch_60
    move-exception v99

    move-object/from16 v4, v125

    .end local v125           #power:Lcom/android/server/power/PowerManagerService;
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    move-object/from16 v106, v107

    .end local v107           #installer:Lcom/android/server/pm/Installer;
    .restart local v106       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_47

    .end local v65           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v70           #battery:Lcom/android/server/BatteryService;
    .end local v94           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v105           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v108           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v11       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v16       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v20       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v66       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v68       #atlas:Lcom/android/server/AssetAtlasService;
    .restart local v81       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v84       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v86       #disableBluetooth:Z
    .restart local v87       #disableLocation:Z
    .restart local v88       #disableMedia:Z
    .restart local v89       #disableNetwork:Z
    .restart local v90       #disableNonCoreServices:Z
    .restart local v91       #disableStorage:Z
    .restart local v92       #disableSystemUI:Z
    .restart local v93       #disableTelephony:Z
    .restart local v97       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v103       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v109       #location:Lcom/android/server/LocationManagerService;
    .restart local v111       #lockSettings:Lcom/android/server/LockSettingsService;
    .restart local v113       #mediaRouter:Lcom/android/server/media/MediaRouterService;
    .restart local v122       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v126       #printManager:Lcom/android/server/print/PrintManagerService;
    .restart local v136       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v142       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v153       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_2f
    move-object/from16 v25, v118

    .end local v118           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_1e

    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v118       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_30
    move-object/from16 v25, v118

    .end local v118           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_3d
.end method

.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 90
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    return-void
.end method
