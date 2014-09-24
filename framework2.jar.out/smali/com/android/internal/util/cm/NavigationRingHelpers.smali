.class public Lcom/android/internal/util/cm/NavigationRingHelpers;
.super Ljava/lang/Object;
.source "NavigationRingHelpers.java"


# static fields
.field private static final ASSIST_ICON_METADATA_NAME:Ljava/lang/String; = "com.android.systemui.action_assist_icon"

.field public static final MAX_ACTIONS:I = 0x3

.field private static final TORCH_STATE_FILTER:Landroid/content/IntentFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "net.cactii.flash2.TORCH_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/util/cm/NavigationRingHelpers;->TORCH_STATE_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method private static createDrawableForActivity(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    .locals 13
    .parameter "res"
    .parameter "activityIcon"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 166
    const v3, 0x108036e

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 168
    .local v10, iconBg:Landroid/graphics/drawable/Drawable;
    const v3, 0x108036d

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 171
    .local v11, iconBgActivated:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v2, v3, 0x3

    .line 172
    .local v2, margin:I
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    new-array v3, v5, [Landroid/graphics/drawable/Drawable;

    aput-object v10, v3, v4

    aput-object p1, v3, v1

    invoke-direct {v0, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 173
    .local v0, icon:Landroid/graphics/drawable/LayerDrawable;
    new-instance v9, Landroid/graphics/drawable/LayerDrawable;

    new-array v3, v5, [Landroid/graphics/drawable/Drawable;

    aput-object v11, v3, v4

    aput-object p1, v3, v1

    invoke-direct {v9, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .local v9, iconActivated:Landroid/graphics/drawable/LayerDrawable;
    move v3, v2

    move v4, v2

    move v5, v2

    .line 175
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    move-object v3, v9

    move v4, v1

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    .line 176
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 178
    new-instance v12, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v12}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 179
    .local v12, selector:Landroid/graphics/drawable/StateListDrawable;
    sget-object v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v12, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 180
    sget-object v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v12, v1, v9}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 181
    sget-object v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    invoke-virtual {v12, v1, v9}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 183
    new-instance v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-direct {v1, p0, v12}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method private static filterAction([Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "result"
    .parameter "action"
    .parameter "available"

    .prologue
    .line 78
    if-eqz p2, :cond_1

    .line 86
    :cond_0
    return-void

    .line 81
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 82
    aget-object v1, p0, v0

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    const/4 v1, 0x0

    aput-object v1, p0, v0

    .line 81
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static getRingerDrawableResId(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 205
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 206
    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 208
    .local v1, ringerMode:I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 209
    const v2, 0x108038b

    .line 213
    :goto_0
    return v2

    .line 210
    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 211
    const v2, 0x108037f

    goto :goto_0

    .line 213
    :cond_1
    const v2, 0x1080382

    goto :goto_0
.end method

.method private static getSilentDrawableResId(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 196
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 197
    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    const v1, 0x108037f

    .line 200
    :goto_0
    return v1

    :cond_0
    const v1, 0x1080382

    goto :goto_0
.end method

.method public static getTargetActions(Landroid/content/Context;)[Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x3

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 56
    .local v0, cr:Landroid/content/ContentResolver;
    new-array v3, v6, [Ljava/lang/String;

    .line 57
    .local v3, result:[Ljava/lang/String;
    const/4 v2, 0x1

    .line 59
    .local v2, isDefault:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v6, :cond_1

    .line 60
    sget-object v4, Landroid/provider/Settings$System;->NAVIGATION_RING_TARGETS:[Ljava/lang/String;

    aget-object v4, v4, v1

    const/4 v5, -0x2

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 62
    aget-object v4, v3, v1

    if-eqz v4, :cond_0

    .line 63
    const/4 v2, 0x0

    .line 59
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    :cond_1
    if-eqz v2, :cond_2

    .line 67
    invoke-static {p0}, Lcom/android/internal/util/cm/NavigationRingHelpers;->resetActionsToDefaults(Landroid/content/Context;)V

    .line 68
    const/4 v4, 0x1

    const-string v5, "assist"

    aput-object v5, v3, v4

    .line 71
    :cond_2
    const-string v4, "assist"

    invoke-static {p0}, Lcom/android/internal/util/cm/NavigationRingHelpers;->isAssistantAvailable(Landroid/content/Context;)Z

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/internal/util/cm/NavigationRingHelpers;->filterAction([Ljava/lang/String;Ljava/lang/String;Z)V

    .line 72
    const-string v4, "torch"

    invoke-static {p0}, Lcom/android/internal/util/cm/NavigationRingHelpers;->isTorchAvailable(Landroid/content/Context;)Z

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/internal/util/cm/NavigationRingHelpers;->filterAction([Ljava/lang/String;Ljava/lang/String;Z)V

    .line 74
    return-object v3
.end method

.method public static getTargetDrawable(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    .locals 8
    .parameter "context"
    .parameter "action"

    .prologue
    const/4 v7, 0x0

    .line 114
    const/4 v5, -0x1

    .line 115
    .local v5, resourceId:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 117
    .local v4, res:Landroid/content/res/Resources;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "none"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 118
    :cond_0
    const v5, 0x108036f

    .line 141
    :cond_1
    :goto_0
    if-gez v5, :cond_e

    .line 144
    const/4 v6, 0x0

    :try_start_0
    invoke-static {p1, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 145
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 146
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v6, 0x1

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 148
    .local v1, info:Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_d

    .line 149
    invoke-virtual {v1, v3}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/internal/util/cm/NavigationRingHelpers;->createDrawableForActivity(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 162
    .end local v1           #info:Landroid/content/pm/ActivityInfo;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    :cond_2
    :goto_1
    return-object v0

    .line 119
    :cond_3
    const-string v6, "screenshot"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 120
    const v5, 0x108037c

    goto :goto_0

    .line 121
    :cond_4
    const-string v6, "ime"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 122
    const v5, 0x1080370

    goto :goto_0

    .line 123
    :cond_5
    const-string v6, "ringVibrate"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 124
    invoke-static {p0}, Lcom/android/internal/util/cm/NavigationRingHelpers;->getVibrateDrawableResId(Landroid/content/Context;)I

    move-result v5

    goto :goto_0

    .line 125
    :cond_6
    const-string v6, "ringSilent"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 126
    invoke-static {p0}, Lcom/android/internal/util/cm/NavigationRingHelpers;->getSilentDrawableResId(Landroid/content/Context;)I

    move-result v5

    goto :goto_0

    .line 127
    :cond_7
    const-string v6, "ringVibrateSilent"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 128
    invoke-static {p0}, Lcom/android/internal/util/cm/NavigationRingHelpers;->getRingerDrawableResId(Landroid/content/Context;)I

    move-result v5

    goto :goto_0

    .line 129
    :cond_8
    const-string v6, "kill"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 130
    const v5, 0x1080373

    goto :goto_0

    .line 131
    :cond_9
    const-string v6, "lastApp"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 132
    const v5, 0x1080376

    goto :goto_0

    .line 133
    :cond_a
    const-string v6, "power"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 134
    const v5, 0x1080379

    goto :goto_0

    .line 135
    :cond_b
    const-string v6, "torch"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 136
    invoke-static {p0}, Lcom/android/internal/util/cm/NavigationRingHelpers;->getTorchDrawableResId(Landroid/content/Context;)I

    move-result v5

    goto/16 :goto_0

    .line 137
    :cond_c
    const-string v6, "assist"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 138
    const v5, 0x1080299

    goto/16 :goto_0

    .line 151
    :catch_0
    move-exception v6

    .line 155
    :cond_d
    const v5, 0x108036f

    .line 158
    :cond_e
    new-instance v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-direct {v0, v4, v5}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    .line 159
    .local v0, drawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    const v6, 0x108036f

    if-ne v5, v6, :cond_2

    .line 160
    invoke-virtual {v0, v7}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setEnabled(Z)V

    goto/16 :goto_1
.end method

.method private static getTorchDrawableResId(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 218
    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/util/cm/NavigationRingHelpers;->TORCH_STATE_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 219
    .local v1, stateIntent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    const-string v2, "state"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 222
    .local v0, active:Z
    :cond_0
    if-eqz v0, :cond_1

    .line 223
    const v2, 0x1080388

    .line 225
    :goto_0
    return v2

    :cond_1
    const v2, 0x1080385

    goto :goto_0
.end method

.method private static getVibrateDrawableResId(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 187
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 188
    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 189
    const v1, 0x108038b

    .line 191
    :goto_0
    return v1

    :cond_0
    const v1, 0x1080382

    goto :goto_0
.end method

.method public static isAssistantAvailable(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 99
    const-string v0, "search"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    const/4 v2, -0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTorchAvailable(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 106
    .local v0, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v2, "net.cactii.flash2"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 110
    :cond_0
    :goto_0
    return v1

    .line 107
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static resetActionsToDefaults(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 90
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Settings$System;->NAVIGATION_RING_TARGETS:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 92
    sget-object v1, Landroid/provider/Settings$System;->NAVIGATION_RING_TARGETS:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const-string v2, "assist"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 94
    sget-object v1, Landroid/provider/Settings$System;->NAVIGATION_RING_TARGETS:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 96
    return-void
.end method

.method public static swapSearchIconIfNeeded(Landroid/content/Context;Lcom/android/internal/widget/multiwaveview/GlowPadView;)V
    .locals 5
    .parameter "context"
    .parameter "view"

    .prologue
    .line 249
    const-string v2, "search"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SearchManager;

    const/4 v3, 0x1

    const/4 v4, -0x2

    invoke-virtual {v2, p0, v3, v4}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v1

    .line 251
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 252
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 253
    .local v0, component:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 254
    const-string v2, "com.android.systemui.action_assist_icon"

    const v3, 0x1080299

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->replaceTargetDrawablesIfPresent(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    .line 259
    .end local v0           #component:Landroid/content/ComponentName;
    :cond_0
    return-void
.end method

.method public static updateDynamicIconIfNeeded(Landroid/content/Context;Lcom/android/internal/widget/multiwaveview/GlowPadView;Ljava/lang/String;I)V
    .locals 3
    .parameter "context"
    .parameter "view"
    .parameter "action"
    .parameter "position"

    .prologue
    .line 230
    const/4 v1, -0x1

    .line 232
    .local v1, resourceId:I
    const-string v2, "ringVibrate"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 233
    invoke-static {p0}, Lcom/android/internal/util/cm/NavigationRingHelpers;->getVibrateDrawableResId(Landroid/content/Context;)I

    move-result v1

    .line 242
    :cond_0
    :goto_0
    if-lez v1, :cond_1

    .line 243
    invoke-virtual {p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getTargetDrawables()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 244
    .local v0, drawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setDrawable(Landroid/content/res/Resources;I)V

    .line 246
    .end local v0           #drawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_1
    return-void

    .line 234
    :cond_2
    const-string v2, "ringSilent"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 235
    invoke-static {p0}, Lcom/android/internal/util/cm/NavigationRingHelpers;->getSilentDrawableResId(Landroid/content/Context;)I

    move-result v1

    goto :goto_0

    .line 236
    :cond_3
    const-string v2, "ringVibrateSilent"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 237
    invoke-static {p0}, Lcom/android/internal/util/cm/NavigationRingHelpers;->getRingerDrawableResId(Landroid/content/Context;)I

    move-result v1

    goto :goto_0

    .line 238
    :cond_4
    const-string v2, "torch"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    invoke-static {p0}, Lcom/android/internal/util/cm/NavigationRingHelpers;->getTorchDrawableResId(Landroid/content/Context;)I

    move-result v1

    goto :goto_0
.end method
