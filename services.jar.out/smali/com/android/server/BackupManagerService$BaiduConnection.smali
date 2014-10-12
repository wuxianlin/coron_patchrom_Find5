.class public Lcom/android/server/BackupManagerService$BaiduConnection;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaiduConnection"
.end annotation


# instance fields
.field mBaiduLocalTransport:Lcom/android/internal/backup/IBackupTransport;

.field mService:Lcom/android/server/BackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/BackupManagerService;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 1432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1433
    iput-object p1, p0, Lcom/android/server/BackupManagerService$BaiduConnection;->mService:Lcom/android/server/BackupManagerService;

    .line 1434
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .parameter "name"
    .parameter "service"

    .prologue
    .line 1437
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connected to Baidu LocalTransportService "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    invoke-static {p2}, Lcom/android/internal/backup/IBackupTransport$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/BackupManagerService$BaiduConnection;->mBaiduLocalTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 1439
    iget-object v2, p0, Lcom/android/server/BackupManagerService$BaiduConnection;->mService:Lcom/android/server/BackupManagerService;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BackupManagerService$BaiduConnection;->mBaiduLocalTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v4}, Lcom/android/internal/backup/IBackupTransport;->name()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/server/BackupManagerService;->registerTransport(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V
    invoke-static {v2, v5, v3, v4}, Lcom/android/server/BackupManagerService;->access$500(Lcom/android/server/BackupManagerService;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V

    .line 1442
    new-instance v1, Lcom/android/server/BackupManagerService$ObserveBaiduTransport;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BackupManagerService$BaiduConnection;->mService:Lcom/android/server/BackupManagerService;

    invoke-direct {v1, v2, v3}, Lcom/android/server/BackupManagerService$ObserveBaiduTransport;-><init>(Ljava/lang/String;Lcom/android/server/BackupManagerService;)V

    .line 1445
    .local v1, ob:Lcom/android/server/BackupManagerService$ObserveBaiduTransport;
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p2, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1450
    :goto_0
    return-void

    .line 1446
    :catch_0
    move-exception v0

    .line 1447
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "BackupManagerService"

    const-string v3, "Can\'t linkToDeath due to remote exception"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .parameter "name"

    .prologue
    const/4 v3, 0x0

    .line 1453
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disconnected from Baidu LocalTransportService"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    iput-object v3, p0, Lcom/android/server/BackupManagerService$BaiduConnection;->mBaiduLocalTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 1455
    iget-object v0, p0, Lcom/android/server/BackupManagerService$BaiduConnection;->mService:Lcom/android/server/BackupManagerService;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/server/BackupManagerService;->registerTransport(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V
    invoke-static {v0, v3, v1, v3}, Lcom/android/server/BackupManagerService;->access$500(Lcom/android/server/BackupManagerService;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V

    .line 1456
    return-void
.end method
