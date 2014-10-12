.class Lcom/android/server/BackupManagerService$ObserveBaiduTransport;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ObserveBaiduTransport"
.end annotation


# instance fields
.field private final mComponentName:Ljava/lang/String;

.field mService:Lcom/android/server/BackupManagerService;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/server/BackupManagerService;)V
    .locals 0
    .parameter "cn"
    .parameter "service"

    .prologue
    .line 1465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1466
    iput-object p1, p0, Lcom/android/server/BackupManagerService$ObserveBaiduTransport;->mComponentName:Ljava/lang/String;

    .line 1467
    iput-object p2, p0, Lcom/android/server/BackupManagerService$ObserveBaiduTransport;->mService:Lcom/android/server/BackupManagerService;

    .line 1468
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    .line 1471
    iget-object v0, p0, Lcom/android/server/BackupManagerService$ObserveBaiduTransport;->mService:Lcom/android/server/BackupManagerService;

    iget-object v1, v0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    monitor-enter v1

    .line 1473
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BackupManagerService$ObserveBaiduTransport;->mService:Lcom/android/server/BackupManagerService;

    iget-object v2, p0, Lcom/android/server/BackupManagerService$ObserveBaiduTransport;->mComponentName:Ljava/lang/String;

    const/4 v3, 0x0

    #calls: Lcom/android/server/BackupManagerService;->registerTransport(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V
    invoke-static {v0, v3, v2, v3}, Lcom/android/server/BackupManagerService;->access$500(Lcom/android/server/BackupManagerService;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V

    .line 1474
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1477
    iget-object v0, p0, Lcom/android/server/BackupManagerService$ObserveBaiduTransport;->mService:Lcom/android/server/BackupManagerService;

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    new-instance v1, Lcom/android/server/BackupManagerService$ObserveBaiduTransport$1;

    invoke-direct {v1, p0}, Lcom/android/server/BackupManagerService$ObserveBaiduTransport$1;-><init>(Lcom/android/server/BackupManagerService$ObserveBaiduTransport;)V

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z

    .line 1483
    return-void

    .line 1474
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
