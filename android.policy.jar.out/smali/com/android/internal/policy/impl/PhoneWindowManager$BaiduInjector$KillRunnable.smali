.class Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$KillRunnable;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KillRunnable"
.end annotation


# instance fields
.field public mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field public mTask:Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$TaskDescription;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x1

    .line 5449
    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->getBackLongPressBehavior()I
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->access$invoke-getBackLongPressBehavior-0d9dab()I

    move-result v0

    .line 5450
    .local v0, behavior:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$KillRunnable;->mTask:Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$TaskDescription;

    if-nez v4, :cond_4

    move v1, v3

    .line 5451
    .local v1, ifHome:Z
    :goto_0
    if-eq v0, v6, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$KillRunnable;->mTask:Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$TaskDescription;

    if-eqz v4, :cond_0

    .line 5452
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$KillRunnable;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$KillRunnable;->mTask:Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$TaskDescription;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->killTask(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$TaskDescription;)V
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->access$invoke-killTask-b88efb(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$TaskDescription;)V

    .line 5454
    :cond_0
    if-ne v0, v3, :cond_1

    if-nez v1, :cond_2

    :cond_1
    if-ne v0, v6, :cond_3

    .line 5455
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5456
    .local v2, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5457
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$KillRunnable;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 5458
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$KillRunnable;->mTask:Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$TaskDescription;

    .line 5460
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    return-void

    .line 5450
    .end local v1           #ifHome:Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method
