.class Lcom/android/server/power/ShutdownThread$BaiduInjector;
.super Ljava/lang/Object;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaiduInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createRebootDialogBaidu(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 247
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$sget-mReboot-7ffdb3()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$sget-mRebootSafeMode-6a6402()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, #android:drawable@ic_dialog_alert#t

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, #android:string@reboot#t

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, #android:array@shutdown_reboot_options#t

    const/4 v2, 0x0

    new-instance v3, Lcom/android/server/power/ShutdownThread$BaiduInjector$1RebootClickListener;

    invoke-direct {v3, p0}, Lcom/android/server/power/ShutdownThread$BaiduInjector$1RebootClickListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, #android:string@yes#t

    new-instance v2, Lcom/android/server/power/ShutdownThread$BaiduInjector$1PositiveClickListener;

    invoke-direct {v2, p0}, Lcom/android/server/power/ShutdownThread$BaiduInjector$1PositiveClickListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, #android:string@no#t

    new-instance v2, Lcom/android/server/power/ShutdownThread$BaiduInjector$1NegativeClickListener;

    invoke-direct {v2}, Lcom/android/server/power/ShutdownThread$BaiduInjector$1NegativeClickListener;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$sput-sConfirmDialog-38d6d6(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method static rebootProgressDialogBaidu(Landroid/content/Context;Landroid/app/ProgressDialog;)V
    .locals 1
    .parameter "context"
    .parameter "pd"

    .prologue
    .line 216
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$sget-mReboot-7ffdb3()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    const v0, #android:string@reboot#t

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 218
    const v0, #android:string@reboot_progress#t

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 220
    :cond_0
    return-void
.end method
