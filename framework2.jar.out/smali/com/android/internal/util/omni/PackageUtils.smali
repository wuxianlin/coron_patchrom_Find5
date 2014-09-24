.class public Lcom/android/internal/util/omni/PackageUtils;
.super Ljava/lang/Object;
.source "PackageUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "appUri"

    .prologue
    const/4 v2, 0x1

    .line 26
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 27
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    return v2

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isAvailableApp(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 7
    .parameter "packageName"
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 35
    move-object v2, p1

    .line 36
    .local v2, mContext:Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 38
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {v3, p0, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 39
    invoke-virtual {v3, p0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 40
    .local v1, enabled:I
    const/4 v6, 0x2

    if-eq v1, v6, :cond_0

    const/4 v6, 0x3

    if-eq v1, v6, :cond_0

    .line 43
    .end local v1           #enabled:I
    :goto_0
    return v4

    .restart local v1       #enabled:I
    :cond_0
    move v4, v5

    .line 40
    goto :goto_0

    .line 42
    .end local v1           #enabled:I
    :catch_0
    move-exception v0

    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move v4, v5

    .line 43
    goto :goto_0
.end method
