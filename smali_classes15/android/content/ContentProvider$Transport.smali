.class Landroid/content/ContentProvider$Transport;
.super Landroid/content/ContentProviderNative;
.source "ContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Transport"
.end annotation


# instance fields
.field volatile mAppOpsManager:Landroid/app/AppOpsManager;

.field volatile mInterface:Landroid/content/ContentInterface;

.field volatile mReadOp:I

.field volatile mWriteOp:I

.field final synthetic this$0:Landroid/content/ContentProvider;


# direct methods
.method constructor <init>(Landroid/content/ContentProvider;)V
    .registers 3

    iput-object p1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-direct {p0}, Landroid/content/ContentProviderNative;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/4 v0, -0x1

    iput v0, p0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    iput v0, p0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    iput-object v0, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    return-void
.end method

.method static synthetic access$300(Landroid/content/ContentProvider$Transport;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/ContentProvider$Transport;->noteProxyOp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private enforceFilePermission(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    const-string v0, "App op not allowed"

    if-eqz p4, :cond_1a

    const/16 v1, 0x77

    invoke-virtual {p4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1a

    invoke-direct {p0, p1, p2, p3, p5}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v1

    if-nez v1, :cond_14

    goto :goto_20

    :cond_14
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1a
    invoke-direct {p0, p1, p2, p3, p5}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v1

    if-nez v1, :cond_21

    :goto_20
    return-void

    :cond_21
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private enforceReadPermission(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p3, p1, p2, p4}, Landroid/content/ContentProvider;->enforceReadPermissionInner(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v0

    if-eqz v0, :cond_9

    return v0

    :cond_9
    iget v1, p0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    const-string v2, "ContentProvider#enforceWritePermission"

    invoke-direct {p0, p1, p2, v1, v2}, Landroid/content/ContentProvider$Transport;->noteProxyOp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    return v1
.end method

.method private enforceWritePermission(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p3, p1, p2, p4}, Landroid/content/ContentProvider;->enforceWritePermissionInner(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v0

    if-eqz v0, :cond_9

    return v0

    :cond_9
    iget v1, p0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    const-string v2, "ContentProvider#enforceWritePermission"

    invoke-direct {p0, p1, p2, v1, v2}, Landroid/content/ContentProvider$Transport;->noteProxyOp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    return v1
.end method

.method private noteProxyOp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .registers 12

    const/4 v0, -0x1

    if-eq p3, v0, :cond_18

    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move v2, p3

    move-object v3, p1

    move-object v5, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteProxyOp(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    move v1, v0

    :goto_17
    return v1

    :cond_18
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public applyBatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->validateIncomingAuthority(Ljava/lang/String;)V
    invoke-static {v0, p3}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_6a

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentProviderOperation;

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v5

    aput v5, v1, v2

    iget-object v5, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v5, v4}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->maybeGetUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;
    invoke-static {v5, v4}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d

    new-instance v5, Landroid/content/ContentProviderOperation;

    invoke-direct {v5, v3, v4}, Landroid/content/ContentProviderOperation;-><init>(Landroid/content/ContentProviderOperation;Landroid/net/Uri;)V

    move-object v3, v5

    invoke-virtual {p4, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation;->isReadOperation()Z

    move-result v5

    const/4 v6, 0x0

    const-string v7, "App op not allowed"

    const/4 v8, 0x0

    if-eqz v5, :cond_54

    invoke-direct {p0, p1, p2, v4, v8}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v5

    if-nez v5, :cond_4e

    goto :goto_54

    :cond_4e
    new-instance v5, Landroid/content/OperationApplicationException;

    invoke-direct {v5, v7, v6}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    throw v5

    :cond_54
    :goto_54
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation;->isWriteOperation()Z

    move-result v5

    if-eqz v5, :cond_67

    invoke-direct {p0, p1, p2, v4, v8}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v5

    if-nez v5, :cond_61

    goto :goto_67

    :cond_61
    new-instance v5, Landroid/content/OperationApplicationException;

    invoke-direct {v5, v7, v6}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    throw v5

    :cond_67
    :goto_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_6a
    const-wide/32 v2, 0x100000

    const-string v4, "applyBatch"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Landroid/util/Pair;)Landroid/util/Pair;
    invoke-static {v4, v5}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/util/Pair;)Landroid/util/Pair;

    move-result-object v4

    :try_start_7d
    iget-object v5, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v5, p3, p4}, Landroid/content/ContentInterface;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v5

    if-eqz v5, :cond_9c

    const/4 v6, 0x0

    :goto_86
    array-length v7, v5

    if-ge v6, v7, :cond_9c

    aget v7, v1, v6

    const/4 v8, -0x2

    if-eq v7, v8, :cond_99

    new-instance v7, Landroid/content/ContentProviderResult;

    aget-object v8, v5, v6

    aget v9, v1, v6

    invoke-direct {v7, v8, v9}, Landroid/content/ContentProviderResult;-><init>(Landroid/content/ContentProviderResult;I)V

    aput-object v7, v5, v6
    :try_end_99
    .catch Landroid/os/RemoteException; {:try_start_7d .. :try_end_99} :catch_a8
    .catchall {:try_start_7d .. :try_end_99} :catchall_a6

    :cond_99
    add-int/lit8 v6, v6, 0x1

    goto :goto_86

    :cond_9c
    nop

    iget-object v6, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Landroid/util/Pair;)Landroid/util/Pair;
    invoke-static {v6, v4}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/util/Pair;)Landroid/util/Pair;

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-object v5

    :catchall_a6
    move-exception v5

    goto :goto_ae

    :catch_a8
    move-exception v5

    :try_start_a9
    invoke-virtual {v5}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6
    :try_end_ae
    .catchall {:try_start_a9 .. :try_end_ae} :catchall_a6

    :goto_ae
    iget-object v6, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Landroid/util/Pair;)Landroid/util/Pair;
    invoke-static {v6, v4}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/util/Pair;)Landroid/util/Pair;

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v5
.end method

.method public bulkInsert(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 10

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p3}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p3

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->maybeGetUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;
    invoke-static {v0, p3}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    return v0

    :cond_15
    const-wide/32 v0, 0x100000

    const-string v2, "bulkInsert"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Landroid/util/Pair;)Landroid/util/Pair;
    invoke-static {v2, v3}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/util/Pair;)Landroid/util/Pair;

    move-result-object v2

    :try_start_28
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v3, p3, p4}, Landroid/content/ContentInterface;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v3
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2e} :catch_39
    .catchall {:try_start_28 .. :try_end_2e} :catchall_37

    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Landroid/util/Pair;)Landroid/util/Pair;
    invoke-static {v4, v2}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/util/Pair;)Landroid/util/Pair;

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_37
    move-exception v3

    goto :goto_3f

    :catch_39
    move-exception v3

    :try_start_3a
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_37

    :goto_3f
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Landroid/util/Pair;)Landroid/util/Pair;
    invoke-static {v4, v2}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/util/Pair;)Landroid/util/Pair;

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v3
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 12

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->validateIncomingAuthority(Ljava/lang/String;)V
    invoke-static {v0, p3}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p6, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    const-wide/32 v0, 0x100000

    const-string v2, "call"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Landroid/util/Pair;)Landroid/util/Pair;
    invoke-static {v2, v3}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/util/Pair;)Landroid/util/Pair;

    move-result-object v2

    :try_start_1c
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v3, p3, p4, p5, p6}, Landroid/content/ContentInterface;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_22} :catch_2d
    .catchall {:try_start_1c .. :try_end_22} :catchall_2b

    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Landroid/util/Pair;)Landroid/util/Pair;
    invoke-static {v4, v2}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/util/Pair;)Landroid/util/Pair;

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    :catchall_2b
    move-exception v3

    goto :goto_33

    :catch_2d
    move-exception v3

    :try_start_2e
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_2b

    :goto_33
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Landroid/util/Pair;)Landroid/util/Pair;
    invoke-static {v4, v2}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/util/Pair;)Landroid/util/Pair;

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v3
.end method

.method public canonicalize(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 10

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p3}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p3

    invoke-static {p3}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v0

    invoke-static {p3}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p3

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v2

    if-eqz v2, :cond_16

    return-object v1

    :cond_16
    const-wide/32 v1, 0x100000

    const-string v3, "canonicalize"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Landroid/util/Pair;)Landroid/util/Pair;
    invoke-static {v3, v4}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/util/Pair;)Landroid/util/Pair;

    move-result-object v3

    :try_start_29
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v4, p3}, Landroid/content/ContentInterface;->canonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v4
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_33} :catch_3e
    .catchall {:try_start_29 .. :try_end_33} :catchall_3c

    iget-object v5, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Landroid/util/Pair;)Landroid/util/Pair;
    invoke-static {v5, v3}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/util/Pair;)Landroid/util/Pair;

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object v4

    :catchall_3c
    move-exception v4

    goto :goto_44

    :catch_3e
    move-exception v4

    :try_start_3f
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_3c

    :goto_44
    iget-object v5, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Landroid/util/Pair;)Landroid/util/Pair;
    invoke-static {v5, v3}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/util/Pair;)Landroid/util/Pair;

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v4
.end method

.method public canonicalizeAsync(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .registers 9

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :try_start_5
    const-string/jumbo v1, "result"

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentProvider$Transport;->canonicalize(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_10

    goto :goto_1b

    :catch_10
    move-exception v1

    new-instance v2, Landroid/os/ParcelableException;

    invoke-direct {v2, v1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    const-string v3, "error"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :goto_1b
    invoke-virtual {p4, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method public checkUriPermission(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;II)I
    .registers 11

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p3}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p3

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->maybeGetUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;
    invoke-static {v0, p3}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p3

    const-wide/32 v0, 0x100000

    const-string v2, "checkUriPermission"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Landroid/util/Pair;)Landroid/util/Pair;
    invoke-static {v2, v3}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/util/Pair;)Landroid/util/Pair;

    move-result-object v2

    :try_start_1f
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v3, p3, p4, p5}, Landroid/content/ContentInterface;->checkUriPermission(Landroid/net/Uri;II)I

    move-result v3
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_25} :catch_30
    .catchall {:try_start_1f .. :try_end_25} :catchall_2e

    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Landroid/util/Pair;)Landroid/util/Pair;
    invoke-static {v4, v2}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/util/Pair;)Landroid/util/Pair;

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_2e
    move-exception v3

    goto :goto_36

    :catch_30
    move-exception v3

    :try_start_31
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_2e

    :goto_36
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Landroid/util/Pair;)Landroid/util/Pair;
    invoke-static {v4, v2}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/util/Pair;)Landroid/util/Pair;

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v3
.end method

.method public createCancellationSignal()Landroid/os/ICancellationSignal;
    .registers 2

    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)I
    .registers 10

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p3}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p3

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->maybeGetUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;
    invoke-static {v0, p3}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    return v0

    :cond_15
    const-wide/32 v0, 0x100000

    const-string v2, "delete"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Landroid/util/Pair;)Landroid/util/Pair;
    invoke-static {v2, v3}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/util/Pair;)Landroid/util/Pair;

    move-result-object v2

    :try_start_28
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v3, p3, p4}, Landroid/content/ContentInterface;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I

    move-result v3
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2e} :catch_39
    .catchall {:try_start_28 .. :try_end_2e} :catchall_37

    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Landroid/util/Pair;)Landroid/util/Pair;
    invoke-static {v4, v2}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/util/Pair;)Landroid/util/Pair;

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_37
    move-exception v3

    goto :goto_3f

    :catch_39
    move-exception v3

    :try_start_3a
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_37

    :goto_3f
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Landroid/util/Pair;)Landroid/util/Pair;
    invoke-static {v4, v2}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/util/Pair;)Landroid/util/Pair;

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v3
.end method

.method getContentProvider()Landroid/content/ContentProvider;
    .registers 2

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    return-object v0
.end method

.method public getProviderName()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Landroid/content/ContentProvider$Transport;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->maybeGetUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    const-wide/32 v0, 0x100000

    const-string v2, "getStreamTypes"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_14
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v2, p1, p2}, Landroid/content/ContentInterface;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1a} :catch_20
    .catchall {:try_start_14 .. :try_end_1a} :catchall_1e

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object v2

    :catchall_1e
    move-exception v2

    goto :goto_26

    :catch_20
    move-exception v2

    :try_start_21
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_1e

    :goto_26
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->maybeGetUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    const-wide/32 v0, 0x100000

    const-string v2, "getType"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_14
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v2, p1}, Landroid/content/ContentInterface;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1a} :catch_20
    .catchall {:try_start_14 .. :try_end_1a} :catchall_1e

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object v2

    :catchall_1e
    move-exception v2

    goto :goto_26

    :catch_20
    move-exception v2

    :try_start_21
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_1e

    :goto_26
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public getTypeAsync(Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .registers 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :try_start_5
    const-string/jumbo v1, "result"

    invoke-virtual {p0, p1}, Landroid/content/ContentProvider$Transport;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_10

    goto :goto_1b

    :catch_10
    move-exception v1

    new-instance v2, Landroid/os/ParcelableException;

    invoke-direct {v2, v1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    const-string v3, "error"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :goto_1b
    invoke-virtual {p2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;
    .registers 12

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p3}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p3

    invoke-static {p3}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v0

    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->maybeGetUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;
    invoke-static {v1, p3}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p3

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Landroid/util/Pair;)Landroid/util/Pair;
    invoke-static {v1, v2}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/util/Pair;)Landroid/util/Pair;

    move-result-object v1

    :try_start_22
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v2, p3, p4}, Landroid/content/ContentProvider;->rejectInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_2e

    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Landroid/util/Pair;)Landroid/util/Pair;
    invoke-static {v3, v1}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/util/Pair;)Landroid/util/Pair;

    return-object v2

    :catchall_2e
    move-exception v2

    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Landroid/util/Pair;)Landroid/util/Pair;
    invoke-static {v3, v1}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/util/Pair;)Landroid/util/Pair;

    throw v2

    :cond_35
    const-wide/32 v1, 0x100000

    const-string v3, "insert"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Landroid/util/Pair;)Landroid/util/Pair;
    invoke-static {v3, v4}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/util/Pair;)Landroid/util/Pair;

    move-result-object v3

    :try_start_48
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v4, p3, p4, p5}, Landroid/content/ContentInterface;->insert(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v4
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_52} :catch_5d
    .catchall {:try_start_48 .. :try_end_52} :catchall_5b

    iget-object v5, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Landroid/util/Pair;)Landroid/util/Pair;
    invoke-static {v5, v3}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/util/Pair;)Landroid/util/Pair;

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object v4

    :catchall_5b
    move-exception v4

    goto :goto_63

    :catch_5d
    move-exception v4

    :try_start_5e
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
    :try_end_63
    .catchall {:try_start_5e .. :try_end_63} :catchall_5b

    :goto_63
    iget-object v5, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Landroid/util/Pair;)Landroid/util/Pair;
    invoke-static {v5, v3}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/util/Pair;)Landroid/util/Pair;

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v4
.end method

.method public openAssetFile(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p3}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p3

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->maybeGetUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;
    invoke-static {v0, p3}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p3

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Landroid/content/ContentProvider$Transport;->enforceFilePermission(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V

    const-wide/32 v0, 0x100000

    const-string/jumbo v2, "openAssetFile"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Landroid/util/Pair;)Landroid/util/Pair;
    invoke-static {v2, v3}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/util/Pair;)Landroid/util/Pair;

    move-result-object v2

    :try_start_29
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-static {p5}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v4

    invoke-interface {v3, p3, p4, v4}, Landroid/content/ContentInterface;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_33} :catch_3e
    .catchall {:try_start_29 .. :try_end_33} :catchall_3c

    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Landroid/util/Pair;)Landroid/util/Pair;
    invoke-static {v4, v2}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/util/Pair;)Landroid/util/Pair;

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    :catchall_3c
    move-exception v3

    goto :goto_44

    :catch_3e
    move-exception v3

    :try_start_3f
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_3c

    :goto_44
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Landroid/util/Pair;)Landroid/util/Pair;
    invoke-static {v4, v2}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/util/Pair;)Landroid/util/Pair;

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v3
.end method

.method public openFile(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;Landroid/os/IBinder;)Landroid/os/ParcelFileDescriptor;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p3}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p3

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->maybeGetUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;
    invoke-static {v0, p3}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Landroid/content/ContentProvider$Transport;->enforceFilePermission(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V

    const-wide/32 v0, 0x100000

    const-string/jumbo v2, "openFile"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Landroid/util/Pair;)Landroid/util/Pair;
    invoke-static {v2, v3}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/util/Pair;)Landroid/util/Pair;

    move-result-object v2

    :try_start_29
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-static {p5}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v4

    invoke-interface {v3, p3, p4, v4}, Landroid/content/ContentInterface;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_33} :catch_3e
    .catchall {:try_start_29 .. :try_end_33} :catchall_3c

    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Landroid/util/Pair;)Landroid/util/Pair;
    invoke-static {v4, v2}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/util/Pair;)Landroid/util/Pair;

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    :catchall_3c
    move-exception v3

    goto :goto_44

    :catch_3e
    move-exception v3

    :try_start_3f
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_3c

    :goto_44
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Landroid/util/Pair;)Landroid/util/Pair;
    invoke-static {v4, v2}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/util/Pair;)Landroid/util/Pair;

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v3
.end method

.method public openTypedAssetFile(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p5, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p3}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p3

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->maybeGetUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;
    invoke-static {v0, p3}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p3

    const-string/jumbo v5, "r"

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Landroid/content/ContentProvider$Transport;->enforceFilePermission(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V

    const-wide/32 v0, 0x100000

    const-string/jumbo v2, "openTypedAssetFile"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Landroid/util/Pair;)Landroid/util/Pair;
    invoke-static {v2, v3}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/util/Pair;)Landroid/util/Pair;

    move-result-object v2

    :try_start_2f
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-static {p6}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v4

    invoke-interface {v3, p3, p4, p5, v4}, Landroid/content/ContentInterface;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_39} :catch_44
    .catchall {:try_start_2f .. :try_end_39} :catchall_42

    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Landroid/util/Pair;)Landroid/util/Pair;
    invoke-static {v4, v2}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/util/Pair;)Landroid/util/Pair;

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    :catchall_42
    move-exception v3

    goto :goto_4a

    :catch_44
    move-exception v3

    :try_start_45
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_42

    :goto_4a
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Landroid/util/Pair;)Landroid/util/Pair;
    invoke-static {v4, v2}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/util/Pair;)Landroid/util/Pair;

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v3
.end method

.method public query(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    .registers 12

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p3}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p3

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->maybeGetUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;
    invoke-static {v0, p3}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v1

    if-eqz v1, :cond_52

    const/4 v1, 0x0

    if-eqz p4, :cond_1c

    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, p4, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    return-object v0

    :cond_1c
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Landroid/util/Pair;)Landroid/util/Pair;
    invoke-static {v2, v3}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/util/Pair;)Landroid/util/Pair;

    move-result-object v2

    :try_start_27
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-static {p6}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v4

    invoke-interface {v3, p3, p4, p5, v4}, Landroid/content/ContentInterface;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_31} :catch_46
    .catchall {:try_start_27 .. :try_end_31} :catchall_44

    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Landroid/util/Pair;)Landroid/util/Pair;
    invoke-static {v4, v2}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/util/Pair;)Landroid/util/Pair;

    nop

    if-nez v3, :cond_3a

    return-object v0

    :cond_3a
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    return-object v0

    :catchall_44
    move-exception v0

    goto :goto_4c

    :catch_46
    move-exception v0

    :try_start_47
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_44

    :goto_4c
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Landroid/util/Pair;)Landroid/util/Pair;
    invoke-static {v1, v2}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/util/Pair;)Landroid/util/Pair;

    throw v0

    :cond_52
    const-wide/32 v0, 0x100000

    const-string/jumbo v2, "query"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Landroid/util/Pair;)Landroid/util/Pair;
    invoke-static {v2, v3}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/util/Pair;)Landroid/util/Pair;

    move-result-object v2

    :try_start_66
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-static {p6}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v4

    invoke-interface {v3, p3, p4, p5, v4}, Landroid/content/ContentInterface;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_70} :catch_7b
    .catchall {:try_start_66 .. :try_end_70} :catchall_79

    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Landroid/util/Pair;)Landroid/util/Pair;
    invoke-static {v4, v2}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/util/Pair;)Landroid/util/Pair;

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    :catchall_79
    move-exception v3

    goto :goto_81

    :catch_7b
    move-exception v3

    :try_start_7c
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
    :try_end_81
    .catchall {:try_start_7c .. :try_end_81} :catchall_79

    :goto_81
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Landroid/util/Pair;)Landroid/util/Pair;
    invoke-static {v4, v2}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/util/Pair;)Landroid/util/Pair;

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v3
.end method

.method public refresh(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p3}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p3

    invoke-static {p3}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    return v0

    :cond_13
    const-wide/32 v0, 0x100000

    const-string/jumbo v2, "refresh"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Landroid/util/Pair;)Landroid/util/Pair;
    invoke-static {v2, v3}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/util/Pair;)Landroid/util/Pair;

    move-result-object v2

    :try_start_27
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-static {p5}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v4

    invoke-interface {v3, p3, p4, v4}, Landroid/content/ContentInterface;->refresh(Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Z

    move-result v3
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_3a

    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Landroid/util/Pair;)Landroid/util/Pair;
    invoke-static {v4, v2}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/util/Pair;)Landroid/util/Pair;

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_3a
    move-exception v3

    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Landroid/util/Pair;)Landroid/util/Pair;
    invoke-static {v4, v2}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/util/Pair;)Landroid/util/Pair;

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v3
.end method

.method public uncanonicalize(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 10

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p3}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p3

    invoke-static {p3}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v0

    invoke-static {p3}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p3

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v2

    if-eqz v2, :cond_16

    return-object v1

    :cond_16
    const-wide/32 v1, 0x100000

    const-string/jumbo v3, "uncanonicalize"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Landroid/util/Pair;)Landroid/util/Pair;
    invoke-static {v3, v4}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/util/Pair;)Landroid/util/Pair;

    move-result-object v3

    :try_start_2a
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v4, p3}, Landroid/content/ContentInterface;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v4
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_34} :catch_3f
    .catchall {:try_start_2a .. :try_end_34} :catchall_3d

    iget-object v5, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Landroid/util/Pair;)Landroid/util/Pair;
    invoke-static {v5, v3}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/util/Pair;)Landroid/util/Pair;

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object v4

    :catchall_3d
    move-exception v4

    goto :goto_45

    :catch_3f
    move-exception v4

    :try_start_40
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_3d

    :goto_45
    iget-object v5, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Landroid/util/Pair;)Landroid/util/Pair;
    invoke-static {v5, v3}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/util/Pair;)Landroid/util/Pair;

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v4
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I
    .registers 11

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p3}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p3

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->maybeGetUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;
    invoke-static {v0, p3}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    return v0

    :cond_15
    const-wide/32 v0, 0x100000

    const-string/jumbo v2, "update"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Landroid/util/Pair;)Landroid/util/Pair;
    invoke-static {v2, v3}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/util/Pair;)Landroid/util/Pair;

    move-result-object v2

    :try_start_29
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v3, p3, p4, p5}, Landroid/content/ContentInterface;->update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    move-result v3
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2f} :catch_3a
    .catchall {:try_start_29 .. :try_end_2f} :catchall_38

    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Landroid/util/Pair;)Landroid/util/Pair;
    invoke-static {v4, v2}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/util/Pair;)Landroid/util/Pair;

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_38
    move-exception v3

    goto :goto_40

    :catch_3a
    move-exception v3

    :try_start_3b
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_38

    :goto_40
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Landroid/util/Pair;)Landroid/util/Pair;
    invoke-static {v4, v2}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/util/Pair;)Landroid/util/Pair;

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v3
.end method
