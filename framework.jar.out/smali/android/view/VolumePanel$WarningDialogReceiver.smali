.class Landroid/view/VolumePanel$WarningDialogReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VolumePanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WarningDialogReceiver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDialog:Landroid/app/Dialog;

.field private final mVolumePanel:Landroid/view/VolumePanel;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/Dialog;Landroid/view/VolumePanel;)V
    .locals 2
    .parameter "context"
    .parameter "dialog"
    .parameter "volumePanel"

    .prologue
    .line 251
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 252
    iput-object p1, p0, Landroid/view/VolumePanel$WarningDialogReceiver;->mContext:Landroid/content/Context;

    .line 253
    iput-object p2, p0, Landroid/view/VolumePanel$WarningDialogReceiver;->mDialog:Landroid/app/Dialog;

    .line 254
    iput-object p3, p0, Landroid/view/VolumePanel$WarningDialogReceiver;->mVolumePanel:Landroid/view/VolumePanel;

    .line 255
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 256
    .local v0, filter:Landroid/content/IntentFilter;
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 257
    return-void
.end method

.method private cleanUp()V
    .locals 2

    .prologue
    .line 271
    invoke-static {}, Landroid/view/VolumePanel;->access$300()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 272
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Landroid/view/VolumePanel;->access$402(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 273
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    iget-object v0, p0, Landroid/view/VolumePanel$WarningDialogReceiver;->mVolumePanel:Landroid/view/VolumePanel;

    #calls: Landroid/view/VolumePanel;->forceTimeout()V
    invoke-static {v0}, Landroid/view/VolumePanel;->access$500(Landroid/view/VolumePanel;)V

    .line 275
    iget-object v0, p0, Landroid/view/VolumePanel$WarningDialogReceiver;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v0}, Landroid/view/VolumePanel;->updateStates()V

    .line 276
    return-void

    .line 273
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "unused"

    .prologue
    .line 266
    iget-object v0, p0, Landroid/view/VolumePanel$WarningDialogReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 267
    invoke-direct {p0}, Landroid/view/VolumePanel$WarningDialogReceiver;->cleanUp()V

    .line 268
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 261
    iget-object v0, p0, Landroid/view/VolumePanel$WarningDialogReceiver;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 262
    invoke-direct {p0}, Landroid/view/VolumePanel$WarningDialogReceiver;->cleanUp()V

    .line 263
    return-void
.end method
