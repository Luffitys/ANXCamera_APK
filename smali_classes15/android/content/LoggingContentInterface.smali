.class public Landroid/content/LoggingContentInterface;
.super Ljava/lang/Object;
.source "LoggingContentInterface.java"

# interfaces
.implements Landroid/content/ContentInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/LoggingContentInterface$Logger;
    }
.end annotation


# instance fields
.field private final delegate:Landroid/content/ContentInterface;

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/ContentInterface;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/LoggingContentInterface;->tag:Ljava/lang/String;

    iput-object p2, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    return-void
.end method

.method static synthetic access$000(Landroid/content/LoggingContentInterface;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/LoggingContentInterface;->tag:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v2, "applyBatch"

    invoke-direct {v0, p0, v2, v1}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_10
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2}, Landroid/content/ContentInterface;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/ContentProviderResult;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1c} :catch_22
    .catchall {:try_start_10 .. :try_end_1c} :catchall_20

    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    return-object v1

    :catchall_20
    move-exception v1

    goto :goto_28

    :catch_22
    move-exception v1

    :try_start_23
    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    nop

    throw v1
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_20

    :goto_28
    :try_start_28
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_30

    :catchall_2c
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_30
    throw v1
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v2, "bulkInsert"

    invoke-direct {v0, p0, v2, v1}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_10
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2}, Landroid/content/ContentInterface;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_24} :catch_2a
    .catchall {:try_start_10 .. :try_end_24} :catchall_28

    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    return v1

    :catchall_28
    move-exception v1

    goto :goto_30

    :catch_2a
    move-exception v1

    :try_start_2b
    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    nop

    throw v1
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_28

    :goto_30
    :try_start_30
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    goto :goto_38

    :catchall_34
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_38
    throw v1
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const-string v2, "call"

    invoke-direct {v0, p0, v2, v1}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_16
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/content/ContentInterface;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_22} :catch_28
    .catchall {:try_start_16 .. :try_end_22} :catchall_26

    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    return-object v1

    :catchall_26
    move-exception v1

    goto :goto_2e

    :catch_28
    move-exception v1

    :try_start_29
    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    nop

    throw v1
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_26

    :goto_2e
    :try_start_2e
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_32

    goto :goto_36

    :catchall_32
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_36
    throw v1
.end method

.method public canonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "canonicalize"

    invoke-direct {v0, p0, v2, v1}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_d
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1}, Landroid/content/ContentInterface;->canonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_19} :catch_1f
    .catchall {:try_start_d .. :try_end_19} :catchall_1d

    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    return-object v1

    :catchall_1d
    move-exception v1

    goto :goto_25

    :catch_1f
    move-exception v1

    :try_start_20
    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    nop

    throw v1
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_1d

    :goto_25
    :try_start_25
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_2d

    :catchall_29
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2d
    throw v1
.end method

.method public checkUriPermission(Landroid/net/Uri;II)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "checkUriPermission"

    invoke-direct {v0, p0, v2, v1}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_1b
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/ContentInterface;->checkUriPermission(Landroid/net/Uri;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2f} :catch_35
    .catchall {:try_start_1b .. :try_end_2f} :catchall_33

    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    return v1

    :catchall_33
    move-exception v1

    goto :goto_3b

    :catch_35
    move-exception v1

    :try_start_36
    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    nop

    throw v1
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_33

    :goto_3b
    :try_start_3b
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    goto :goto_43

    :catchall_3f
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_43
    throw v1
.end method

.method public delete(Landroid/net/Uri;Landroid/os/Bundle;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v2, "delete"

    invoke-direct {v0, p0, v2, v1}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_10
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2}, Landroid/content/ContentInterface;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_24} :catch_2a
    .catchall {:try_start_10 .. :try_end_24} :catchall_28

    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    return v1

    :catchall_28
    move-exception v1

    goto :goto_30

    :catch_2a
    move-exception v1

    :try_start_2b
    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    nop

    throw v1
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_28

    :goto_30
    :try_start_30
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    goto :goto_38

    :catchall_34
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_38
    throw v1
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v2, "getStreamTypes"

    invoke-direct {v0, p0, v2, v1}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_10
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2}, Landroid/content/ContentInterface;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1c} :catch_22
    .catchall {:try_start_10 .. :try_end_1c} :catchall_20

    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    return-object v1

    :catchall_20
    move-exception v1

    goto :goto_28

    :catch_22
    move-exception v1

    :try_start_23
    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    nop

    throw v1
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_20

    :goto_28
    :try_start_28
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_30

    :catchall_2c
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_30
    throw v1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "getType"

    invoke-direct {v0, p0, v2, v1}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_d
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1}, Landroid/content/ContentInterface;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_19} :catch_1f
    .catchall {:try_start_d .. :try_end_19} :catchall_1d

    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    return-object v1

    :catchall_1d
    move-exception v1

    goto :goto_25

    :catch_1f
    move-exception v1

    :try_start_20
    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    nop

    throw v1
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_1d

    :goto_25
    :try_start_25
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_2d

    :catchall_29
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2d
    throw v1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const-string v2, "insert"

    invoke-direct {v0, p0, v2, v1}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_13
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/ContentInterface;->insert(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1f} :catch_25
    .catchall {:try_start_13 .. :try_end_1f} :catchall_23

    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    return-object v1

    :catchall_23
    move-exception v1

    goto :goto_2b

    :catch_25
    move-exception v1

    :try_start_26
    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    nop

    throw v1
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_23

    :goto_2b
    :try_start_2b
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2f

    goto :goto_33

    :catchall_2f
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_33
    throw v1
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const-string/jumbo v2, "openAssetFile"

    invoke-direct {v0, p0, v2, v1}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_14
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/ContentInterface;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/AssetFileDescriptor;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_20} :catch_26
    .catchall {:try_start_14 .. :try_end_20} :catchall_24

    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    return-object v1

    :catchall_24
    move-exception v1

    goto :goto_2c

    :catch_26
    move-exception v1

    :try_start_27
    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    nop

    throw v1
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_24

    :goto_2c
    :try_start_2c
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    goto :goto_34

    :catchall_30
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_34
    throw v1
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const-string/jumbo v2, "openFile"

    invoke-direct {v0, p0, v2, v1}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_14
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/ContentInterface;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_20} :catch_26
    .catchall {:try_start_14 .. :try_end_20} :catchall_24

    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    return-object v1

    :catchall_24
    move-exception v1

    goto :goto_2c

    :catch_26
    move-exception v1

    :try_start_27
    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    nop

    throw v1
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_24

    :goto_2c
    :try_start_2c
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    goto :goto_34

    :catchall_30
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_34
    throw v1
.end method

.method public openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const-string/jumbo v2, "openTypedAssetFile"

    invoke-direct {v0, p0, v2, v1}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_17
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/content/ContentInterface;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/AssetFileDescriptor;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_23} :catch_29
    .catchall {:try_start_17 .. :try_end_23} :catchall_27

    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    return-object v1

    :catchall_27
    move-exception v1

    goto :goto_2f

    :catch_29
    move-exception v1

    :try_start_2a
    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    nop

    throw v1
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_27

    :goto_2f
    :try_start_2f
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    goto :goto_37

    :catchall_33
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_37
    throw v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const-string/jumbo v2, "query"

    invoke-direct {v0, p0, v2, v1}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_17
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/content/ContentInterface;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_23} :catch_29
    .catchall {:try_start_17 .. :try_end_23} :catchall_27

    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    return-object v1

    :catchall_27
    move-exception v1

    goto :goto_2f

    :catch_29
    move-exception v1

    :try_start_2a
    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    nop

    throw v1
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_27

    :goto_2f
    :try_start_2f
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    goto :goto_37

    :catchall_33
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_37
    throw v1
.end method

.method public refresh(Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const-string/jumbo v2, "refresh"

    invoke-direct {v0, p0, v2, v1}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_14
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/ContentInterface;->refresh(Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_28} :catch_2e
    .catchall {:try_start_14 .. :try_end_28} :catchall_2c

    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    return v1

    :catchall_2c
    move-exception v1

    goto :goto_34

    :catch_2e
    move-exception v1

    :try_start_2f
    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    nop

    throw v1
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_2c

    :goto_34
    :try_start_34
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    goto :goto_3c

    :catchall_38
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3c
    throw v1
.end method

.method public uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string/jumbo v2, "uncanonicalize"

    invoke-direct {v0, p0, v2, v1}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_e
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1}, Landroid/content/ContentInterface;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1a} :catch_20
    .catchall {:try_start_e .. :try_end_1a} :catchall_1e

    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    return-object v1

    :catchall_1e
    move-exception v1

    goto :goto_26

    :catch_20
    move-exception v1

    :try_start_21
    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    nop

    throw v1
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_1e

    :goto_26
    :try_start_26
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_2e

    :catchall_2a
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2e
    throw v1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const-string/jumbo v2, "update"

    invoke-direct {v0, p0, v2, v1}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_14
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/ContentInterface;->update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_28} :catch_2e
    .catchall {:try_start_14 .. :try_end_28} :catchall_2c

    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    return v1

    :catchall_2c
    move-exception v1

    goto :goto_34

    :catch_2e
    move-exception v1

    :try_start_2f
    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    nop

    throw v1
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_2c

    :goto_34
    :try_start_34
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    goto :goto_3c

    :catchall_38
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3c
    throw v1
.end method
