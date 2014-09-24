.class public Landroid/view/ViewConfiguration;
.super Ljava/lang/Object;
.source "ViewConfiguration.java"


# static fields
.field private static final DEFAULT_LONG_PRESS_TIMEOUT:I = 0x1f4

.field private static final DOUBLE_TAP_MIN_TIME:I = 0x28

.field private static final DOUBLE_TAP_SLOP:I = 0x64

.field private static final DOUBLE_TAP_TIMEOUT:I = 0x12c

.field private static final DOUBLE_TAP_TOUCH_SLOP:I = 0x8

.field private static final EDGE_SLOP:I = 0xc

.field private static final FADING_EDGE_LENGTH:I = 0xc

.field private static final GLOBAL_ACTIONS_KEY_TIMEOUT:I = 0x1f4

.field private static final HOVER_TAP_SLOP:I = 0x14

.field private static final HOVER_TAP_TIMEOUT:I = 0x96

.field private static final JUMP_TAP_TIMEOUT:I = 0x1f4

.field private static final KEY_REPEAT_DELAY:I = 0x32

.field private static final MAXIMUM_DRAWING_CACHE_SIZE:I = 0x177000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MAXIMUM_FLING_VELOCITY:I = 0x1f40

.field private static final MINIMUM_FLING_VELOCITY:I = 0x32

.field private static final OVERFLING_DISTANCE:I = 0x6

.field private static final OVERSCROLL_DISTANCE:I = 0x0

.field private static final PAGING_TOUCH_SLOP:I = 0x10

.field private static final PRESSED_STATE_DURATION:I = 0x40

.field private static final SCROLL_BAR_DEFAULT_DELAY:I = 0x12c

.field private static final SCROLL_BAR_FADE_DURATION:I = 0xfa

.field private static final SCROLL_BAR_SIZE:I = 0xa

.field private static final SCROLL_FRICTION:F = 0.015f

.field private static final SEND_RECURRING_ACCESSIBILITY_EVENTS_INTERVAL_MILLIS:J = 0x64L

.field private static final TAP_TIMEOUT:I = 0xb4

.field private static final TOUCH_SLOP:I = 0x8

.field private static final WINDOW_TOUCH_SLOP:I = 0x10

.field private static final ZOOM_CONTROLS_TIMEOUT:I = 0xbb8

.field static final sConfigurations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/ViewConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDoubleTapSlop:I

.field private final mDoubleTapTouchSlop:I

.field private final mEdgeSlop:I

.field private final mFadingEdgeLength:I

.field private final mFadingMarqueeEnabled:Z

.field private final mMaximumDrawingCacheSize:I

.field private final mMaximumFlingVelocity:I

.field private final mMinimumFlingVelocity:I

.field private final mOverflingDistance:I

.field private final mOverscrollDistance:I

.field private final mPagingTouchSlop:I

.field private final mScrollbarSize:I

.field private final mTouchSlop:I

.field private final mWindowTouchSlop:I

.field private sHasHwMenuKey:Z

.field private sHasPermanentMenuKey:Z

.field private sHasPermanentMenuKeySet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 235
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v2, 0x10

    const/16 v0, 0xc

    const/16 v1, 0x8

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput v0, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    .line 244
    iput v0, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    .line 245
    const/16 v0, 0x32

    iput v0, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    .line 246
    const/16 v0, 0x1f40

    iput v0, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    .line 247
    const/16 v0, 0xa

    iput v0, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    .line 248
    iput v1, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    .line 249
    iput v1, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    .line 250
    iput v2, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    .line 251
    const/16 v0, 0x64

    iput v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    .line 252
    iput v2, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    .line 254
    const v0, 0x177000

    iput v0, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    .line 255
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    .line 256
    const/4 v0, 0x6

    iput v0, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    .line 258
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 17
    .parameter "context"

    .prologue
    .line 270
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 271
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewConfiguration;->mContext:Landroid/content/Context;

    .line 272
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 273
    .local v10, res:Landroid/content/res/Resources;
    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 274
    .local v9, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 275
    .local v3, config:Landroid/content/res/Configuration;
    iget v4, v9, Landroid/util/DisplayMetrics;->density:F

    .line 277
    .local v4, density:F
    const/4 v15, 0x4

    invoke-virtual {v3, v15}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 278
    const/high16 v15, 0x3fc0

    mul-float v12, v4, v15

    .line 283
    .local v12, sizeAndDensity:F
    :goto_0
    const/high16 v15, 0x4140

    mul-float/2addr v15, v12

    const/high16 v16, 0x3f00

    add-float v15, v15, v16

    float-to-int v15, v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    .line 284
    const/high16 v15, 0x4140

    mul-float/2addr v15, v12

    const/high16 v16, 0x3f00

    add-float v15, v15, v16

    float-to-int v15, v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    .line 285
    const/high16 v15, 0x4248

    mul-float/2addr v15, v4

    const/high16 v16, 0x3f00

    add-float v15, v15, v16

    float-to-int v15, v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    .line 286
    const/high16 v15, 0x45fa

    mul-float/2addr v15, v4

    const/high16 v16, 0x3f00

    add-float v15, v15, v16

    float-to-int v15, v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    .line 287
    const/high16 v15, 0x4120

    mul-float/2addr v15, v4

    const/high16 v16, 0x3f00

    add-float v15, v15, v16

    float-to-int v15, v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    .line 288
    const/high16 v15, 0x42c8

    mul-float/2addr v15, v12

    const/high16 v16, 0x3f00

    add-float v15, v15, v16

    float-to-int v15, v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    .line 289
    const/high16 v15, 0x4180

    mul-float/2addr v15, v12

    const/high16 v16, 0x3f00

    add-float v15, v15, v16

    float-to-int v15, v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    .line 292
    const-string/jumbo v15, "window"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/WindowManager;

    .line 293
    .local v13, win:Landroid/view/WindowManager;
    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 294
    .local v6, display:Landroid/view/Display;
    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    .line 295
    .local v11, size:Landroid/graphics/Point;
    invoke-virtual {v6, v11}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 296
    iget v15, v11, Landroid/graphics/Point;->x:I

    mul-int/lit8 v15, v15, 0x4

    iget v0, v11, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    mul-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    .line 298
    const/4 v15, 0x0

    mul-float/2addr v15, v12

    const/high16 v16, 0x3f00

    add-float v15, v15, v16

    float-to-int v15, v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    .line 299
    const/high16 v15, 0x40c0

    mul-float/2addr v15, v12

    const/high16 v16, 0x3f00

    add-float v15, v15, v16

    float-to-int v15, v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    .line 301
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    if-nez v15, :cond_0

    .line 302
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v14

    .line 304
    .local v14, wm:Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v14}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v15

    if-nez v15, :cond_2

    const/4 v15, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    .line 305
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :goto_2
    const v15, 0x111004d

    invoke-virtual {v10, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 311
    .local v8, hasNavBar:Z
    const v15, 0x10e0049

    invoke-virtual {v10, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 313
    .local v5, deviceKeys:I
    const/4 v2, 0x4

    .line 314
    .local v2, KEY_MASK_MENU:I
    if-nez v8, :cond_3

    and-int/lit8 v15, v5, 0x4

    if-eqz v15, :cond_3

    const/4 v15, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/view/ViewConfiguration;->sHasHwMenuKey:Z

    .line 317
    .end local v2           #KEY_MASK_MENU:I
    .end local v5           #deviceKeys:I
    .end local v8           #hasNavBar:Z
    .end local v14           #wm:Landroid/view/IWindowManager;
    :cond_0
    const v15, 0x1110014

    invoke-virtual {v10, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    .line 319
    const v15, 0x1050008

    invoke-virtual {v10, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    .line 321
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    mul-int/lit8 v15, v15, 0x2

    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    .line 323
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    .line 324
    return-void

    .line 280
    .end local v6           #display:Landroid/view/Display;
    .end local v11           #size:Landroid/graphics/Point;
    .end local v12           #sizeAndDensity:F
    .end local v13           #win:Landroid/view/WindowManager;
    :cond_1
    move v12, v4

    .restart local v12       #sizeAndDensity:F
    goto/16 :goto_0

    .line 304
    .restart local v6       #display:Landroid/view/Display;
    .restart local v11       #size:Landroid/graphics/Point;
    .restart local v13       #win:Landroid/view/WindowManager;
    .restart local v14       #wm:Landroid/view/IWindowManager;
    :cond_2
    const/4 v15, 0x0

    goto :goto_1

    .line 306
    :catch_0
    move-exception v7

    .line 307
    .local v7, ex:Landroid/os/RemoteException;
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    goto :goto_2

    .line 314
    .end local v7           #ex:Landroid/os/RemoteException;
    .restart local v2       #KEY_MASK_MENU:I
    .restart local v5       #deviceKeys:I
    .restart local v8       #hasNavBar:Z
    :cond_3
    const/4 v15, 0x0

    goto :goto_3
.end method

.method public static get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
    .locals 5
    .parameter "context"

    .prologue
    .line 334
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 335
    .local v2, metrics:Landroid/util/DisplayMetrics;
    const/high16 v3, 0x42c8

    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 337
    .local v1, density:I
    sget-object v3, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewConfiguration;

    .line 338
    .local v0, configuration:Landroid/view/ViewConfiguration;
    if-nez v0, :cond_0

    .line 339
    new-instance v0, Landroid/view/ViewConfiguration;

    .end local v0           #configuration:Landroid/view/ViewConfiguration;
    invoke-direct {v0, p0}, Landroid/view/ViewConfiguration;-><init>(Landroid/content/Context;)V

    .line 340
    .restart local v0       #configuration:Landroid/view/ViewConfiguration;
    sget-object v3, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 343
    :cond_0
    return-object v0
.end method

.method public static getDoubleTapMinTime()I
    .locals 1

    .prologue
    .line 462
    const/16 v0, 0x28

    return v0
.end method

.method public static getDoubleTapSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 547
    const/16 v0, 0x64

    return v0
.end method

.method public static getDoubleTapTimeout()I
    .locals 1

    .prologue
    .line 451
    const/16 v0, 0x12c

    return v0
.end method

.method public static getEdgeSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 493
    const/16 v0, 0xc

    return v0
.end method

.method public static getFadingEdgeLength()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 386
    const/16 v0, 0xc

    return v0
.end method

.method public static getGlobalActionKeyTimeout()J
    .locals 2

    .prologue
    .line 682
    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method public static getHoverTapSlop()I
    .locals 1

    .prologue
    .line 482
    const/16 v0, 0x14

    return v0
.end method

.method public static getHoverTapTimeout()I
    .locals 1

    .prologue
    .line 472
    const/16 v0, 0x96

    return v0
.end method

.method public static getJumpTapTimeout()I
    .locals 1

    .prologue
    .line 442
    const/16 v0, 0x1f4

    return v0
.end method

.method public static getKeyRepeatDelay()I
    .locals 1

    .prologue
    .line 424
    const/16 v0, 0x32

    return v0
.end method

.method public static getKeyRepeatTimeout()I
    .locals 1

    .prologue
    .line 417
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    return v0
.end method

.method public static getLongPressTimeout()I
    .locals 2

    .prologue
    .line 409
    const-string v0, "long_press_timeout"

    const/16 v1, 0x1f4

    invoke-static {v0, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMaximumDrawingCacheSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 635
    const v0, 0x177000

    return v0
.end method

.method public static getMaximumFlingVelocity()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 615
    const/16 v0, 0x1f40

    return v0
.end method

.method public static getMinimumFlingVelocity()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 598
    const/16 v0, 0x32

    return v0
.end method

.method public static getPressedStateDuration()I
    .locals 1

    .prologue
    .line 401
    const/16 v0, 0x40

    return v0
.end method

.method public static getScrollBarFadeDuration()I
    .locals 1

    .prologue
    .line 369
    const/16 v0, 0xfa

    return v0
.end method

.method public static getScrollBarSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 354
    const/16 v0, 0xa

    return v0
.end method

.method public static getScrollDefaultDelay()I
    .locals 1

    .prologue
    .line 376
    const/16 v0, 0x12c

    return v0
.end method

.method public static getScrollFriction()F
    .locals 1

    .prologue
    .line 692
    const v0, 0x3c75c28f

    return v0
.end method

.method public static getSendRecurringAccessibilityEventsInterval()J
    .locals 2

    .prologue
    .line 568
    const-wide/16 v0, 0x64

    return-wide v0
.end method

.method public static getTapTimeout()I
    .locals 1

    .prologue
    .line 433
    const/16 v0, 0xb4

    return v0
.end method

.method public static getTouchSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 511
    const/16 v0, 0x8

    return v0
.end method

.method public static getWindowTouchSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 580
    const/16 v0, 0x10

    return v0
.end method

.method public static getZoomControlsTimeout()J
    .locals 2

    .prologue
    .line 671
    const-wide/16 v0, 0xbb8

    return-wide v0
.end method


# virtual methods
.method public getScaledDoubleTapSlop()I
    .locals 1

    .prologue
    .line 555
    iget v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    return v0
.end method

.method public getScaledDoubleTapTouchSlop()I
    .locals 1

    .prologue
    .line 527
    iget v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    return v0
.end method

.method public getScaledEdgeSlop()I
    .locals 1

    .prologue
    .line 501
    iget v0, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    return v0
.end method

.method public getScaledFadingEdgeLength()I
    .locals 1

    .prologue
    .line 393
    iget v0, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    return v0
.end method

.method public getScaledMaximumDrawingCacheSize()I
    .locals 1

    .prologue
    .line 644
    iget v0, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    return v0
.end method

.method public getScaledMaximumFlingVelocity()I
    .locals 1

    .prologue
    .line 622
    iget v0, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    return v0
.end method

.method public getScaledMinimumFlingVelocity()I
    .locals 1

    .prologue
    .line 605
    iget v0, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    return v0
.end method

.method public getScaledOverflingDistance()I
    .locals 1

    .prologue
    .line 660
    iget v0, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    return v0
.end method

.method public getScaledOverscrollDistance()I
    .locals 1

    .prologue
    .line 652
    iget v0, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    return v0
.end method

.method public getScaledPagingTouchSlop()I
    .locals 1

    .prologue
    .line 535
    iget v0, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    return v0
.end method

.method public getScaledScrollBarSize()I
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    return v0
.end method

.method public getScaledTouchSlop()I
    .locals 1

    .prologue
    .line 518
    iget v0, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    return v0
.end method

.method public getScaledWindowTouchSlop()I
    .locals 1

    .prologue
    .line 588
    iget v0, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    return v0
.end method

.method public hasPermanentMenuKey()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 711
    iget-object v5, p0, Landroid/view/ViewConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "hardware_keys_disable"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_0

    move v2, v3

    .line 714
    .local v2, hardwareKeysDisable:Z
    :goto_0
    iget-object v5, p0, Landroid/view/ViewConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "force_show_overflow_menu"

    iget-boolean v5, p0, Landroid/view/ViewConfiguration;->sHasHwMenuKey:Z

    if-eqz v5, :cond_1

    move v5, v4

    :goto_1
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_2

    move v1, v3

    .line 717
    .local v1, forceShowMenu:Z
    :goto_2
    iget-object v5, p0, Landroid/view/ViewConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "emulate_hw_menu_key"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_3

    move v0, v3

    .line 720
    .local v0, emulateHwMenuKey:Z
    :goto_3
    if-eqz v1, :cond_4

    iget-boolean v5, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    if-eqz v5, :cond_4

    if-nez v2, :cond_4

    .line 726
    :goto_4
    return v4

    .end local v0           #emulateHwMenuKey:Z
    .end local v1           #forceShowMenu:Z
    .end local v2           #hardwareKeysDisable:Z
    :cond_0
    move v2, v4

    .line 711
    goto :goto_0

    .restart local v2       #hardwareKeysDisable:Z
    :cond_1
    move v5, v3

    .line 714
    goto :goto_1

    :cond_2
    move v1, v4

    goto :goto_2

    .restart local v1       #forceShowMenu:Z
    :cond_3
    move v0, v4

    .line 717
    goto :goto_3

    .line 723
    .restart local v0       #emulateHwMenuKey:Z
    :cond_4
    if-eqz v0, :cond_5

    move v4, v3

    .line 724
    goto :goto_4

    .line 726
    :cond_5
    iget-boolean v4, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    goto :goto_4
.end method

.method public isFadingMarqueeEnabled()Z
    .locals 1

    .prologue
    .line 734
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    return v0
.end method
