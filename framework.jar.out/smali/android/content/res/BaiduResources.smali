.class public Landroid/content/res/BaiduResources;
.super Landroid/content/res/Resources;
.source "BaiduResources.java"


# static fields
.field private static final mAnColorHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mHasParseYiValue:Z

.field private static mIsYiValueExist:Z

.field private static final mYiColorHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sParseTheme:Z

.field private static sThemeChanged:I

.field private static sThemeExist:Z


# instance fields
.field mAPPMultiParseConfig:Z

.field mAppMultiColorExist:Z

.field mAppMultiColorHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mAppMultiConfigExist:Z

.field mAppMultiConfigHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mAppMultiParseColor:Z

.field mAppMultiTmpConfig:Landroid/util/TypedValue;

.field mAppMultiTmpValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/res/BaiduResources;->mAnColorHash:Ljava/util/HashMap;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/res/BaiduResources;->mYiColorHash:Ljava/util/HashMap;

    .line 61
    sput-boolean v1, Landroid/content/res/BaiduResources;->sParseTheme:Z

    .line 62
    sput-boolean v1, Landroid/content/res/BaiduResources;->sThemeExist:Z

    .line 63
    sput-boolean v1, Landroid/content/res/BaiduResources;->mHasParseYiValue:Z

    .line 64
    sput-boolean v1, Landroid/content/res/BaiduResources;->mIsYiValueExist:Z

    .line 65
    const/4 v0, -0x1

    sput v0, Landroid/content/res/BaiduResources;->sThemeChanged:I

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Landroid/content/res/Resources;-><init>()V

    .line 49
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/BaiduResources;->mAppMultiTmpValue:Landroid/util/TypedValue;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/BaiduResources;->mAppMultiColorHash:Ljava/util/HashMap;

    .line 51
    iput-boolean v1, p0, Landroid/content/res/BaiduResources;->mAppMultiParseColor:Z

    .line 52
    iput-boolean v1, p0, Landroid/content/res/BaiduResources;->mAppMultiColorExist:Z

    .line 54
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/BaiduResources;->mAppMultiTmpConfig:Landroid/util/TypedValue;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/BaiduResources;->mAppMultiConfigHash:Ljava/util/HashMap;

    .line 56
    iput-boolean v1, p0, Landroid/content/res/BaiduResources;->mAPPMultiParseConfig:Z

    .line 57
    iput-boolean v1, p0, Landroid/content/res/BaiduResources;->mAppMultiConfigExist:Z

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "assets"
    .parameter "metrics"
    .parameter "config"

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 49
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/BaiduResources;->mAppMultiTmpValue:Landroid/util/TypedValue;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/BaiduResources;->mAppMultiColorHash:Ljava/util/HashMap;

    .line 51
    iput-boolean v1, p0, Landroid/content/res/BaiduResources;->mAppMultiParseColor:Z

    .line 52
    iput-boolean v1, p0, Landroid/content/res/BaiduResources;->mAppMultiColorExist:Z

    .line 54
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/BaiduResources;->mAppMultiTmpConfig:Landroid/util/TypedValue;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/BaiduResources;->mAppMultiConfigHash:Ljava/util/HashMap;

    .line 56
    iput-boolean v1, p0, Landroid/content/res/BaiduResources;->mAPPMultiParseConfig:Z

    .line 57
    iput-boolean v1, p0, Landroid/content/res/BaiduResources;->mAppMultiConfigExist:Z

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;)V
    .locals 2
    .parameter "assets"
    .parameter "metrics"
    .parameter "config"
    .parameter "compInfo"
    .parameter "token"

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct/range {p0 .. p5}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;)V

    .line 49
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/BaiduResources;->mAppMultiTmpValue:Landroid/util/TypedValue;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/BaiduResources;->mAppMultiColorHash:Ljava/util/HashMap;

    .line 51
    iput-boolean v1, p0, Landroid/content/res/BaiduResources;->mAppMultiParseColor:Z

    .line 52
    iput-boolean v1, p0, Landroid/content/res/BaiduResources;->mAppMultiColorExist:Z

    .line 54
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/BaiduResources;->mAppMultiTmpConfig:Landroid/util/TypedValue;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/BaiduResources;->mAppMultiConfigHash:Ljava/util/HashMap;

    .line 56
    iput-boolean v1, p0, Landroid/content/res/BaiduResources;->mAPPMultiParseConfig:Z

    .line 57
    iput-boolean v1, p0, Landroid/content/res/BaiduResources;->mAppMultiConfigExist:Z

    .line 42
    return-void
.end method

.method private getThemeColor(I)Ljava/lang/Integer;
    .locals 12
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/high16 v11, 0x7000

    const/4 v10, 0x5

    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 295
    ushr-int/lit8 v1, p1, 0x18

    .line 296
    .local v1, packageId:I
    if-nez p1, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-object v3

    .line 299
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/res/BaiduResources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, packageName:Ljava/lang/String;
    invoke-virtual {p0, p1}, Landroid/content/res/BaiduResources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    .line 302
    .local v4, textColor:Ljava/lang/String;
    sget-boolean v5, Landroid/content/res/BaiduResources;->sParseTheme:Z

    if-nez v5, :cond_2

    if-ne v1, v9, :cond_2

    .line 303
    sput-boolean v9, Landroid/content/res/BaiduResources;->sParseTheme:Z

    .line 304
    const-string v5, "framework-res"

    const-string/jumbo v6, "res/values/colors.xml"

    sget-object v7, Landroid/content/res/BaiduResources;->mAnColorHash:Ljava/util/HashMap;

    invoke-static {v5, v6, v7}, Landroid/content/res/BaiduResources;->parseThemeValueLocal(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v5

    sput-boolean v5, Landroid/content/res/BaiduResources;->sThemeExist:Z

    .line 308
    :cond_2
    sget-boolean v5, Landroid/content/res/BaiduResources;->mHasParseYiValue:Z

    if-nez v5, :cond_3

    if-ne v1, v10, :cond_3

    .line 309
    sput-boolean v9, Landroid/content/res/BaiduResources;->mHasParseYiValue:Z

    .line 310
    const-string v5, "framework-yi-res"

    const-string/jumbo v6, "res/values/colors.xml"

    sget-object v7, Landroid/content/res/BaiduResources;->mYiColorHash:Ljava/util/HashMap;

    invoke-static {v5, v6, v7}, Landroid/content/res/BaiduResources;->parseThemeValueLocal(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v5

    sput-boolean v5, Landroid/content/res/BaiduResources;->mIsYiValueExist:Z

    .line 314
    :cond_3
    iget-boolean v5, p0, Landroid/content/res/BaiduResources;->mAppMultiParseColor:Z

    if-nez v5, :cond_5

    if-lt p1, v11, :cond_5

    .line 315
    iget-object v6, p0, Landroid/content/res/BaiduResources;->mAppMultiTmpValue:Landroid/util/TypedValue;

    monitor-enter v6

    .line 316
    const/4 v5, 0x1

    :try_start_0
    iput-boolean v5, p0, Landroid/content/res/BaiduResources;->mAppMultiParseColor:Z

    .line 317
    const-string/jumbo v5, "res/values/colors.xml"

    iget-object v7, p0, Landroid/content/res/BaiduResources;->mAppMultiColorHash:Ljava/util/HashMap;

    invoke-static {v2, v5, v7}, Landroid/content/res/BaiduResources;->parseThemeValueLocal(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v5

    iput-boolean v5, p0, Landroid/content/res/BaiduResources;->mAppMultiColorExist:Z

    .line 319
    const-string v5, "com.android.contacts"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 320
    const-string v5, "com.baidu.dialpad"

    const-string/jumbo v7, "res/values/colors.xml"

    iget-object v8, p0, Landroid/content/res/BaiduResources;->mAppMultiColorHash:Ljava/util/HashMap;

    invoke-static {v5, v7, v8}, Landroid/content/res/BaiduResources;->parseThemeValueLocal(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 323
    .local v0, exist:Ljava/lang/Boolean;
    iget-boolean v5, p0, Landroid/content/res/BaiduResources;->mAppMultiColorExist:Z

    if-nez v5, :cond_4

    .line 324
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Landroid/content/res/BaiduResources;->mAppMultiColorExist:Z

    .line 327
    .end local v0           #exist:Ljava/lang/Boolean;
    :cond_4
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    :cond_5
    sget-boolean v5, Landroid/content/res/BaiduResources;->sThemeExist:Z

    if-nez v5, :cond_6

    sget-boolean v5, Landroid/content/res/BaiduResources;->mIsYiValueExist:Z

    if-nez v5, :cond_6

    iget-boolean v5, p0, Landroid/content/res/BaiduResources;->mAppMultiColorExist:Z

    if-eqz v5, :cond_0

    .line 332
    :cond_6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 336
    const/4 v3, 0x0

    .line 338
    .local v3, result:Ljava/lang/Integer;
    sget-boolean v5, Landroid/content/res/BaiduResources;->sThemeExist:Z

    if-eqz v5, :cond_7

    if-ne v1, v9, :cond_7

    .line 339
    sget-object v5, Landroid/content/res/BaiduResources;->mAnColorHash:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #result:Ljava/lang/Integer;
    check-cast v3, Ljava/lang/Integer;

    .restart local v3       #result:Ljava/lang/Integer;
    goto/16 :goto_0

    .line 327
    .end local v3           #result:Ljava/lang/Integer;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 340
    .restart local v3       #result:Ljava/lang/Integer;
    :cond_7
    sget-boolean v5, Landroid/content/res/BaiduResources;->mIsYiValueExist:Z

    if-eqz v5, :cond_8

    if-ne v1, v10, :cond_8

    .line 341
    sget-object v5, Landroid/content/res/BaiduResources;->mYiColorHash:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #result:Ljava/lang/Integer;
    check-cast v3, Ljava/lang/Integer;

    .restart local v3       #result:Ljava/lang/Integer;
    goto/16 :goto_0

    .line 343
    :cond_8
    iget-boolean v5, p0, Landroid/content/res/BaiduResources;->mAppMultiColorExist:Z

    if-eqz v5, :cond_0

    if-lt p1, v11, :cond_0

    .line 344
    iget-object v5, p0, Landroid/content/res/BaiduResources;->mAppMultiColorHash:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #result:Ljava/lang/Integer;
    check-cast v3, Ljava/lang/Integer;

    .restart local v3       #result:Ljava/lang/Integer;
    goto/16 :goto_0
.end method

.method private getThemeConfig(I)Ljava/lang/Boolean;
    .locals 11
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 259
    ushr-int/lit8 v2, p1, 0x18

    .line 261
    .local v2, packageId:I
    if-eqz p1, :cond_0

    if-eq v2, v5, :cond_0

    const/4 v7, 0x5

    if-ne v2, v7, :cond_1

    :cond_0
    move-object v5, v6

    .line 291
    :goto_0
    return-object v5

    .line 265
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/res/BaiduResources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, entryName:Ljava/lang/String;
    iget-boolean v7, p0, Landroid/content/res/BaiduResources;->mAPPMultiParseConfig:Z

    if-nez v7, :cond_3

    const/high16 v7, 0x7000

    if-lt p1, v7, :cond_3

    .line 268
    invoke-virtual {p0, p1}, Landroid/content/res/BaiduResources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v3

    .line 269
    .local v3, packageName:Ljava/lang/String;
    iget-object v7, p0, Landroid/content/res/BaiduResources;->mAppMultiTmpConfig:Landroid/util/TypedValue;

    monitor-enter v7

    .line 270
    const/4 v8, 0x1

    :try_start_0
    iput-boolean v8, p0, Landroid/content/res/BaiduResources;->mAPPMultiParseConfig:Z

    .line 271
    const-string/jumbo v8, "res/values/configs.xml"

    iget-object v9, p0, Landroid/content/res/BaiduResources;->mAppMultiConfigHash:Ljava/util/HashMap;

    invoke-static {v3, v8, v9}, Landroid/content/res/BaiduResources;->parseThemeValueLocal(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v8

    iput-boolean v8, p0, Landroid/content/res/BaiduResources;->mAppMultiConfigExist:Z

    .line 273
    const-string v8, "com.android.contacts"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 274
    const-string v8, "com.baidu.dialpad"

    const-string/jumbo v9, "res/values/configs.xml"

    iget-object v10, p0, Landroid/content/res/BaiduResources;->mAppMultiConfigHash:Ljava/util/HashMap;

    invoke-static {v8, v9, v10}, Landroid/content/res/BaiduResources;->parseThemeValueLocal(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 276
    .local v1, exist:Ljava/lang/Boolean;
    iget-boolean v8, p0, Landroid/content/res/BaiduResources;->mAppMultiConfigExist:Z

    if-nez v8, :cond_2

    .line 277
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iput-boolean v8, p0, Landroid/content/res/BaiduResources;->mAppMultiConfigExist:Z

    .line 280
    .end local v1           #exist:Ljava/lang/Boolean;
    :cond_2
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    .end local v3           #packageName:Ljava/lang/String;
    :cond_3
    iget-boolean v7, p0, Landroid/content/res/BaiduResources;->mAppMultiConfigExist:Z

    if-eqz v7, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    move-object v5, v6

    .line 284
    goto :goto_0

    .line 280
    .restart local v3       #packageName:Ljava/lang/String;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 286
    .end local v3           #packageName:Ljava/lang/String;
    :cond_5
    iget-object v7, p0, Landroid/content/res/BaiduResources;->mAppMultiConfigHash:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 288
    .local v4, result:Ljava/lang/Integer;
    if-eqz v4, :cond_7

    .line 289
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v5, :cond_6

    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0

    :cond_6
    const/4 v5, 0x0

    goto :goto_1

    :cond_7
    move-object v5, v6

    .line 291
    goto :goto_0
.end method

.method public static parseThemeValue()Z
    .locals 25

    .prologue
    .line 352
    const-string/jumbo v16, "theme_values.xml"

    .line 353
    .local v16, paramString:Ljava/lang/String;
    const/4 v10, 0x0

    .line 354
    .local v10, inputStream:Ljava/io/InputStream;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "/data/data/com.baidu.thememanager.ui/files"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "framework-yi-res"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 356
    .local v17, path:Ljava/lang/String;
    const/16 v23, 0x1

    sput-boolean v23, Landroid/content/res/BaiduResources;->sParseTheme:Z

    .line 359
    :try_start_0
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 360
    .local v21, theme:Ljava/io/File;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->isDirectory()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 361
    new-instance v22, Ljava/io/File;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 362
    .local v22, themeFile:Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_4

    .line 363
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, v22

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v10           #inputStream:Ljava/io/InputStream;
    .local v11, inputStream:Ljava/io/InputStream;
    move-object v10, v11

    .line 373
    .end local v11           #inputStream:Ljava/io/InputStream;
    .end local v22           #themeFile:Ljava/io/File;
    .restart local v10       #inputStream:Ljava/io/InputStream;
    :cond_0
    sget-object v23, Landroid/content/res/BaiduResources;->mAnColorHash:Ljava/util/HashMap;

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_1

    .line 374
    sget-object v23, Landroid/content/res/BaiduResources;->mAnColorHash:Ljava/util/HashMap;

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->clear()V

    .line 377
    :cond_1
    sget-object v23, Landroid/content/res/BaiduResources;->mYiColorHash:Ljava/util/HashMap;

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_2

    .line 378
    sget-object v23, Landroid/content/res/BaiduResources;->mYiColorHash:Ljava/util/HashMap;

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->clear()V

    .line 381
    :cond_2
    if-eqz v10, :cond_a

    .line 383
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 385
    .local v3, builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 386
    .local v2, builder:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v2, v10}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v6

    .line 387
    .local v6, document:Lorg/w3c/dom/Document;
    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v19

    .line 388
    .local v19, root:Lorg/w3c/dom/Element;
    const-string v23, "Baidu-Theme"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 390
    .local v12, list:Lorg/w3c/dom/NodeList;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v23

    move/from16 v0, v23

    if-ge v9, v0, :cond_9

    .line 391
    invoke-interface {v12, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v18

    check-cast v18, Lorg/w3c/dom/Element;

    .line 392
    .local v18, personElement:Lorg/w3c/dom/Element;
    invoke-interface {v12, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    .line 393
    .local v14, node:Lorg/w3c/dom/Node;
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 394
    move-object v0, v14

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v8, v0

    .line 395
    .local v8, element:Lorg/w3c/dom/Element;
    const-string v23, "color"

    invoke-interface {v8}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 396
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v20

    .line 398
    .local v20, string:Ljava/lang/String;
    const-string v23, "name"

    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 400
    .local v13, name:Ljava/lang/String;
    const-string/jumbo v23, "package"

    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 402
    .local v15, package1:Ljava/lang/String;
    const/16 v23, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x10

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 403
    .local v4, col:Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 406
    .local v5, color:Ljava/lang/Integer;
    const-string v23, "android"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v23

    if-nez v23, :cond_6

    .line 407
    sget-object v23, Landroid/content/res/BaiduResources;->mAnColorHash:Ljava/util/HashMap;

    move-object/from16 v0, v23

    invoke-virtual {v0, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 390
    .end local v4           #col:Ljava/lang/Long;
    .end local v5           #color:Ljava/lang/Integer;
    .end local v8           #element:Lorg/w3c/dom/Element;
    .end local v13           #name:Ljava/lang/String;
    .end local v15           #package1:Ljava/lang/String;
    .end local v20           #string:Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 365
    .end local v2           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v6           #document:Lorg/w3c/dom/Document;
    .end local v9           #i:I
    .end local v12           #list:Lorg/w3c/dom/NodeList;
    .end local v14           #node:Lorg/w3c/dom/Node;
    .end local v18           #personElement:Lorg/w3c/dom/Element;
    .end local v19           #root:Lorg/w3c/dom/Element;
    .restart local v22       #themeFile:Ljava/io/File;
    :cond_4
    const/16 v23, 0x0

    .line 444
    .end local v21           #theme:Ljava/io/File;
    .end local v22           #themeFile:Ljava/io/File;
    :cond_5
    :goto_2
    return v23

    .line 368
    :catch_0
    move-exception v7

    .line 369
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 370
    const/16 v23, 0x0

    goto :goto_2

    .line 408
    .end local v7           #e:Ljava/io/IOException;
    .restart local v2       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3       #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v4       #col:Ljava/lang/Long;
    .restart local v5       #color:Ljava/lang/Integer;
    .restart local v6       #document:Lorg/w3c/dom/Document;
    .restart local v8       #element:Lorg/w3c/dom/Element;
    .restart local v9       #i:I
    .restart local v12       #list:Lorg/w3c/dom/NodeList;
    .restart local v13       #name:Ljava/lang/String;
    .restart local v14       #node:Lorg/w3c/dom/Node;
    .restart local v15       #package1:Ljava/lang/String;
    .restart local v18       #personElement:Lorg/w3c/dom/Element;
    .restart local v19       #root:Lorg/w3c/dom/Element;
    .restart local v20       #string:Ljava/lang/String;
    .restart local v21       #theme:Ljava/io/File;
    :cond_6
    :try_start_2
    const-string/jumbo v23, "yi"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v23

    if-nez v23, :cond_7

    .line 409
    sget-object v23, Landroid/content/res/BaiduResources;->mYiColorHash:Ljava/util/HashMap;

    move-object/from16 v0, v23

    invoke-virtual {v0, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_1

    .line 423
    .end local v2           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4           #col:Ljava/lang/Long;
    .end local v5           #color:Ljava/lang/Integer;
    .end local v6           #document:Lorg/w3c/dom/Document;
    .end local v8           #element:Lorg/w3c/dom/Element;
    .end local v9           #i:I
    .end local v12           #list:Lorg/w3c/dom/NodeList;
    .end local v13           #name:Ljava/lang/String;
    .end local v14           #node:Lorg/w3c/dom/Node;
    .end local v15           #package1:Ljava/lang/String;
    .end local v18           #personElement:Lorg/w3c/dom/Element;
    .end local v19           #root:Lorg/w3c/dom/Element;
    .end local v20           #string:Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 424
    .local v7, e:Lorg/xml/sax/SAXException;
    :try_start_3
    invoke-virtual {v7}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 425
    const/16 v23, 0x0

    .line 434
    if-eqz v10, :cond_5

    .line 435
    :try_start_4
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 437
    :catch_2
    move-exception v7

    .line 438
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 411
    .end local v7           #e:Ljava/io/IOException;
    .restart local v2       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3       #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v4       #col:Ljava/lang/Long;
    .restart local v5       #color:Ljava/lang/Integer;
    .restart local v6       #document:Lorg/w3c/dom/Document;
    .restart local v8       #element:Lorg/w3c/dom/Element;
    .restart local v9       #i:I
    .restart local v12       #list:Lorg/w3c/dom/NodeList;
    .restart local v13       #name:Ljava/lang/String;
    .restart local v14       #node:Lorg/w3c/dom/Node;
    .restart local v15       #package1:Ljava/lang/String;
    .restart local v18       #personElement:Lorg/w3c/dom/Element;
    .restart local v19       #root:Lorg/w3c/dom/Element;
    .restart local v20       #string:Ljava/lang/String;
    :cond_7
    :try_start_5
    sget-object v23, Landroid/content/res/BaiduResources;->mAnColorHash:Ljava/util/HashMap;

    move-object/from16 v0, v23

    invoke-virtual {v0, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_1

    .line 426
    .end local v2           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4           #col:Ljava/lang/Long;
    .end local v5           #color:Ljava/lang/Integer;
    .end local v6           #document:Lorg/w3c/dom/Document;
    .end local v8           #element:Lorg/w3c/dom/Element;
    .end local v9           #i:I
    .end local v12           #list:Lorg/w3c/dom/NodeList;
    .end local v13           #name:Ljava/lang/String;
    .end local v14           #node:Lorg/w3c/dom/Node;
    .end local v15           #package1:Ljava/lang/String;
    .end local v18           #personElement:Lorg/w3c/dom/Element;
    .end local v19           #root:Lorg/w3c/dom/Element;
    .end local v20           #string:Ljava/lang/String;
    :catch_3
    move-exception v7

    .line 427
    .local v7, e:Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_6
    invoke-virtual {v7}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 428
    const/16 v23, 0x0

    .line 434
    if-eqz v10, :cond_5

    .line 435
    :try_start_7
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    .line 437
    :catch_4
    move-exception v7

    .line 438
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 414
    .end local v7           #e:Ljava/io/IOException;
    .restart local v2       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3       #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v6       #document:Lorg/w3c/dom/Document;
    .restart local v8       #element:Lorg/w3c/dom/Element;
    .restart local v9       #i:I
    .restart local v12       #list:Lorg/w3c/dom/NodeList;
    .restart local v14       #node:Lorg/w3c/dom/Node;
    .restart local v18       #personElement:Lorg/w3c/dom/Element;
    .restart local v19       #root:Lorg/w3c/dom/Element;
    :cond_8
    :try_start_8
    const-string v23, "dimen"

    invoke-interface {v8}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_3

    .line 417
    const-string v23, "else"

    invoke-interface {v8}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Lorg/xml/sax/SAXException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    move-result v23

    if-eqz v23, :cond_3

    goto :goto_1

    .line 434
    .end local v8           #element:Lorg/w3c/dom/Element;
    .end local v14           #node:Lorg/w3c/dom/Node;
    .end local v18           #personElement:Lorg/w3c/dom/Element;
    :cond_9
    if-eqz v10, :cond_a

    .line 435
    :try_start_9
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 444
    .end local v2           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v6           #document:Lorg/w3c/dom/Document;
    .end local v9           #i:I
    .end local v12           #list:Lorg/w3c/dom/NodeList;
    .end local v19           #root:Lorg/w3c/dom/Element;
    :cond_a
    :goto_3
    const/16 v23, 0x1

    goto :goto_2

    .line 437
    .restart local v2       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3       #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v6       #document:Lorg/w3c/dom/Document;
    .restart local v9       #i:I
    .restart local v12       #list:Lorg/w3c/dom/NodeList;
    .restart local v19       #root:Lorg/w3c/dom/Element;
    :catch_5
    move-exception v7

    .line 438
    .restart local v7       #e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 429
    .end local v2           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v6           #document:Lorg/w3c/dom/Document;
    .end local v7           #e:Ljava/io/IOException;
    .end local v9           #i:I
    .end local v12           #list:Lorg/w3c/dom/NodeList;
    .end local v19           #root:Lorg/w3c/dom/Element;
    :catch_6
    move-exception v7

    .line 430
    .restart local v7       #e:Ljava/io/IOException;
    :try_start_a
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 431
    const/16 v23, 0x0

    .line 434
    if-eqz v10, :cond_5

    .line 435
    :try_start_b
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_2

    .line 437
    :catch_7
    move-exception v7

    .line 438
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 433
    .end local v7           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v23

    .line 434
    if-eqz v10, :cond_b

    .line 435
    :try_start_c
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 439
    :cond_b
    :goto_4
    throw v23

    .line 437
    :catch_8
    move-exception v7

    .line 438
    .restart local v7       #e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method

.method private static parseThemeValueLocal(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 28
    .parameter "packageName"
    .parameter "fileName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 449
    .local p2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v17, p1

    .line 450
    .local v17, paramString:Ljava/lang/String;
    const/4 v9, 0x0

    .line 451
    .local v9, inputStream:Ljava/io/InputStream;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "/data/data/com.baidu.thememanager.ui/files"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 452
    .local v18, path:Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "/system/etc/baidu/theme"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 454
    .local v16, ovlPath:Ljava/lang/String;
    :try_start_0
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 455
    .local v23, theme:Ljava/io/File;
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 456
    .local v14, ovlDir:Ljava/io/File;
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v26

    if-eqz v26, :cond_4

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->isDirectory()Z

    move-result v26

    if-eqz v26, :cond_4

    .line 457
    new-instance v24, Ljava/io/File;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 459
    .local v24, themeFile:Ljava/io/File;
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v26

    if-eqz v26, :cond_2

    .line 460
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, v24

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v9           #inputStream:Ljava/io/InputStream;
    .local v10, inputStream:Ljava/io/InputStream;
    move-object v9, v10

    .line 482
    .end local v10           #inputStream:Ljava/io/InputStream;
    .end local v24           #themeFile:Ljava/io/File;
    .restart local v9       #inputStream:Ljava/io/InputStream;
    :goto_0
    if-eqz v9, :cond_b

    .line 484
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 486
    .local v3, builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 487
    .local v2, builder:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v2, v9}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v5

    .line 488
    .local v5, document:Lorg/w3c/dom/Document;
    invoke-interface {v5}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v20

    .line 489
    .local v20, root:Lorg/w3c/dom/Element;
    const-string/jumbo v22, "resources"

    .line 490
    .local v22, tag:Ljava/lang/String;
    const-string v26, "color"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 491
    const-string v22, "color"

    .line 495
    :cond_0
    :goto_1
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 497
    .local v11, list:Lorg/w3c/dom/NodeList;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v26

    move/from16 v0, v26

    if-ge v8, v0, :cond_a

    .line 498
    invoke-interface {v11, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    check-cast v19, Lorg/w3c/dom/Element;

    .line 499
    .local v19, personElement:Lorg/w3c/dom/Element;
    invoke-interface {v11, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    .line 500
    .local v13, node:Lorg/w3c/dom/Node;
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    .line 501
    move-object v0, v13

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v7, v0

    .line 502
    .local v7, element:Lorg/w3c/dom/Element;
    const-string v26, "color"

    invoke-interface {v7}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_8

    .line 503
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v21

    .line 505
    .local v21, string:Ljava/lang/String;
    const-string v26, "name"

    move-object/from16 v0, v26

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    move-result-object v12

    .line 508
    .local v12, name:Ljava/lang/String;
    :try_start_2
    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 512
    .local v4, color:Ljava/lang/Integer;
    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 497
    .end local v4           #color:Ljava/lang/Integer;
    .end local v7           #element:Lorg/w3c/dom/Element;
    .end local v12           #name:Ljava/lang/String;
    .end local v21           #string:Ljava/lang/String;
    :cond_1
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 462
    .end local v2           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5           #document:Lorg/w3c/dom/Document;
    .end local v8           #i:I
    .end local v11           #list:Lorg/w3c/dom/NodeList;
    .end local v13           #node:Lorg/w3c/dom/Node;
    .end local v19           #personElement:Lorg/w3c/dom/Element;
    .end local v20           #root:Lorg/w3c/dom/Element;
    .end local v22           #tag:Ljava/lang/String;
    .restart local v24       #themeFile:Ljava/io/File;
    :cond_2
    const/16 v26, 0x0

    .line 551
    .end local v14           #ovlDir:Ljava/io/File;
    .end local v23           #theme:Ljava/io/File;
    .end local v24           #themeFile:Ljava/io/File;
    :cond_3
    :goto_4
    return v26

    .line 464
    .restart local v14       #ovlDir:Ljava/io/File;
    .restart local v23       #theme:Ljava/io/File;
    :cond_4
    :try_start_3
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v26

    if-eqz v26, :cond_6

    invoke-virtual {v14}, Ljava/io/File;->isDirectory()Z

    move-result v26

    if-eqz v26, :cond_6

    .line 466
    new-instance v15, Ljava/io/File;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 468
    .local v15, ovlFile:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v26

    if-eqz v26, :cond_5

    .line 469
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v15}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .end local v9           #inputStream:Ljava/io/InputStream;
    .restart local v10       #inputStream:Ljava/io/InputStream;
    move-object v9, v10

    .line 474
    .end local v10           #inputStream:Ljava/io/InputStream;
    .restart local v9       #inputStream:Ljava/io/InputStream;
    goto/16 :goto_0

    .line 471
    :cond_5
    const/16 v26, 0x0

    goto :goto_4

    .line 475
    .end local v15           #ovlFile:Ljava/io/File;
    :cond_6
    const/16 v26, 0x0

    goto :goto_4

    .line 477
    .end local v14           #ovlDir:Ljava/io/File;
    .end local v23           #theme:Ljava/io/File;
    :catch_0
    move-exception v6

    .line 478
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 479
    const/16 v26, 0x0

    goto :goto_4

    .line 492
    .end local v6           #e:Ljava/io/IOException;
    .restart local v2       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3       #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v5       #document:Lorg/w3c/dom/Document;
    .restart local v14       #ovlDir:Ljava/io/File;
    .restart local v20       #root:Lorg/w3c/dom/Element;
    .restart local v22       #tag:Ljava/lang/String;
    .restart local v23       #theme:Ljava/io/File;
    :cond_7
    :try_start_4
    const-string v26, "config"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 493
    const-string v22, "config"

    goto/16 :goto_1

    .line 513
    .restart local v7       #element:Lorg/w3c/dom/Element;
    .restart local v8       #i:I
    .restart local v11       #list:Lorg/w3c/dom/NodeList;
    .restart local v12       #name:Ljava/lang/String;
    .restart local v13       #node:Lorg/w3c/dom/Node;
    .restart local v19       #personElement:Lorg/w3c/dom/Element;
    .restart local v21       #string:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 514
    .local v6, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    goto :goto_3

    .line 530
    .end local v2           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5           #document:Lorg/w3c/dom/Document;
    .end local v6           #e:Ljava/lang/IllegalArgumentException;
    .end local v7           #element:Lorg/w3c/dom/Element;
    .end local v8           #i:I
    .end local v11           #list:Lorg/w3c/dom/NodeList;
    .end local v12           #name:Ljava/lang/String;
    .end local v13           #node:Lorg/w3c/dom/Node;
    .end local v19           #personElement:Lorg/w3c/dom/Element;
    .end local v20           #root:Lorg/w3c/dom/Element;
    .end local v21           #string:Ljava/lang/String;
    .end local v22           #tag:Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 531
    .local v6, e:Lorg/xml/sax/SAXException;
    :try_start_5
    invoke-virtual {v6}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 532
    const/16 v26, 0x0

    .line 541
    if-eqz v9, :cond_3

    .line 542
    :try_start_6
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    .line 544
    :catch_3
    move-exception v6

    .line 545
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 516
    .end local v6           #e:Ljava/io/IOException;
    .restart local v2       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3       #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v5       #document:Lorg/w3c/dom/Document;
    .restart local v7       #element:Lorg/w3c/dom/Element;
    .restart local v8       #i:I
    .restart local v11       #list:Lorg/w3c/dom/NodeList;
    .restart local v13       #node:Lorg/w3c/dom/Node;
    .restart local v19       #personElement:Lorg/w3c/dom/Element;
    .restart local v20       #root:Lorg/w3c/dom/Element;
    .restart local v22       #tag:Ljava/lang/String;
    :cond_8
    :try_start_7
    const-string v26, "dimen"

    invoke-interface {v7}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_1

    .line 519
    const-string v26, "config"

    invoke-interface {v7}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 521
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v21

    .line 523
    .restart local v21       #string:Ljava/lang/String;
    const-string v26, "name"

    move-object/from16 v0, v26

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 525
    .restart local v12       #name:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v25

    .line 526
    .local v25, value:Ljava/lang/Boolean;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    if-eqz v26, :cond_9

    const/16 v26, 0x1

    :goto_5
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_3

    .line 533
    .end local v2           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5           #document:Lorg/w3c/dom/Document;
    .end local v7           #element:Lorg/w3c/dom/Element;
    .end local v8           #i:I
    .end local v11           #list:Lorg/w3c/dom/NodeList;
    .end local v12           #name:Ljava/lang/String;
    .end local v13           #node:Lorg/w3c/dom/Node;
    .end local v19           #personElement:Lorg/w3c/dom/Element;
    .end local v20           #root:Lorg/w3c/dom/Element;
    .end local v21           #string:Ljava/lang/String;
    .end local v22           #tag:Ljava/lang/String;
    .end local v25           #value:Ljava/lang/Boolean;
    :catch_4
    move-exception v6

    .line 534
    .local v6, e:Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_8
    invoke-virtual {v6}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 535
    const/16 v26, 0x0

    .line 541
    if-eqz v9, :cond_3

    .line 542
    :try_start_9
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_4

    .line 544
    :catch_5
    move-exception v6

    .line 545
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 526
    .end local v6           #e:Ljava/io/IOException;
    .restart local v2       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3       #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v5       #document:Lorg/w3c/dom/Document;
    .restart local v7       #element:Lorg/w3c/dom/Element;
    .restart local v8       #i:I
    .restart local v11       #list:Lorg/w3c/dom/NodeList;
    .restart local v12       #name:Ljava/lang/String;
    .restart local v13       #node:Lorg/w3c/dom/Node;
    .restart local v19       #personElement:Lorg/w3c/dom/Element;
    .restart local v20       #root:Lorg/w3c/dom/Element;
    .restart local v21       #string:Ljava/lang/String;
    .restart local v22       #tag:Ljava/lang/String;
    .restart local v25       #value:Ljava/lang/Boolean;
    :cond_9
    const/16 v26, 0x0

    goto :goto_5

    .line 541
    .end local v7           #element:Lorg/w3c/dom/Element;
    .end local v12           #name:Ljava/lang/String;
    .end local v13           #node:Lorg/w3c/dom/Node;
    .end local v19           #personElement:Lorg/w3c/dom/Element;
    .end local v21           #string:Ljava/lang/String;
    .end local v25           #value:Ljava/lang/Boolean;
    :cond_a
    if-eqz v9, :cond_b

    .line 542
    :try_start_a
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 551
    .end local v2           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5           #document:Lorg/w3c/dom/Document;
    .end local v8           #i:I
    .end local v11           #list:Lorg/w3c/dom/NodeList;
    .end local v20           #root:Lorg/w3c/dom/Element;
    .end local v22           #tag:Ljava/lang/String;
    :cond_b
    :goto_6
    const/16 v26, 0x1

    goto/16 :goto_4

    .line 544
    .restart local v2       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3       #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v5       #document:Lorg/w3c/dom/Document;
    .restart local v8       #i:I
    .restart local v11       #list:Lorg/w3c/dom/NodeList;
    .restart local v20       #root:Lorg/w3c/dom/Element;
    .restart local v22       #tag:Ljava/lang/String;
    :catch_6
    move-exception v6

    .line 545
    .restart local v6       #e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 536
    .end local v2           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5           #document:Lorg/w3c/dom/Document;
    .end local v6           #e:Ljava/io/IOException;
    .end local v8           #i:I
    .end local v11           #list:Lorg/w3c/dom/NodeList;
    .end local v20           #root:Lorg/w3c/dom/Element;
    .end local v22           #tag:Ljava/lang/String;
    :catch_7
    move-exception v6

    .line 537
    .restart local v6       #e:Ljava/io/IOException;
    :try_start_b
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 538
    const/16 v26, 0x0

    .line 541
    if-eqz v9, :cond_3

    .line 542
    :try_start_c
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto/16 :goto_4

    .line 544
    :catch_8
    move-exception v6

    .line 545
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 540
    .end local v6           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v26

    .line 541
    if-eqz v9, :cond_c

    .line 542
    :try_start_d
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 546
    :cond_c
    :goto_7
    throw v26

    .line 544
    :catch_9
    move-exception v6

    .line 545
    .restart local v6       #e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7
.end method


# virtual methods
.method clearThemeValue(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "config"

    .prologue
    const/4 v3, 0x0

    .line 68
    iget-object v1, p0, Landroid/content/res/BaiduResources;->mAppMultiTmpValue:Landroid/util/TypedValue;

    if-eqz v1, :cond_1

    .line 69
    iget-object v2, p0, Landroid/content/res/BaiduResources;->mAppMultiTmpValue:Landroid/util/TypedValue;

    monitor-enter v2

    .line 70
    :try_start_0
    iget-object v1, p0, Landroid/content/res/BaiduResources;->mAppMultiColorHash:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/res/BaiduResources;->mAppMultiColorHash:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    iget-object v1, p0, Landroid/content/res/BaiduResources;->mAppMultiColorHash:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 73
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/res/BaiduResources;->mAppMultiParseColor:Z

    .line 74
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :cond_1
    iget-object v1, p0, Landroid/content/res/BaiduResources;->mAppMultiTmpConfig:Landroid/util/TypedValue;

    if-eqz v1, :cond_3

    .line 77
    iget-object v2, p0, Landroid/content/res/BaiduResources;->mAppMultiTmpConfig:Landroid/util/TypedValue;

    monitor-enter v2

    .line 78
    :try_start_1
    iget-object v1, p0, Landroid/content/res/BaiduResources;->mAppMultiConfigHash:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/content/res/BaiduResources;->mAppMultiConfigHash:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 79
    iget-object v1, p0, Landroid/content/res/BaiduResources;->mAppMultiConfigHash:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 81
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/res/BaiduResources;->mAPPMultiParseConfig:Z

    .line 82
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 85
    :cond_3
    invoke-static {}, Landroid/content/res/BaiduResources;->getSpreloadedcolorstatelists()Landroid/util/LongSparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 87
    if-nez p1, :cond_5

    .line 104
    :cond_4
    :goto_0
    return-void

    .line 74
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 82
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 90
    :cond_5
    iget v0, p1, Landroid/content/res/Configuration;->themeChanged:I

    .line 91
    .local v0, theme:I
    sget v1, Landroid/content/res/BaiduResources;->sThemeChanged:I

    if-eq v0, v1, :cond_4

    .line 93
    sput v0, Landroid/content/res/BaiduResources;->sThemeChanged:I

    .line 94
    sput-boolean v3, Landroid/content/res/BaiduResources;->sParseTheme:Z

    .line 95
    sput-boolean v3, Landroid/content/res/BaiduResources;->mHasParseYiValue:Z

    .line 97
    sget-object v1, Landroid/content/res/BaiduResources;->mAnColorHash:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 98
    sget-object v1, Landroid/content/res/BaiduResources;->mAnColorHash:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 101
    :cond_6
    sget-object v1, Landroid/content/res/BaiduResources;->mYiColorHash:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 102
    sget-object v1, Landroid/content/res/BaiduResources;->mYiColorHash:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method

.method public getBoolean(I)Z
    .locals 2
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 587
    invoke-direct {p0, p1}, Landroid/content/res/BaiduResources;->getThemeConfig(I)Ljava/lang/Boolean;

    move-result-object v0

    .line 588
    .local v0, result:Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 589
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 591
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    goto :goto_0
.end method

.method public getColor(I)I
    .locals 2
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 576
    invoke-direct {p0, p1}, Landroid/content/res/BaiduResources;->getThemeColor(I)Ljava/lang/Integer;

    move-result-object v0

    .line 577
    .local v0, color:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 578
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 581
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0
.end method

.method public getIconDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 250
    iget-object v2, p0, Landroid/content/res/BaiduResources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v2

    .line 251
    :try_start_0
    iget-object v0, p0, Landroid/content/res/BaiduResources;->mTmpValue:Landroid/util/TypedValue;

    .line 252
    .local v0, value:Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/BaiduResources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 253
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/BaiduResources;->loadDrawableBaidu(Landroid/util/TypedValue;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 254
    .end local v0           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public loadColorStateList(Landroid/util/TypedValue;I)Landroid/content/res/ColorStateList;
    .locals 3
    .parameter "value"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 564
    invoke-direct {p0, p2}, Landroid/content/res/BaiduResources;->getThemeColor(I)Ljava/lang/Integer;

    move-result-object v0

    .line 565
    .local v0, color:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 566
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 570
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_0
.end method

.method loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "value"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/BaiduResources;->loadDrawableBaidu(Landroid/util/TypedValue;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method loadDrawableBaidu(Landroid/util/TypedValue;IZ)Landroid/graphics/drawable/Drawable;
    .locals 22
    .parameter "value"
    .parameter "id"
    .parameter "isIcon"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 112
    const/16 v16, 0x0

    .line 113
    .local v16, isColorDrawable:Z
    move-object/from16 v0, p1

    iget v3, v0, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_0

    move-object/from16 v0, p1

    iget v3, v0, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_0

    .line 115
    const/16 v16, 0x1

    .line 117
    :cond_0
    if-eqz v16, :cond_1

    move-object/from16 v0, p1

    iget v3, v0, Landroid/util/TypedValue;->data:I

    int-to-long v0, v3

    move-wide/from16 v17, v0

    .line 120
    .local v17, key:J
    :goto_0
    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/BaiduResources;->mColorDrawableCache:Landroid/util/LongSparseArray;

    :goto_1
    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/BaiduResources;->getCachedDrawable(Landroid/util/LongSparseArray;J)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 122
    .local v12, dr:Landroid/graphics/drawable/Drawable;
    if-eqz v12, :cond_3

    move-object v13, v12

    .line 242
    .end local v12           #dr:Landroid/graphics/drawable/Drawable;
    .local v13, dr:Landroid/graphics/drawable/Drawable;
    :goto_2
    return-object v13

    .line 117
    .end local v13           #dr:Landroid/graphics/drawable/Drawable;
    .end local v17           #key:J
    :cond_1
    move-object/from16 v0, p1

    iget v3, v0, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v3, v3

    const/16 v6, 0x20

    shl-long/2addr v3, v6

    move-object/from16 v0, p1

    iget v6, v0, Landroid/util/TypedValue;->data:I

    int-to-long v6, v6

    or-long v17, v3, v6

    goto :goto_0

    .line 120
    .restart local v17       #key:J
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/BaiduResources;->mDrawableCache:Landroid/util/LongSparseArray;

    goto :goto_1

    .line 126
    .restart local v12       #dr:Landroid/graphics/drawable/Drawable;
    :cond_3
    if-eqz v16, :cond_4

    .line 127
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/res/BaiduResources;->getThemeColor(I)Ljava/lang/Integer;

    move-result-object v10

    .line 128
    .local v10, color:Ljava/lang/Integer;
    if-eqz v10, :cond_4

    .line 129
    new-instance v12, Landroid/graphics/drawable/ColorDrawable;

    .end local v12           #dr:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v12, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 134
    .end local v10           #color:Ljava/lang/Integer;
    .restart local v12       #dr:Landroid/graphics/drawable/Drawable;
    :cond_4
    if-nez v12, :cond_5

    .line 135
    if-eqz v16, :cond_7

    invoke-static {}, Landroid/content/res/BaiduResources;->getSpreloadedcolordrawables()Landroid/util/LongSparseArray;

    move-result-object v3

    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable$ConstantState;

    move-object v11, v3

    .line 139
    .local v11, cs:Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_3
    if-eqz v11, :cond_8

    .line 140
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 198
    .end local v11           #cs:Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_5
    :goto_4
    if-eqz v12, :cond_6

    .line 199
    move-object/from16 v0, p1

    iget v3, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v12, v3}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 200
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v11

    .line 201
    .restart local v11       #cs:Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v11, :cond_6

    .line 202
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/content/res/BaiduResources;->mPreloading:Z

    if-eqz v3, :cond_f

    .line 203
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v9

    .line 204
    .local v9, changingConfigs:I
    if-eqz v16, :cond_d

    .line 205
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    const-string v6, "drawable"

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v3, v4, v6}, Landroid/content/res/BaiduResources;->verifyPreloadConfig(IIILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 206
    invoke-static {}, Landroid/content/res/BaiduResources;->getSpreloadedcolordrawables()Landroid/util/LongSparseArray;

    move-result-object v3

    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .end local v9           #changingConfigs:I
    .end local v11           #cs:Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_6
    :goto_5
    move-object v13, v12

    .line 242
    .end local v12           #dr:Landroid/graphics/drawable/Drawable;
    .restart local v13       #dr:Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .line 135
    .end local v13           #dr:Landroid/graphics/drawable/Drawable;
    .restart local v12       #dr:Landroid/graphics/drawable/Drawable;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/BaiduResources;->getsPreloadedDrawables()[Landroid/util/LongSparseArray;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/content/res/BaiduResources;->getmConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    aget-object v3, v3, v4

    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable$ConstantState;

    move-object v11, v3

    goto :goto_3

    .line 142
    .restart local v11       #cs:Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_8
    move-object/from16 v0, p1

    iget v3, v0, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_9

    move-object/from16 v0, p1

    iget v3, v0, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_9

    .line 144
    new-instance v12, Landroid/graphics/drawable/ColorDrawable;

    .end local v12           #dr:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p1

    iget v3, v0, Landroid/util/TypedValue;->data:I

    invoke-direct {v12, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 147
    .restart local v12       #dr:Landroid/graphics/drawable/Drawable;
    :cond_9
    if-nez v12, :cond_5

    .line 148
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v3, :cond_a

    .line 149
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resource is not a Drawable (color or path): "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 153
    :cond_a
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 155
    .local v5, file:Ljava/lang/String;
    const-string v3, ".xml"

    invoke-virtual {v5, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 156
    const-wide/16 v3, 0x2000

    invoke-static {v3, v4, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 158
    :try_start_0
    move-object/from16 v0, p1

    iget v3, v0, Landroid/util/TypedValue;->assetCookie:I

    const-string v4, "drawable"

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v5, v1, v3, v4}, Landroid/content/res/BaiduResources;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v21

    .line 160
    .local v21, rp:Landroid/content/res/XmlResourceParser;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 161
    invoke-interface/range {v21 .. v21}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    const-wide/16 v3, 0x2000

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_4

    .line 162
    .end local v21           #rp:Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v14

    .line 163
    .local v14, e:Ljava/lang/Exception;
    const-wide/16 v3, 0x2000

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 164
    new-instance v20, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from drawable resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 166
    .local v20, rnf:Landroid/content/res/Resources$NotFoundException;
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 167
    throw v20

    .line 172
    .end local v14           #e:Ljava/lang/Exception;
    .end local v20           #rnf:Landroid/content/res/Resources$NotFoundException;
    :cond_b
    const-wide/16 v3, 0x2000

    invoke-static {v3, v4, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 174
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/BaiduResources;->mAssets:Landroid/content/res/AssetManager;

    check-cast v3, Landroid/content/res/BaiduAssetManager;

    const/4 v7, 0x2

    move-object/from16 v4, p1

    move/from16 v6, p2

    move/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Landroid/content/res/BaiduAssetManager;->openNonAsset(Landroid/util/TypedValue;Ljava/lang/String;IIZ)Ljava/io/InputStream;

    move-result-object v15

    .line 180
    .local v15, is:Ljava/io/InputStream;
    if-eqz v15, :cond_c

    .line 181
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v15, v5, v3}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 182
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 192
    :cond_c
    const-wide/16 v3, 0x2000

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_4

    .line 185
    .end local v15           #is:Ljava/io/InputStream;
    :catch_1
    move-exception v14

    .line 186
    .restart local v14       #e:Ljava/lang/Exception;
    const-wide/16 v3, 0x2000

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 187
    new-instance v20, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from drawable resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 189
    .restart local v20       #rnf:Landroid/content/res/Resources$NotFoundException;
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 190
    throw v20

    .line 209
    .end local v5           #file:Ljava/lang/String;
    .end local v14           #e:Ljava/lang/Exception;
    .end local v20           #rnf:Landroid/content/res/Resources$NotFoundException;
    .restart local v9       #changingConfigs:I
    :cond_d
    sget v3, Landroid/content/res/BaiduResources;->LAYOUT_DIR_CONFIG:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    const-string v6, "drawable"

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v3, v4, v6}, Landroid/content/res/BaiduResources;->verifyPreloadConfig(IIILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 211
    sget v3, Landroid/content/res/BaiduResources;->LAYOUT_DIR_CONFIG:I

    and-int/2addr v3, v9

    if-nez v3, :cond_e

    .line 215
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/BaiduResources;->getsPreloadedDrawables()[Landroid/util/LongSparseArray;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 216
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/BaiduResources;->getsPreloadedDrawables()[Landroid/util/LongSparseArray;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto/16 :goto_5

    .line 220
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/BaiduResources;->getsPreloadedDrawables()[Landroid/util/LongSparseArray;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/content/res/BaiduResources;->getmConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    aget-object v19, v3, v4

    .line 222
    .local v19, preloads:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    move-object/from16 v0, v19

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto/16 :goto_5

    .line 227
    .end local v9           #changingConfigs:I
    .end local v19           #preloads:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/BaiduResources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v4

    .line 231
    if-eqz v16, :cond_10

    .line 232
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/BaiduResources;->mColorDrawableCache:Landroid/util/LongSparseArray;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v11}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 237
    :goto_6
    monitor-exit v4

    goto/16 :goto_5

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 235
    :cond_10
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/BaiduResources;->mDrawableCache:Landroid/util/LongSparseArray;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v11}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 1
    .parameter "config"
    .parameter "metrics"
    .parameter "compat"

    .prologue
    .line 600
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 601
    invoke-virtual {p0}, Landroid/content/res/BaiduResources;->getmConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-static {v0}, Landroid/content/res/BaiduAssetManager;->setDensityDpi(I)V

    .line 602
    invoke-virtual {p0, p1}, Landroid/content/res/BaiduResources;->clearThemeValue(Landroid/content/res/Configuration;)V

    .line 603
    return-void
.end method
