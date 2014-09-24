.class Lcom/android/server/am/ActivityManagerService$BaiduInjector;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaiduInjector"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static broadcastConfigTheme(Lcom/android/server/am/ActivityManagerService;I)V
    .locals 16
    .parameter "activityManagerService"
    .parameter "changes"

    .prologue
    .line 343
    const/high16 v0, -0x8000

    and-int v0, v0, p1

    if-eqz v0, :cond_0

    .line 344
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    const-string v0, "android.intent.action.THEME_CHANGED"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget v13, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v14, 0x3e8

    const/4 v15, 0x0

    move-object/from16 v0, p0

    #calls: Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZIII)I
    invoke-static/range {v0 .. v15}, Lcom/android/server/am/ActivityManagerService;->access$100(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZIII)I

    .line 349
    :cond_0
    return-void
.end method
