.class Lcom/android/server/BatteryService$Led$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService$Led;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private mInnerBatteryFullARGB:I

.field private mInnerBatteryLowARGB:I

.field private mInnerBatteryMediumARGB:I

.field private mInnerLedPulseEnabled:Z

.field private mInnerLightEnabled:Z

.field final synthetic this$1:Lcom/android/server/BatteryService$Led;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService$Led;)V
    .locals 1
    .parameter

    .prologue
    .line 900
    iput-object p1, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->this$1:Lcom/android/server/BatteryService$Led;

    .line 901
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 902
    return-void
.end method

.method static synthetic access$invoke-updateLightPulse-fe2949(Lcom/android/server/BatteryService$Led$SettingsObserver;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 892
    invoke-direct {p0}, Lcom/android/server/BatteryService$Led$SettingsObserver;->updateLightPulse()Z

    move-result v0

    return v0
.end method

.method private updateLightProperties()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 943
    iget-object v2, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->this$1:Lcom/android/server/BatteryService$Led;

    iget-object v2, v2, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 944
    .local v1, resolver:Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->this$1:Lcom/android/server/BatteryService$Led;

    iget-object v2, v2, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 947
    .local v0, res:Landroid/content/res/Resources;
    const-string v2, "battery_light_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->mInnerLightEnabled:Z

    .line 951
    const-string v2, "battery_light_pulse"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    iput-boolean v3, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->mInnerLedPulseEnabled:Z

    .line 955
    const-string v2, "battery_light_low_color"

    const v3, #android:integer@config_notificationsBatteryLowARGB#t

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->mInnerBatteryLowARGB:I

    .line 958
    const-string v2, "battery_light_medium_color"

    const v3, #android:integer@config_notificationsBatteryMediumARGB#t

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->mInnerBatteryMediumARGB:I

    .line 961
    const-string v2, "battery_light_full_color"

    const v3, #android:integer@config_notificationsBatteryFullARGB#t

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->mInnerBatteryFullARGB:I

    .line 964
    return-void

    :cond_0
    move v2, v4

    .line 947
    goto :goto_0

    :cond_1
    move v3, v4

    .line 951
    goto :goto_1
.end method

.method private updateLightPulse()Z
    .locals 7

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 967
    iget-object v3, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->this$1:Lcom/android/server/BatteryService$Led;

    iget-object v3, v3, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v3

    if-nez v3, :cond_0

    .line 968
    const/4 v2, 0x0

    .line 1002
    :goto_0
    return v2

    .line 970
    :cond_0
    iget-object v3, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->this$1:Lcom/android/server/BatteryService$Led;

    iget-object v3, v3, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v3

    iget v0, v3, Landroid/os/BatteryProperties;->batteryLevel:I

    .line 971
    .local v0, level:I
    iget-object v3, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->this$1:Lcom/android/server/BatteryService$Led;

    iget-object v3, v3, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v3

    iget v1, v3, Landroid/os/BatteryProperties;->batteryStatus:I

    .line 973
    .local v1, status:I
    iget-boolean v3, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->mInnerLightEnabled:Z

    if-nez v3, :cond_1

    .line 975
    iget-object v3, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->this$1:Lcom/android/server/BatteryService$Led;

    #getter for: Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;
    invoke-static {v3}, Lcom/android/server/BatteryService$Led;->access$iget-mBatteryLight-61288f(Lcom/android/server/BatteryService$Led;)Lcom/android/server/LightsService$Light;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto :goto_0

    .line 976
    :cond_1
    iget-object v3, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->this$1:Lcom/android/server/BatteryService$Led;

    iget-object v3, v3, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$900(Lcom/android/server/BatteryService;)I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 977
    if-ne v1, v4, :cond_2

    .line 979
    iget-object v3, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->this$1:Lcom/android/server/BatteryService$Led;

    #getter for: Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;
    invoke-static {v3}, Lcom/android/server/BatteryService$Led;->access$iget-mBatteryLight-61288f(Lcom/android/server/BatteryService$Led;)Lcom/android/server/LightsService$Light;

    move-result-object v3

    iget v4, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->mInnerBatteryLowARGB:I

    invoke-virtual {v3, v4}, Lcom/android/server/LightsService$Light;->setColor(I)V

    goto :goto_0

    .line 980
    :cond_2
    iget-boolean v3, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->mInnerLedPulseEnabled:Z

    if-eqz v3, :cond_3

    .line 982
    iget-object v3, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->this$1:Lcom/android/server/BatteryService$Led;

    #getter for: Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;
    invoke-static {v3}, Lcom/android/server/BatteryService$Led;->access$iget-mBatteryLight-61288f(Lcom/android/server/BatteryService$Led;)Lcom/android/server/LightsService$Light;

    move-result-object v3

    iget v4, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->mInnerBatteryLowARGB:I

    iget-object v5, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->this$1:Lcom/android/server/BatteryService$Led;

    #getter for: Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I
    invoke-static {v5}, Lcom/android/server/BatteryService$Led;->access$iget-mBatteryLedOn-1d5160(Lcom/android/server/BatteryService$Led;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->this$1:Lcom/android/server/BatteryService$Led;

    #getter for: Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I
    invoke-static {v6}, Lcom/android/server/BatteryService$Led;->access$iget-mBatteryLedOff-cc2be1(Lcom/android/server/BatteryService$Led;)I

    move-result v6

    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    goto :goto_0

    .line 986
    :cond_3
    iget-object v3, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->this$1:Lcom/android/server/BatteryService$Led;

    #getter for: Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;
    invoke-static {v3}, Lcom/android/server/BatteryService$Led;->access$iget-mBatteryLight-61288f(Lcom/android/server/BatteryService$Led;)Lcom/android/server/LightsService$Light;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto :goto_0

    .line 988
    :cond_4
    if-eq v1, v4, :cond_5

    if-ne v1, v5, :cond_8

    .line 990
    :cond_5
    if-eq v1, v5, :cond_6

    const/16 v3, 0x5a

    if-lt v0, v3, :cond_7

    .line 992
    :cond_6
    iget-object v3, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->this$1:Lcom/android/server/BatteryService$Led;

    #getter for: Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;
    invoke-static {v3}, Lcom/android/server/BatteryService$Led;->access$iget-mBatteryLight-61288f(Lcom/android/server/BatteryService$Led;)Lcom/android/server/LightsService$Light;

    move-result-object v3

    iget v4, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->mInnerBatteryFullARGB:I

    invoke-virtual {v3, v4}, Lcom/android/server/LightsService$Light;->setColor(I)V

    goto :goto_0

    .line 995
    :cond_7
    iget-object v3, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->this$1:Lcom/android/server/BatteryService$Led;

    #getter for: Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;
    invoke-static {v3}, Lcom/android/server/BatteryService$Led;->access$iget-mBatteryLight-61288f(Lcom/android/server/BatteryService$Led;)Lcom/android/server/LightsService$Light;

    move-result-object v3

    iget v4, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->mInnerBatteryMediumARGB:I

    invoke-virtual {v3, v4}, Lcom/android/server/LightsService$Light;->setColor(I)V

    goto/16 :goto_0

    .line 999
    :cond_8
    iget-object v3, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->this$1:Lcom/android/server/BatteryService$Led;

    #getter for: Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;
    invoke-static {v3}, Lcom/android/server/BatteryService$Led;->access$iget-mBatteryLight-61288f(Lcom/android/server/BatteryService$Led;)Lcom/android/server/LightsService$Light;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto/16 :goto_0
.end method

.method private updateLights()V
    .locals 0

    .prologue
    .line 936
    invoke-direct {p0}, Lcom/android/server/BatteryService$Led$SettingsObserver;->updateLightProperties()V

    .line 939
    invoke-direct {p0}, Lcom/android/server/BatteryService$Led$SettingsObserver;->updateLightPulse()Z

    .line 940
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 908
    iget-object v1, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->this$1:Lcom/android/server/BatteryService$Led;

    iget-object v1, v1, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 911
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "battery_light_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 915
    const-string v1, "battery_light_pulse"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 919
    const-string v1, "battery_light_low_color"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 921
    const-string v1, "battery_light_medium_color"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 923
    const-string v1, "battery_light_full_color"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 926
    invoke-direct {p0}, Lcom/android/server/BatteryService$Led$SettingsObserver;->updateLights()V

    .line 927
    return-void
.end method

.method public onChange(Z)V
    .locals 0
    .parameter "selfChange"

    .prologue
    .line 931
    invoke-direct {p0}, Lcom/android/server/BatteryService$Led$SettingsObserver;->updateLights()V

    .line 932
    return-void
.end method
