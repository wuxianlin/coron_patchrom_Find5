.class public Landroid/media/audiofx/StereoWide;
.super Landroid/media/audiofx/AudioEffect;
.source "StereoWide.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/StereoWide$1;,
        Landroid/media/audiofx/StereoWide$Settings;,
        Landroid/media/audiofx/StereoWide$BaseParameterListener;,
        Landroid/media/audiofx/StereoWide$OnParameterChangeListener;
    }
.end annotation


# static fields
.field public static final PARAM_STRENGTH:I = 0x1

.field public static final PARAM_STRENGTH_SUPPORTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "StereoWide"


# instance fields
.field private mBaseParamListener:Landroid/media/audiofx/StereoWide$BaseParameterListener;

.field private mParamListener:Landroid/media/audiofx/StereoWide$OnParameterChangeListener;

.field private final mParamListenerLock:Ljava/lang/Object;

.field private mStrengthSupported:Z


# direct methods
.method public constructor <init>(II)V
    .locals 6
    .parameter "priority"
    .parameter "audioSession"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    sget-object v3, Landroid/media/audiofx/StereoWide;->EFFECT_TYPE_STEREOWIDE:Ljava/util/UUID;

    sget-object v4, Landroid/media/audiofx/StereoWide;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, v3, v4, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    .line 54
    iput-boolean v2, p0, Landroid/media/audiofx/StereoWide;->mStrengthSupported:Z

    .line 60
    iput-object v5, p0, Landroid/media/audiofx/StereoWide;->mParamListener:Landroid/media/audiofx/StereoWide$OnParameterChangeListener;

    .line 65
    iput-object v5, p0, Landroid/media/audiofx/StereoWide;->mBaseParamListener:Landroid/media/audiofx/StereoWide$BaseParameterListener;

    .line 70
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Landroid/media/audiofx/StereoWide;->mParamListenerLock:Ljava/lang/Object;

    .line 91
    if-nez p2, :cond_0

    .line 92
    const-string v3, "StereoWide"

    const-string v4, "WARNING: attaching a StereoWide to global output mix is deprecated!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    new-array v0, v1, [I

    .line 96
    .local v0, value:[I
    invoke-virtual {p0, v2, v0}, Landroid/media/audiofx/StereoWide;->getParameter(I[I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/audiofx/StereoWide;->checkStatus(I)V

    .line 97
    aget v3, v0, v2

    if-eqz v3, :cond_1

    :goto_0
    iput-boolean v1, p0, Landroid/media/audiofx/StereoWide;->mStrengthSupported:Z

    .line 98
    return-void

    :cond_1
    move v1, v2

    .line 97
    goto :goto_0
.end method

.method static synthetic access$000(Landroid/media/audiofx/StereoWide;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Landroid/media/audiofx/StereoWide;->mParamListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/audiofx/StereoWide;)Landroid/media/audiofx/StereoWide$OnParameterChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Landroid/media/audiofx/StereoWide;->mParamListener:Landroid/media/audiofx/StereoWide$OnParameterChangeListener;

    return-object v0
.end method


# virtual methods
.method public getProperties()Landroid/media/audiofx/StereoWide$Settings;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 264
    new-instance v0, Landroid/media/audiofx/StereoWide$Settings;

    invoke-direct {v0}, Landroid/media/audiofx/StereoWide$Settings;-><init>()V

    .line 265
    .local v0, settings:Landroid/media/audiofx/StereoWide$Settings;
    new-array v1, v2, [S

    .line 266
    .local v1, value:[S
    invoke-virtual {p0, v2, v1}, Landroid/media/audiofx/StereoWide;->getParameter(I[S)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/StereoWide;->checkStatus(I)V

    .line 267
    const/4 v2, 0x0

    aget-short v2, v1, v2

    iput-short v2, v0, Landroid/media/audiofx/StereoWide$Settings;->strength:S

    .line 268
    return-object v0
.end method

.method public getRoundedStrength()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 135
    new-array v0, v1, [S

    .line 136
    .local v0, value:[S
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/StereoWide;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/StereoWide;->checkStatus(I)V

    .line 137
    const/4 v1, 0x0

    aget-short v1, v0, v1

    return v1
.end method

.method public getStrengthSupported()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Landroid/media/audiofx/StereoWide;->mStrengthSupported:Z

    return v0
.end method

.method public setParameterListener(Landroid/media/audiofx/StereoWide$OnParameterChangeListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 195
    iget-object v1, p0, Landroid/media/audiofx/StereoWide;->mParamListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 196
    :try_start_0
    iget-object v0, p0, Landroid/media/audiofx/StereoWide;->mParamListener:Landroid/media/audiofx/StereoWide$OnParameterChangeListener;

    if-nez v0, :cond_0

    .line 197
    iput-object p1, p0, Landroid/media/audiofx/StereoWide;->mParamListener:Landroid/media/audiofx/StereoWide$OnParameterChangeListener;

    .line 198
    new-instance v0, Landroid/media/audiofx/StereoWide$BaseParameterListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/media/audiofx/StereoWide$BaseParameterListener;-><init>(Landroid/media/audiofx/StereoWide;Landroid/media/audiofx/StereoWide$1;)V

    iput-object v0, p0, Landroid/media/audiofx/StereoWide;->mBaseParamListener:Landroid/media/audiofx/StereoWide$BaseParameterListener;

    .line 199
    iget-object v0, p0, Landroid/media/audiofx/StereoWide;->mBaseParamListener:Landroid/media/audiofx/StereoWide$BaseParameterListener;

    invoke-super {p0, v0}, Landroid/media/audiofx/AudioEffect;->setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V

    .line 201
    :cond_0
    monitor-exit v1

    .line 202
    return-void

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setProperties(Landroid/media/audiofx/StereoWide$Settings;)V
    .locals 2
    .parameter "settings"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 281
    const/4 v0, 0x1

    iget-short v1, p1, Landroid/media/audiofx/StereoWide$Settings;->strength:S

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/StereoWide;->setParameter(IS)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/StereoWide;->checkStatus(I)V

    .line 282
    return-void
.end method

.method public setStrength(S)V
    .locals 1
    .parameter "strength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/StereoWide;->setParameter(IS)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/StereoWide;->checkStatus(I)V

    .line 123
    return-void
.end method
