.class public Lcom/android/internal/util/slim/QuietHoursHelper;
.super Ljava/lang/Object;
.source "QuietHoursHelper.java"


# static fields
.field public static final QUIET_HOURS_INIT_COMMAND:Ljava/lang/String; = "com.android.settings.slim.service.QUIET_HOURS_INIT_COMMAND"

.field public static final QUIET_HOURS_PAUSE_COMMAND:Ljava/lang/String; = "com.android.settings.slim.service.QUIET_HOURS_PAUSE_COMMAND"

.field public static final QUIET_HOURS_RESUME_COMMAND:Ljava/lang/String; = "com.android.settings.slim.service.QUIET_HOURS_RESUME_COMMAND"

.field public static final QUIET_HOURS_SCHEDULE_COMMAND:Ljava/lang/String; = "com.android.settings.slim.service.QUIET_HOURS_SCHEDULE_COMMAND"

.field public static final QUIET_HOURS_START:Ljava/lang/String; = "com.android.settings.slim.service.QUIET_HOURS_START"

.field public static final QUIET_HOURS_STOP:Ljava/lang/String; = "com.android.settings.slim.service.QUIET_HOURS_STOP"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inQuietHours(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "option"

    .prologue
    const/4 v0, 0x1

    .line 45
    invoke-static {p0, p1, v0, v0}, Lcom/android/internal/util/slim/QuietHoursHelper;->inQuietHours(Landroid/content/Context;Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public static inQuietHours(Landroid/content/Context;Ljava/lang/String;ZZ)Z
    .locals 12
    .parameter "context"
    .parameter "option"
    .parameter "withForce"
    .parameter "withPause"

    .prologue
    .line 49
    const/4 v2, 0x1

    .line 50
    .local v2, mode:Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "quiet_hours_enabled"

    const/4 v10, 0x0

    const/4 v11, -0x3

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_1

    const/4 v3, 0x1

    .line 53
    .local v3, quietHoursEnabled:Z
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "quiet_hours_start"

    const/4 v10, 0x0

    const/4 v11, -0x3

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    .line 56
    .local v7, quietHoursStart:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "quiet_hours_end"

    const/4 v10, 0x0

    const/4 v11, -0x3

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 59
    .local v4, quietHoursEnd:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "quiet_hours_paused"

    const/4 v10, 0x0

    const/4 v11, -0x3

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    .line 62
    .local v6, quietHoursPaused:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "quiet_hours_forced"

    const/4 v10, 0x0

    const/4 v11, -0x3

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 66
    .local v5, quietHoursForced:I
    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, -0x3

    invoke-static {v8, p1, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_2

    const/4 v2, 0x1

    .line 72
    :cond_0
    :goto_1
    if-eqz v3, :cond_a

    if-eqz v2, :cond_a

    .line 74
    if-eqz p3, :cond_3

    const/4 v8, 0x1

    if-ne v6, v8, :cond_3

    .line 75
    const/4 v8, 0x0

    .line 96
    :goto_2
    return v8

    .line 50
    .end local v3           #quietHoursEnabled:Z
    .end local v4           #quietHoursEnd:I
    .end local v5           #quietHoursForced:I
    .end local v6           #quietHoursPaused:I
    .end local v7           #quietHoursStart:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 67
    .restart local v3       #quietHoursEnabled:Z
    .restart local v4       #quietHoursEnd:I
    .restart local v5       #quietHoursForced:I
    .restart local v6       #quietHoursPaused:I
    .restart local v7       #quietHoursStart:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 78
    :cond_3
    if-eqz p2, :cond_4

    const/4 v8, 0x1

    if-ne v5, v8, :cond_4

    .line 79
    const/4 v8, 0x1

    goto :goto_2

    .line 82
    :cond_4
    if-ne v7, v4, :cond_5

    .line 83
    const/4 v8, 0x1

    goto :goto_2

    .line 86
    :cond_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 87
    .local v0, calendar:Ljava/util/Calendar;
    const/16 v8, 0xd

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 88
    const/16 v8, 0xb

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x3c

    const/16 v9, 0xc

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int v1, v8, v9

    .line 89
    .local v1, minutes:I
    if-ge v4, v7, :cond_8

    .line 91
    if-ge v1, v7, :cond_6

    if-ge v1, v4, :cond_7

    :cond_6
    const/4 v8, 0x1

    goto :goto_2

    :cond_7
    const/4 v8, 0x0

    goto :goto_2

    .line 93
    :cond_8
    if-lt v1, v7, :cond_9

    if-ge v1, v4, :cond_9

    const/4 v8, 0x1

    goto :goto_2

    :cond_9
    const/4 v8, 0x0

    goto :goto_2

    .line 96
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v1           #minutes:I
    :cond_a
    const/4 v8, 0x0

    goto :goto_2
.end method
