.class public Lmiui/maml/util/net/SecureRequest;
.super Ljava/lang/Object;
.source "SecureRequest.java"


# static fields
.field private static final UTF8:Ljava/lang/String; = "utf-8"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decryptResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/util/net/CipherException;,
            Lmiui/maml/util/net/InvalidResponseException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lmiui/maml/util/net/CloudCoder;->newAESCipher(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    move-result-object v1

    if-eqz v1, :cond_25

    const/4 v2, 0x0

    :try_start_8
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    new-instance v3, Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_17} :catch_19

    move-object v2, v3

    goto :goto_1a

    :catch_19
    move-exception v0

    :goto_1a
    if-eqz v2, :cond_1d

    return-object v2

    :cond_1d
    new-instance v0, Lmiui/maml/util/net/InvalidResponseException;

    const-string v3, "failed to decrypt response"

    invoke-direct {v0, v3}, Lmiui/maml/util/net/InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    new-instance v0, Lmiui/maml/util/net/CipherException;

    const-string v2, "failed to init cipher"

    invoke-direct {v0, v2}, Lmiui/maml/util/net/CipherException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static encryptParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/util/net/CipherException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p3, v0}, Lmiui/maml/util/net/CloudCoder;->newAESCipher(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    move-result-object v0

    if-eqz v0, :cond_68

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_5e

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5e

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v5, :cond_5d

    if-eqz v6, :cond_5d

    const-string v7, "_"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5a

    :try_start_40
    const-string v7, "utf-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v0, v7}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4f} :catch_51

    move-object v6, v7

    goto :goto_5a

    :catch_51
    move-exception v3

    new-instance v7, Lmiui/maml/util/net/CipherException;

    const-string v8, "failed to encrypt request params"

    invoke-direct {v7, v8, v3}, Lmiui/maml/util/net/CipherException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :cond_5a
    :goto_5a
    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5d
    goto :goto_1c

    :cond_5e
    invoke-static {p0, p1, v1, p3}, Lmiui/maml/util/net/CloudCoder;->generateSignature(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "signature"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_68
    new-instance v1, Lmiui/maml/util/net/CipherException;

    const-string v2, "failed to init cipher"

    invoke-direct {v1, v2}, Lmiui/maml/util/net/CipherException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getAsMap(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lmiui/maml/util/net/SimpleRequest$MapContent;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Lmiui/maml/util/net/SimpleRequest$MapContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/maml/util/net/CipherException;,
            Lmiui/maml/util/net/AccessDeniedException;,
            Lmiui/maml/util/net/InvalidResponseException;,
            Lmiui/maml/util/net/AuthenticationFailureException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lmiui/maml/util/net/SecureRequest;->getAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lmiui/maml/util/net/SimpleRequest$StringContent;

    move-result-object v0

    invoke-static {v0}, Lmiui/maml/util/net/SimpleRequest;->convertStringToMap(Lmiui/maml/util/net/SimpleRequest$StringContent;)Lmiui/maml/util/net/SimpleRequest$MapContent;

    move-result-object v1

    return-object v1
.end method

.method public static getAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lmiui/maml/util/net/SimpleRequest$StringContent;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Lmiui/maml/util/net/SimpleRequest$StringContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/maml/util/net/CipherException;,
            Lmiui/maml/util/net/AccessDeniedException;,
            Lmiui/maml/util/net/InvalidResponseException;,
            Lmiui/maml/util/net/AuthenticationFailureException;
        }
    .end annotation

    const-string v0, "GET"

    invoke-static {v0, p0, p1, p4}, Lmiui/maml/util/net/SecureRequest;->encryptParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lmiui/maml/util/net/SimpleRequest;->getAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lmiui/maml/util/net/SimpleRequest$StringContent;

    move-result-object v1

    invoke-static {v1, p4}, Lmiui/maml/util/net/SecureRequest;->processStringResponse(Lmiui/maml/util/net/SimpleRequest$StringContent;Ljava/lang/String;)Lmiui/maml/util/net/SimpleRequest$StringContent;

    move-result-object v2

    return-object v2
.end method

.method public static postAsMap(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lmiui/maml/util/net/SimpleRequest$MapContent;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Lmiui/maml/util/net/SimpleRequest$MapContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/maml/util/net/AccessDeniedException;,
            Lmiui/maml/util/net/InvalidResponseException;,
            Lmiui/maml/util/net/CipherException;,
            Lmiui/maml/util/net/AuthenticationFailureException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lmiui/maml/util/net/SecureRequest;->postAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lmiui/maml/util/net/SimpleRequest$StringContent;

    move-result-object v0

    invoke-static {v0}, Lmiui/maml/util/net/SimpleRequest;->convertStringToMap(Lmiui/maml/util/net/SimpleRequest$StringContent;)Lmiui/maml/util/net/SimpleRequest$MapContent;

    move-result-object v1

    return-object v1
.end method

.method public static postAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lmiui/maml/util/net/SimpleRequest$StringContent;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Lmiui/maml/util/net/SimpleRequest$StringContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/maml/util/net/CipherException;,
            Lmiui/maml/util/net/AccessDeniedException;,
            Lmiui/maml/util/net/InvalidResponseException;,
            Lmiui/maml/util/net/AuthenticationFailureException;
        }
    .end annotation

    const-string v0, "POST"

    invoke-static {v0, p0, p1, p4}, Lmiui/maml/util/net/SecureRequest;->encryptParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lmiui/maml/util/net/SimpleRequest;->postAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lmiui/maml/util/net/SimpleRequest$StringContent;

    move-result-object v1

    invoke-static {v1, p4}, Lmiui/maml/util/net/SecureRequest;->processStringResponse(Lmiui/maml/util/net/SimpleRequest$StringContent;Ljava/lang/String;)Lmiui/maml/util/net/SimpleRequest$StringContent;

    move-result-object v2

    return-object v2
.end method

.method private static processStringResponse(Lmiui/maml/util/net/SimpleRequest$StringContent;Ljava/lang/String;)Lmiui/maml/util/net/SimpleRequest$StringContent;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/maml/util/net/InvalidResponseException;,
            Lmiui/maml/util/net/CipherException;
        }
    .end annotation

    if-eqz p0, :cond_21

    invoke-virtual {p0}, Lmiui/maml/util/net/SimpleRequest$StringContent;->getBody()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-static {v0, p1}, Lmiui/maml/util/net/SecureRequest;->decryptResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lmiui/maml/util/net/SimpleRequest$StringContent;

    invoke-direct {v2, v1}, Lmiui/maml/util/net/SimpleRequest$StringContent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/maml/util/net/SimpleRequest$StringContent;->getHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/maml/util/net/SimpleRequest$StringContent;->putHeaders(Ljava/util/Map;)V

    return-object v2

    :cond_19
    new-instance v1, Lmiui/maml/util/net/InvalidResponseException;

    const-string v2, "invalid response from server"

    invoke-direct {v1, v2}, Lmiui/maml/util/net/InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_21
    new-instance v0, Ljava/io/IOException;

    const-string v1, "no response from server"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
