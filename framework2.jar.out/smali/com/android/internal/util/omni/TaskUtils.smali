.class public Lcom/android/internal/util/omni/TaskUtils;
.super Ljava/lang/Object;
.source "TaskUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPackagePersistentId(Ljava/lang/String;Landroid/content/Context;)I
    .locals 7
    .parameter "packageName"
    .parameter "context"

    .prologue
    .line 115
    move-object v2, p1

    .line 117
    .local v2, mContext:Landroid/content/Context;
    const-string v5, "activity"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 120
    .local v0, am:Landroid/app/ActivityManager;
    const v5, 0x7fffffff

    const/4 v6, 0x2

    invoke-virtual {v0, v5, v6}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v3

    .line 123
    .local v3, mTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 125
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 128
    .local v4, name:Ljava/lang/String;
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 129
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v5, v5, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    .line 133
    .end local v4           #name:Ljava/lang/String;
    :goto_1
    return v5

    .line 123
    .restart local v4       #name:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    .end local v4           #name:Ljava/lang/String;
    :cond_1
    const/4 v5, -0x1

    goto :goto_1
.end method

.method public static killActiveTask(Landroid/content/Context;)Z
    .locals 15
    .parameter "context"

    .prologue
    .line 39
    new-instance v7, Landroid/content/Intent;

    const-string v13, "android.intent.action.MAIN"

    invoke-direct {v7, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    .local v7, intent:Landroid/content/Intent;
    const-string v4, "com.android.launcher"

    .line 41
    .local v4, defaultHomePackage:Ljava/lang/String;
    const-string v13, "android.intent.category.HOME"

    invoke-virtual {v7, v13}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v7, v14}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .line 43
    .local v10, res:Landroid/content/pm/ResolveInfo;
    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v13, :cond_0

    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v14, "android"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 44
    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 46
    :cond_0
    const/4 v11, 0x0

    .line 47
    .local v11, targetKilled:Z
    const-string v13, "activity"

    invoke-virtual {p0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 49
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 50
    .local v2, apps:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 51
    .local v1, appInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v12, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 54
    .local v12, uid:I
    const/16 v13, 0x2710

    if-lt v12, v13, :cond_2

    const/16 v13, 0x4e1f

    if-gt v12, v13, :cond_2

    iget v13, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v14, 0x64

    if-ne v13, v14, :cond_2

    .line 56
    iget-object v13, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v13, :cond_4

    iget-object v13, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v13, v13

    if-lez v13, :cond_4

    .line 57
    iget-object v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .local v3, arr$:[Ljava/lang/String;
    array-length v8, v3

    .local v8, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v8, :cond_2

    aget-object v9, v3, v6

    .line 58
    .local v9, pkg:Ljava/lang/String;
    const-string v13, "com.android.systemui"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 60
    invoke-virtual {v0, v9}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 61
    const/4 v11, 0x1

    .line 70
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v8           #len$:I
    .end local v9           #pkg:Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz v11, :cond_1

    .line 71
    const/4 v13, 0x1

    .line 74
    .end local v1           #appInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v12           #uid:I
    :goto_2
    return v13

    .line 57
    .restart local v1       #appInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v3       #arr$:[Ljava/lang/String;
    .restart local v6       #i$:I
    .restart local v8       #len$:I
    .restart local v9       #pkg:Ljava/lang/String;
    .restart local v12       #uid:I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 66
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v8           #len$:I
    .end local v9           #pkg:Ljava/lang/String;
    :cond_4
    iget v13, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v13}, Landroid/os/Process;->killProcess(I)V

    .line 67
    const/4 v11, 0x1

    goto :goto_1

    .line 74
    .end local v1           #appInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v12           #uid:I
    :cond_5
    const/4 v13, 0x0

    goto :goto_2
.end method

.method public static killPackageProcess(ILandroid/content/Context;)V
    .locals 3
    .parameter "mId"
    .parameter "context"

    .prologue
    .line 138
    move-object v1, p1

    .line 140
    .local v1, mContext:Landroid/content/Context;
    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 143
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Landroid/app/ActivityManager;->removeTask(II)Z

    .line 144
    return-void
.end method

.method public static movePackageToFront(ILandroid/content/Context;)V
    .locals 3
    .parameter "mId"
    .parameter "context"

    .prologue
    .line 148
    move-object v1, p1

    .line 150
    .local v1, mContext:Landroid/content/Context;
    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 153
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    .line 154
    return-void
.end method

.method public static toggleLastApp(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    const/4 v13, 0x2

    .line 78
    new-instance v5, Landroid/content/Intent;

    const-string v11, "android.intent.action.MAIN"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .local v5, intent:Landroid/content/Intent;
    const-string v11, "activity"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 81
    .local v0, am:Landroid/app/ActivityManager;
    const-string v1, "com.android.launcher"

    .line 82
    .local v1, defaultHomePackage:Ljava/lang/String;
    const-string v11, "android.intent.category.HOME"

    invoke-virtual {v5, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v12}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    .line 84
    .local v9, res:Landroid/content/pm/ResolveInfo;
    iget-object v11, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v11, :cond_0

    iget-object v11, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v12, "android"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 85
    iget-object v11, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 87
    :cond_0
    const/4 v11, 0x5

    invoke-virtual {v0, v11, v13}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v10

    .line 91
    .local v10, tasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const/4 v6, 0x0

    .line 92
    .local v6, lastAppId:I
    const/4 v7, 0x0

    .line 93
    .local v7, lastAppIntent:Landroid/content/Intent;
    const/4 v3, 0x1

    .local v3, i:I
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_2

    if-nez v7, :cond_2

    .line 94
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v11, v11, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 95
    .local v8, packageName:Ljava/lang/String;
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "com.android.systemui"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 96
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 97
    .local v4, info:Landroid/app/ActivityManager$RecentTaskInfo;
    iget v6, v4, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 98
    iget-object v7, v4, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 93
    .end local v4           #info:Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 101
    .end local v8           #packageName:Ljava/lang/String;
    :cond_2
    if-lez v6, :cond_4

    .line 102
    invoke-virtual {v0, v6, v13}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    .line 112
    :cond_3
    :goto_1
    return-void

    .line 103
    :cond_4
    if-eqz v7, :cond_3

    .line 105
    const/high16 v11, 0x10

    invoke-virtual {v7, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 107
    :try_start_0
    sget-object v11, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v7, v11}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 108
    :catch_0
    move-exception v2

    .line 109
    .local v2, e:Landroid/content/ActivityNotFoundException;
    const-string v11, "Recent"

    const-string v12, "Unable to launch recent task"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
