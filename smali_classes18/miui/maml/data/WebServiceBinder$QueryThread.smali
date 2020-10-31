.class Lmiui/maml/data/WebServiceBinder$QueryThread;
.super Ljava/lang/Thread;
.source "WebServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/WebServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryThread"
.end annotation


# static fields
.field private static final ERROR_IO_EXCEPTION:I = 0x8

.field private static final ERROR_OK:I = 0x0

.field private static final ERROR_SECURE_ACCOUNT_AUTHTOKEN_FAIL:I = 0x5

.field private static final ERROR_SECURE_ACCOUNT_NOT_LOGIN:I = 0x4

.field private static final ERROR_SECURE_CIPHER_EXCEPTION:I = 0x6

.field private static final ERROR_SECURE_INVALID_RESPONSE:I = 0x7

.field public static final ERROR_USE_NETWORK_FORBIDDEN:I = 0x3

.field private static final KEY_ENCRYPTED_USER_ID:Ljava/lang/String; = "encrypted_user_id"


# instance fields
.field final synthetic this$0:Lmiui/maml/data/WebServiceBinder;


# direct methods
.method public constructor <init>(Lmiui/maml/data/WebServiceBinder;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    const-string p1, "WebServiceBinder QueryThread"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private doRequest(Ljava/lang/String;Lmiui/maml/data/WebServiceBinder$RequestMethod;ZZ)Ljava/lang/Object;
    .registers 11

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lmiui/maml/data/WebServiceBinder$QueryThread;->doRequest(Ljava/lang/String;Lmiui/maml/data/WebServiceBinder$RequestMethod;ZZZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private doRequest(Ljava/lang/String;Lmiui/maml/data/WebServiceBinder$RequestMethod;ZZZ)Ljava/lang/Object;
    .registers 25

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const-string v0, "WebServiceBinder"

    const-string v1, "doRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object v2, v7, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    invoke-virtual {v2}, Lmiui/maml/data/WebServiceBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v9, v2, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    const-string v2, "com.xiaomi"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p3, :cond_d6

    iget-object v5, v7, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v5, v5, Lmiui/maml/data/WebServiceBinder;->mEncryptedUser:Ljava/lang/String;

    if-eqz v5, :cond_2a

    iget-object v5, v7, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v5, v5, Lmiui/maml/data/WebServiceBinder;->mServiceToken:Ljava/lang/String;

    if-nez v5, :cond_bc

    :cond_2a
    const/4 v5, 0x0

    invoke-virtual {v6, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v15

    array-length v10, v15

    if-lez v10, :cond_34

    aget-object v5, v15, v3

    :cond_34
    if-nez v5, :cond_42

    iget-object v2, v7, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    const/4 v3, 0x4

    # invokes: Lmiui/maml/data/WebServiceBinder;->setErrorCode(I)V
    invoke-static {v2, v3}, Lmiui/maml/data/WebServiceBinder;->access$200(Lmiui/maml/data/WebServiceBinder;I)V

    const-string v2, "xiaomi account not login"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_42
    iget-object v10, v7, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    const-string v11, "encrypted_user_id"

    invoke-virtual {v6, v5, v11}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lmiui/maml/data/WebServiceBinder;->mEncryptedUser:Ljava/lang/String;

    iget-object v10, v7, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    # getter for: Lmiui/maml/data/WebServiceBinder;->mServiceId:Ljava/lang/String;
    invoke-static {v10}, Lmiui/maml/data/WebServiceBinder;->access$1000(Lmiui/maml/data/WebServiceBinder;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v6

    move-object v11, v5

    move-object/from16 v18, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    invoke-virtual/range {v10 .. v16}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v10

    const/4 v11, 0x0

    if-eqz v10, :cond_89

    :try_start_67
    invoke-interface {v10}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Bundle;

    if-eqz v12, :cond_7b

    const-string v0, "authtoken"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/maml/data/WebServiceBinder$AuthToken;->parse(Ljava/lang/String;)Lmiui/maml/data/WebServiceBinder$AuthToken;

    move-result-object v13

    move-object v11, v13

    goto :goto_80

    :cond_7b
    const-string v13, "getAuthToken: future getResult is null"

    invoke-static {v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_80
    goto :goto_8e

    :catch_81
    move-exception v0

    goto :goto_8f

    :catch_83
    move-exception v0

    goto :goto_95

    :catch_85
    move-exception v0

    goto :goto_9b

    :catch_87
    move-exception v0

    goto :goto_a1

    :cond_89
    const-string v12, "getAuthToken: future is null"

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catch Landroid/accounts/OperationCanceledException; {:try_start_67 .. :try_end_8e} :catch_87
    .catch Landroid/accounts/AuthenticatorException; {:try_start_67 .. :try_end_8e} :catch_85
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_8e} :catch_83
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_8e} :catch_81

    :goto_8e
    goto :goto_a7

    :goto_8f
    iget-object v12, v7, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    # invokes: Lmiui/maml/data/WebServiceBinder;->handleException(Ljava/lang/Exception;)V
    invoke-static {v12, v0}, Lmiui/maml/data/WebServiceBinder;->access$1100(Lmiui/maml/data/WebServiceBinder;Ljava/lang/Exception;)V

    goto :goto_a7

    :goto_95
    iget-object v12, v7, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    # invokes: Lmiui/maml/data/WebServiceBinder;->handleException(Ljava/lang/Exception;)V
    invoke-static {v12, v0}, Lmiui/maml/data/WebServiceBinder;->access$1100(Lmiui/maml/data/WebServiceBinder;Ljava/lang/Exception;)V

    goto :goto_8e

    :goto_9b
    iget-object v12, v7, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    # invokes: Lmiui/maml/data/WebServiceBinder;->handleException(Ljava/lang/Exception;)V
    invoke-static {v12, v0}, Lmiui/maml/data/WebServiceBinder;->access$1100(Lmiui/maml/data/WebServiceBinder;Ljava/lang/Exception;)V

    goto :goto_8e

    :goto_a1
    iget-object v12, v7, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    # invokes: Lmiui/maml/data/WebServiceBinder;->handleException(Ljava/lang/Exception;)V
    invoke-static {v12, v0}, Lmiui/maml/data/WebServiceBinder;->access$1100(Lmiui/maml/data/WebServiceBinder;Ljava/lang/Exception;)V

    goto :goto_8e

    :goto_a7
    if-nez v11, :cond_b0

    iget-object v0, v7, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    const/4 v2, 0x5

    # invokes: Lmiui/maml/data/WebServiceBinder;->setErrorCode(I)V
    invoke-static {v0, v2}, Lmiui/maml/data/WebServiceBinder;->access$200(Lmiui/maml/data/WebServiceBinder;I)V

    return-object v4

    :cond_b0
    iget-object v0, v7, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v12, v11, Lmiui/maml/data/WebServiceBinder$AuthToken;->authToken:Ljava/lang/String;

    iput-object v12, v0, Lmiui/maml/data/WebServiceBinder;->mServiceToken:Ljava/lang/String;

    iget-object v0, v7, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v12, v11, Lmiui/maml/data/WebServiceBinder$AuthToken;->security:Ljava/lang/String;

    iput-object v12, v0, Lmiui/maml/data/WebServiceBinder;->mSecurity:Ljava/lang/String;

    :cond_bc
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v1, v0

    iget-object v0, v7, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v0, v0, Lmiui/maml/data/WebServiceBinder;->mEncryptedUser:Ljava/lang/String;

    const-string v5, "cUserId"

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v7, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v0, v0, Lmiui/maml/data/WebServiceBinder;->mServiceToken:Ljava/lang/String;

    const-string v5, "serviceToken"

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v1

    goto :goto_d7

    :cond_d6
    move-object v10, v1

    :goto_d7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v11, v0

    iget-object v0, v7, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    # getter for: Lmiui/maml/data/WebServiceBinder;->mParamsFormatter:Lmiui/maml/util/TextFormatter;
    invoke-static {v0}, Lmiui/maml/data/WebServiceBinder;->access$1200(Lmiui/maml/data/WebServiceBinder;)Lmiui/maml/util/TextFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/util/TextFormatter;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_112

    const-string v0, ","

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v13, v0

    move v14, v3

    :goto_f6
    if-ge v14, v13, :cond_112

    aget-object v15, v0, v14

    const-string v4, ":"

    invoke-virtual {v15, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    if-eq v5, v1, :cond_104

    goto :goto_10d

    :cond_104
    aget-object v5, v4, v3

    const/16 v17, 0x1

    aget-object v3, v4, v17

    invoke-virtual {v11, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_10d
    add-int/lit8 v14, v14, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto :goto_f6

    :cond_112
    :try_start_112
    iget-object v0, v7, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;
    :try_end_114
    .catch Ljava/io/IOException; {:try_start_112 .. :try_end_114} :catch_1e2
    .catch Lmiui/maml/util/net/CipherException; {:try_start_112 .. :try_end_114} :catch_1d4
    .catch Lmiui/maml/util/net/AccessDeniedException; {:try_start_112 .. :try_end_114} :catch_1c5
    .catch Lmiui/maml/util/net/InvalidResponseException; {:try_start_112 .. :try_end_114} :catch_1b7
    .catch Lmiui/maml/util/net/AuthenticationFailureException; {:try_start_112 .. :try_end_114} :catch_188
    .catch Ljava/lang/Exception; {:try_start_112 .. :try_end_114} :catch_17f

    :try_start_114
    # getter for: Lmiui/maml/data/WebServiceBinder;->mProtocol:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;
    invoke-static {v0}, Lmiui/maml/data/WebServiceBinder;->access$600(Lmiui/maml/data/WebServiceBinder;)Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    move-result-object v0

    sget-object v3, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->BITMAP:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    const/16 v4, 0xc8

    if-ne v0, v3, :cond_12c

    const/4 v1, 0x0

    invoke-static {v8, v11, v1}, Lmiui/maml/util/net/SimpleRequest;->getAsStream(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lmiui/maml/util/net/SimpleRequest$StreamContent;

    move-result-object v0

    if-eqz v0, :cond_12b

    iget-object v1, v7, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    # invokes: Lmiui/maml/data/WebServiceBinder;->setStatusCode(I)V
    invoke-static {v1, v4}, Lmiui/maml/data/WebServiceBinder;->access$300(Lmiui/maml/data/WebServiceBinder;I)V

    return-object v0

    :cond_12b
    goto :goto_16f

    :cond_12c
    const/4 v0, 0x0

    sget-object v3, Lmiui/maml/data/WebServiceBinder$1;->$SwitchMap$miui$maml$data$WebServiceBinder$RequestMethod:[I

    invoke-virtual/range {p2 .. p2}, Lmiui/maml/data/WebServiceBinder$RequestMethod;->ordinal()I

    move-result v5

    aget v3, v3, v5

    const/4 v5, 0x1

    if-eq v3, v5, :cond_14f

    if-eq v3, v1, :cond_13b

    goto :goto_163

    :cond_13b
    if-eqz p4, :cond_148

    iget-object v1, v7, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v1, v1, Lmiui/maml/data/WebServiceBinder;->mSecurity:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v8, v11, v10, v3, v1}, Lmiui/maml/util/net/SecureRequest;->postAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lmiui/maml/util/net/SimpleRequest$StringContent;

    move-result-object v1

    move-object v0, v1

    goto :goto_163

    :cond_148
    const/4 v1, 0x1

    invoke-static {v8, v11, v10, v1}, Lmiui/maml/util/net/SimpleRequest;->postAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lmiui/maml/util/net/SimpleRequest$StringContent;

    move-result-object v1

    move-object v0, v1

    goto :goto_163

    :cond_14f
    if-eqz p4, :cond_15c

    iget-object v1, v7, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v1, v1, Lmiui/maml/data/WebServiceBinder;->mSecurity:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v8, v11, v10, v3, v1}, Lmiui/maml/util/net/SecureRequest;->getAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lmiui/maml/util/net/SimpleRequest$StringContent;

    move-result-object v1

    move-object v0, v1

    goto :goto_163

    :cond_15c
    const/4 v1, 0x1

    invoke-static {v8, v11, v10, v1}, Lmiui/maml/util/net/SimpleRequest;->getAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lmiui/maml/util/net/SimpleRequest$StringContent;

    move-result-object v1

    move-object v0, v1

    nop

    :goto_163
    if-eqz v0, :cond_16f

    iget-object v1, v7, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    # invokes: Lmiui/maml/data/WebServiceBinder;->setStatusCode(I)V
    invoke-static {v1, v4}, Lmiui/maml/data/WebServiceBinder;->access$300(Lmiui/maml/data/WebServiceBinder;I)V

    invoke-virtual {v0}, Lmiui/maml/util/net/SimpleRequest$StringContent;->getBody()Ljava/lang/String;

    move-result-object v1
    :try_end_16e
    .catch Ljava/io/IOException; {:try_start_114 .. :try_end_16e} :catch_17b
    .catch Lmiui/maml/util/net/CipherException; {:try_start_114 .. :try_end_16e} :catch_178
    .catch Lmiui/maml/util/net/AccessDeniedException; {:try_start_114 .. :try_end_16e} :catch_175
    .catch Lmiui/maml/util/net/InvalidResponseException; {:try_start_114 .. :try_end_16e} :catch_172
    .catch Lmiui/maml/util/net/AuthenticationFailureException; {:try_start_114 .. :try_end_16e} :catch_188
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_16e} :catch_17f

    return-object v1

    :cond_16f
    :goto_16f
    move-object v14, v6

    goto/16 :goto_1f1

    :catch_172
    move-exception v0

    move-object v14, v6

    goto :goto_1b9

    :catch_175
    move-exception v0

    move-object v14, v6

    goto :goto_1c7

    :catch_178
    move-exception v0

    move-object v14, v6

    goto :goto_1d6

    :catch_17b
    move-exception v0

    move-object v14, v6

    goto/16 :goto_1e4

    :catch_17f
    move-exception v0

    iget-object v1, v7, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    # invokes: Lmiui/maml/data/WebServiceBinder;->handleException(Ljava/lang/Exception;)V
    invoke-static {v1, v0}, Lmiui/maml/data/WebServiceBinder;->access$1100(Lmiui/maml/data/WebServiceBinder;Ljava/lang/Exception;)V

    move-object v14, v6

    goto/16 :goto_1f1

    :catch_188
    move-exception v0

    iget-object v1, v7, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    # invokes: Lmiui/maml/data/WebServiceBinder;->handleException(Ljava/lang/Exception;)V
    invoke-static {v1, v0}, Lmiui/maml/data/WebServiceBinder;->access$1100(Lmiui/maml/data/WebServiceBinder;Ljava/lang/Exception;)V

    iget-object v1, v7, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    const/16 v3, 0x190

    # invokes: Lmiui/maml/data/WebServiceBinder;->setStatusCode(I)V
    invoke-static {v1, v3}, Lmiui/maml/data/WebServiceBinder;->access$300(Lmiui/maml/data/WebServiceBinder;I)V

    iget-object v1, v7, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v1, v1, Lmiui/maml/data/WebServiceBinder;->mServiceToken:Ljava/lang/String;

    invoke-virtual {v6, v2, v1}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v7, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    const/4 v2, 0x0

    iput-object v2, v1, Lmiui/maml/data/WebServiceBinder;->mServiceToken:Ljava/lang/String;

    if-eqz p5, :cond_1b5

    const/4 v13, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v14, v6

    move v6, v13

    invoke-direct/range {v1 .. v6}, Lmiui/maml/data/WebServiceBinder$QueryThread;->doRequest(Ljava/lang/String;Lmiui/maml/data/WebServiceBinder$RequestMethod;ZZZ)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_1b5
    move-object v14, v6

    goto :goto_1f0

    :catch_1b7
    move-exception v0

    move-object v14, v6

    :goto_1b9
    iget-object v1, v7, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    # invokes: Lmiui/maml/data/WebServiceBinder;->handleException(Ljava/lang/Exception;)V
    invoke-static {v1, v0}, Lmiui/maml/data/WebServiceBinder;->access$1100(Lmiui/maml/data/WebServiceBinder;Ljava/lang/Exception;)V

    iget-object v1, v7, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    const/4 v2, 0x7

    # invokes: Lmiui/maml/data/WebServiceBinder;->setErrorCode(I)V
    invoke-static {v1, v2}, Lmiui/maml/data/WebServiceBinder;->access$200(Lmiui/maml/data/WebServiceBinder;I)V

    goto :goto_1f0

    :catch_1c5
    move-exception v0

    move-object v14, v6

    :goto_1c7
    iget-object v1, v7, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    # invokes: Lmiui/maml/data/WebServiceBinder;->handleException(Ljava/lang/Exception;)V
    invoke-static {v1, v0}, Lmiui/maml/data/WebServiceBinder;->access$1100(Lmiui/maml/data/WebServiceBinder;Ljava/lang/Exception;)V

    iget-object v1, v7, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    const/16 v2, 0x193

    # invokes: Lmiui/maml/data/WebServiceBinder;->setStatusCode(I)V
    invoke-static {v1, v2}, Lmiui/maml/data/WebServiceBinder;->access$300(Lmiui/maml/data/WebServiceBinder;I)V

    goto :goto_1f0

    :catch_1d4
    move-exception v0

    move-object v14, v6

    :goto_1d6
    iget-object v1, v7, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    # invokes: Lmiui/maml/data/WebServiceBinder;->handleException(Ljava/lang/Exception;)V
    invoke-static {v1, v0}, Lmiui/maml/data/WebServiceBinder;->access$1100(Lmiui/maml/data/WebServiceBinder;Ljava/lang/Exception;)V

    iget-object v1, v7, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    const/4 v2, 0x6

    # invokes: Lmiui/maml/data/WebServiceBinder;->setErrorCode(I)V
    invoke-static {v1, v2}, Lmiui/maml/data/WebServiceBinder;->access$200(Lmiui/maml/data/WebServiceBinder;I)V

    goto :goto_1f0

    :catch_1e2
    move-exception v0

    move-object v14, v6

    :goto_1e4
    iget-object v1, v7, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    # invokes: Lmiui/maml/data/WebServiceBinder;->handleException(Ljava/lang/Exception;)V
    invoke-static {v1, v0}, Lmiui/maml/data/WebServiceBinder;->access$1100(Lmiui/maml/data/WebServiceBinder;Ljava/lang/Exception;)V

    iget-object v1, v7, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    const/16 v2, 0x8

    # invokes: Lmiui/maml/data/WebServiceBinder;->setErrorCode(I)V
    invoke-static {v1, v2}, Lmiui/maml/data/WebServiceBinder;->access$200(Lmiui/maml/data/WebServiceBinder;I)V

    :goto_1f0
    nop

    :goto_1f1
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public run()V
    .registers 8

    const-string v0, "WebServiceBinder"

    const-string v1, "QueryThread start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    const/4 v2, 0x0

    # invokes: Lmiui/maml/data/WebServiceBinder;->setErrorCode(I)V
    invoke-static {v1, v2}, Lmiui/maml/data/WebServiceBinder;->access$200(Lmiui/maml/data/WebServiceBinder;I)V

    iget-object v1, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    # invokes: Lmiui/maml/data/WebServiceBinder;->setStatusCode(I)V
    invoke-static {v1, v2}, Lmiui/maml/data/WebServiceBinder;->access$300(Lmiui/maml/data/WebServiceBinder;I)V

    iget-object v1, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v1, v1, Lmiui/maml/data/WebServiceBinder;->mUriFormatter:Lmiui/maml/util/TextFormatter;

    invoke-virtual {v1}, Lmiui/maml/util/TextFormatter;->getText()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_26

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_27

    :cond_26
    move-object v4, v3

    :goto_27
    move-object v1, v4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_98

    iget-object v4, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v4, v4, Lmiui/maml/data/WebServiceBinder;->mRequestMethod:Lmiui/maml/data/WebServiceBinder$RequestMethod;

    iget-object v5, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    # getter for: Lmiui/maml/data/WebServiceBinder;->mAuthentication:Z
    invoke-static {v5}, Lmiui/maml/data/WebServiceBinder;->access$400(Lmiui/maml/data/WebServiceBinder;)Z

    move-result v5

    iget-object v6, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    # getter for: Lmiui/maml/data/WebServiceBinder;->mSecure:Z
    invoke-static {v6}, Lmiui/maml/data/WebServiceBinder;->access$500(Lmiui/maml/data/WebServiceBinder;)Z

    move-result v6

    invoke-direct {p0, v1, v4, v5, v6}, Lmiui/maml/data/WebServiceBinder$QueryThread;->doRequest(Ljava/lang/String;Lmiui/maml/data/WebServiceBinder$RequestMethod;ZZ)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v5, v5, Lmiui/maml/data/WebServiceBinder;->mContentStringVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v5, :cond_60

    if-eqz v4, :cond_59

    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_59

    iget-object v3, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v3, v3, Lmiui/maml/data/WebServiceBinder;->mContentStringVar:Lmiui/maml/data/IndexedVariable;

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    goto :goto_60

    :cond_59
    iget-object v5, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v5, v5, Lmiui/maml/data/WebServiceBinder;->mContentStringVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v5, v3}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    :cond_60
    :goto_60
    if-eqz v4, :cond_97

    sget-object v3, Lmiui/maml/data/WebServiceBinder$1;->$SwitchMap$miui$maml$data$WebServiceBinder$ResponseProtocol:[I

    iget-object v5, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    # getter for: Lmiui/maml/data/WebServiceBinder;->mProtocol:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;
    invoke-static {v5}, Lmiui/maml/data/WebServiceBinder;->access$600(Lmiui/maml/data/WebServiceBinder;)Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->ordinal()I

    move-result v5

    aget v3, v3, v5

    const/4 v5, 0x1

    if-eq v3, v5, :cond_8f

    const/4 v5, 0x2

    if-eq v3, v5, :cond_86

    const/4 v5, 0x3

    if-eq v3, v5, :cond_86

    const/4 v5, 0x4

    if-eq v3, v5, :cond_7d

    goto :goto_97

    :cond_7d
    iget-object v3, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    move-object v5, v4

    check-cast v5, Lmiui/maml/util/net/SimpleRequest$StreamContent;

    invoke-virtual {v3, v5}, Lmiui/maml/data/WebServiceBinder;->processResponseBitmap(Lmiui/maml/util/net/SimpleRequest$StreamContent;)V

    goto :goto_97

    :cond_86
    iget-object v3, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    # invokes: Lmiui/maml/data/WebServiceBinder;->processResponseJson(Ljava/lang/String;)V
    invoke-static {v3, v5}, Lmiui/maml/data/WebServiceBinder;->access$800(Lmiui/maml/data/WebServiceBinder;Ljava/lang/String;)V

    goto :goto_97

    :cond_8f
    iget-object v3, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    # invokes: Lmiui/maml/data/WebServiceBinder;->processResponseXml(Ljava/lang/String;)V
    invoke-static {v3, v5}, Lmiui/maml/data/WebServiceBinder;->access$700(Lmiui/maml/data/WebServiceBinder;Ljava/lang/String;)V

    :cond_97
    :goto_97
    goto :goto_9d

    :cond_98
    const-string v3, "url is null"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9d
    iget-object v3, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    invoke-virtual {v3}, Lmiui/maml/data/WebServiceBinder;->onUpdateComplete()V

    iget-object v3, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    # setter for: Lmiui/maml/data/WebServiceBinder;->mQueryInProgress:Z
    invoke-static {v3, v2}, Lmiui/maml/data/WebServiceBinder;->access$902(Lmiui/maml/data/WebServiceBinder;Z)Z

    const-string v2, "QueryThread end"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
