.class public Lcom/android/internal/telephony/WapPushOverSms;
.super Ljava/lang/Object;
.source "WapPushOverSms.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "WAP PUSH"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private volatile mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 61
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/internal/telephony/IWapPushManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 63
    .local v0, comp:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 64
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 65
    :cond_0
    const-string v2, "WAP PUSH"

    const-string v3, "bindService() for wappush manager failed"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_1
    const-string v2, "WAP PUSH"

    const-string v3, "bindService() for wappush manager succeeded"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)I
    .locals 30
    .parameter "pdu"
    .parameter "receiver"
    .parameter "handler"

    .prologue
    .line 91
    const-string v27, "WAP PUSH"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Rx: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v14, 0x0

    .line 94
    .local v14, index:I
    add-int/lit8 v15, v14, 0x1

    .end local v14           #index:I
    .local v15, index:I
    aget-byte v27, p1, v14

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    .line 95
    .local v24, transactionId:I
    add-int/lit8 v14, v15, 0x1

    .end local v15           #index:I
    .restart local v14       #index:I
    aget-byte v27, p1, v15

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    .line 97
    .local v20, pduType:I
    const/16 v27, 0x6

    move/from16 v0, v20

    move/from16 v1, v27

    if-eq v0, v1, :cond_1

    const/16 v27, 0x7

    move/from16 v0, v20

    move/from16 v1, v27

    if-eq v0, v1, :cond_1

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x10e0048

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    .line 101
    const/16 v27, -0x1

    move/from16 v0, v27

    if-eq v14, v0, :cond_0

    .line 102
    add-int/lit8 v15, v14, 0x1

    .end local v14           #index:I
    .restart local v15       #index:I
    aget-byte v27, p1, v14

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    .line 103
    add-int/lit8 v14, v15, 0x1

    .end local v15           #index:I
    .restart local v14       #index:I
    aget-byte v27, p1, v15

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    .line 105
    const-string v27, "WAP PUSH"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "index = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " PDU Type = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " transactionID = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/16 v27, 0x6

    move/from16 v0, v20

    move/from16 v1, v27

    if-eq v0, v1, :cond_1

    const/16 v27, 0x7

    move/from16 v0, v20

    move/from16 v1, v27

    if-eq v0, v1, :cond_1

    .line 111
    const-string v27, "WAP PUSH"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Received non-PUSH WAP PDU. Type = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/16 v27, 0x1

    .line 255
    :goto_0
    return v27

    .line 115
    :cond_0
    const-string v27, "WAP PUSH"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Received non-PUSH WAP PDU. Type = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/16 v27, 0x1

    goto :goto_0

    .line 120
    :cond_1
    new-instance v19, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    .line 128
    .local v19, pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v27

    if-nez v27, :cond_2

    .line 129
    const-string v27, "WAP PUSH"

    const-string v28, "Received PDU. Header Length error."

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/16 v27, 0x2

    goto :goto_0

    .line 132
    :cond_2
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v27

    move-wide/from16 v0, v27

    long-to-int v12, v0

    .line 133
    .local v12, headerLength:I
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v27

    add-int v14, v14, v27

    .line 135
    move v13, v14

    .line 149
    .local v13, headerStartIndex:I
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v27

    if-nez v27, :cond_3

    .line 150
    const-string v27, "WAP PUSH"

    const-string v28, "Received PDU. Header Content-Type error."

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/16 v27, 0x2

    goto :goto_0

    .line 154
    :cond_3
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v18

    .line 155
    .local v18, mimeType:Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v5

    .line 156
    .local v5, binaryContentType:J
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v27

    add-int v14, v14, v27

    .line 158
    new-array v11, v12, [B

    .line 159
    .local v11, header:[B
    const/16 v27, 0x0

    array-length v0, v11

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v13, v11, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    if-eqz v18, :cond_6

    const-string v27, "application/vnd.wap.coc"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 164
    move-object/from16 v17, p1

    .line 177
    .local v17, intentData:[B
    :goto_1
    add-int v27, v14, v12

    add-int/lit8 v27, v27, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->seekXWapApplicationId(II)Z

    move-result v27

    if-eqz v27, :cond_9

    .line 178
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v27

    move-wide/from16 v0, v27

    long-to-int v14, v0

    .line 179
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeXWapApplicationId(I)Z

    .line 180
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v25

    .line 181
    .local v25, wapAppId:Ljava/lang/String;
    if-nez v25, :cond_4

    .line 182
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v27

    move-wide/from16 v0, v27

    long-to-int v0, v0

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    .line 185
    :cond_4
    if-nez v18, :cond_7

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    .line 187
    .local v8, contentType:Ljava/lang/String;
    :goto_2
    const-string v27, "WAP PUSH"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "appid found: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ":"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/16 v23, 0x1

    .line 191
    .local v23, processFurther:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    move-object/from16 v26, v0

    .line 193
    .local v26, wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    if-nez v26, :cond_8

    .line 194
    const-string v27, "WAP PUSH"

    const-string v28, "wap push manager not found!"

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :cond_5
    :goto_3
    if-nez v23, :cond_9

    .line 212
    const/16 v27, 0x1

    goto/16 :goto_0

    .line 166
    .end local v8           #contentType:Ljava/lang/String;
    .end local v17           #intentData:[B
    .end local v23           #processFurther:Z
    .end local v25           #wapAppId:Ljava/lang/String;
    .end local v26           #wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    :cond_6
    add-int v9, v13, v12

    .line 167
    .local v9, dataIndex:I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v27, v0

    sub-int v27, v27, v9

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 168
    .restart local v17       #intentData:[B
    const/16 v27, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v0, v9, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_1

    .end local v9           #dataIndex:I
    .restart local v25       #wapAppId:Ljava/lang/String;
    :cond_7
    move-object/from16 v8, v18

    .line 185
    goto :goto_2

    .line 196
    .restart local v8       #contentType:Ljava/lang/String;
    .restart local v23       #processFurther:Z
    .restart local v26       #wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    :cond_8
    :try_start_1
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 197
    .local v16, intent:Landroid/content/Intent;
    const-string v27, "transactionId"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 198
    const-string v27, "pduType"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 199
    const-string v27, "header"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 200
    const-string v27, "data"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 201
    const-string v27, "contentTypeParameters"

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v28

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 204
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v8, v2}, Lcom/android/internal/telephony/IWapPushManager;->processMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)I

    move-result v22

    .line 205
    .local v22, procRet:I
    const-string v27, "WAP PUSH"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "procRet:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 206
    and-int/lit8 v27, v22, 0x1

    if-lez v27, :cond_5

    const v27, 0x8000

    and-int v27, v27, v22

    if-nez v27, :cond_5

    .line 208
    const/16 v23, 0x0

    goto/16 :goto_3

    .line 214
    .end local v16           #intent:Landroid/content/Intent;
    .end local v22           #procRet:I
    .end local v26           #wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    :catch_0
    move-exception v10

    .line 215
    .local v10, e:Landroid/os/RemoteException;
    const-string v27, "WAP PUSH"

    const-string v28, "remote func failed..."

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .end local v8           #contentType:Ljava/lang/String;
    .end local v10           #e:Landroid/os/RemoteException;
    .end local v23           #processFurther:Z
    .end local v25           #wapAppId:Ljava/lang/String;
    :cond_9
    const-string v27, "WAP PUSH"

    const-string v28, "fall back to existing handler"

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    if-nez v18, :cond_a

    .line 221
    const-string v27, "WAP PUSH"

    const-string v28, "Header Content-Type error."

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/16 v27, 0x2

    goto/16 :goto_0

    .line 228
    :cond_a
    const-string v27, "application/vnd.wap.mms-message"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_c

    .line 229
    const-string v21, "android.permission.RECEIVE_MMS"

    .line 230
    .local v21, permission:Ljava/lang/String;
    const/16 v4, 0x12

    .line 236
    .local v4, appOp:I
    :goto_4
    new-instance v16, Landroid/content/Intent;

    const-string v27, "android.provider.Telephony.WAP_PUSH_DELIVER"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    .restart local v16       #intent:Landroid/content/Intent;
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const-string v27, "transactionId"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 239
    const-string v27, "pduType"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 240
    const-string v27, "header"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 241
    const-string v27, "data"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 242
    const-string v27, "contentTypeParameters"

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v28

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-static/range {v27 .. v28}, Lcom/android/internal/telephony/SmsApplication;->getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v7

    .line 247
    .local v7, componentName:Landroid/content/ComponentName;
    if-eqz v7, :cond_b

    .line 249
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 250
    const-string v27, "WAP PUSH"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Delivering MMS to: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_b
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 255
    const/16 v27, -0x1

    goto/16 :goto_0

    .line 232
    .end local v4           #appOp:I
    .end local v7           #componentName:Landroid/content/ComponentName;
    .end local v16           #intent:Landroid/content/Intent;
    .end local v21           #permission:Ljava/lang/String;
    :cond_c
    const-string v21, "android.permission.RECEIVE_WAP_PUSH"

    .line 233
    .restart local v21       #permission:Ljava/lang/String;
    const/16 v4, 0x13

    .restart local v4       #appOp:I
    goto/16 :goto_4
.end method

.method dispose()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    if-eqz v0, :cond_0

    .line 73
    const-string v0, "WAP PUSH"

    const-string v1, "dispose: unbind wappush manager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    const-string v0, "WAP PUSH"

    const-string v1, "dispose: not bound to a wappush manager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 49
    invoke-static {p2}, Lcom/android/internal/telephony/IWapPushManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IWapPushManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    .line 50
    const-string v0, "WAP PUSH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wappush manager connected to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    .line 56
    const-string v0, "WAP PUSH"

    const-string v1, "wappush manager disconnected."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method
