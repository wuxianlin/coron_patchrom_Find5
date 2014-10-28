.class Landroid/app/ActivityThread$BaiduInjector;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaiduInjector"
.end annotation


# static fields
.field static sMultiThemeChanges:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    sput v0, Landroid/app/ActivityThread$BaiduInjector;->sMultiThemeChanges:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static lockAppChannelNumberBaidu(Landroid/app/ActivityThread;)V
    .locals 5
    .parameter "at"

    .prologue
    .line 192
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getmResourcesManager()Landroid/app/ResourcesManager;

    move-result-object v3

    iget-object v3, v3, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 194
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/content/res/ResourcesKey;Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 195
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 196
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/content/res/ResourcesKey;Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Resources;

    .line 197
    .local v2, r:Landroid/content/res/Resources;
    if-eqz v2, :cond_0

    .line 198
    :try_start_0
    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    check-cast v3, Landroid/content/res/BaiduAssetManager;

    iget-object v4, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/BaiduAssetManager;->setPackageName(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    check-cast v3, Landroid/content/res/BaiduAssetManager;

    iget-object v4, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/BaiduAssetManager;->setContext(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v3

    goto :goto_0

    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/content/res/ResourcesKey;Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;>;"
    .end local v2           #r:Landroid/content/res/Resources;
    :cond_1
    return-void
.end method

.method static multiTheme_freeCanvas(Landroid/app/ActivityThread;)V
    .locals 1
    .parameter "thread"

    .prologue
    .line 183
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getmResourcesManager()Landroid/app/ResourcesManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/ActivityThread;->getmResourcesManager()Landroid/app/ResourcesManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->themeChanged:I

    if-eqz v0, :cond_0

    .line 184
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 185
    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    .line 187
    :cond_0
    return-void
.end method

.method static final multiTheme_refreshFontCache(Landroid/content/ComponentCallbacks2;)V
    .locals 3
    .parameter "cb"

    .prologue
    .line 168
    sget v1, Landroid/app/ActivityThread$BaiduInjector;->sMultiThemeChanges:I

    const/high16 v2, -0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 169
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    .line 170
    check-cast p0, Landroid/content/ContextWrapper;

    .end local p0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 171
    .local v0, context:Landroid/content/Context;
    instance-of v1, v0, Landroid/app/ContextImpl;

    if-eqz v1, :cond_0

    .line 176
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 177
    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    .line 181
    :cond_0
    return-void
.end method
