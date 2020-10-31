.class public final Lmiui/provider/BatchOperation;
.super Ljava/lang/Object;
.source "BatchOperation.java"


# static fields
.field public static final BATCH_EXECUTE_SIZE:I = 0x64


# instance fields
.field private final mAuthority:Ljava/lang/String;

.field private final mOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/provider/BatchOperation;->mResolver:Landroid/content/ContentResolver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/provider/BatchOperation;->mOperations:Ljava/util/ArrayList;

    iput-object p2, p0, Lmiui/provider/BatchOperation;->mAuthority:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public add(Landroid/content/ContentProviderOperation;)V
    .registers 3

    iget-object v0, p0, Lmiui/provider/BatchOperation;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public execute()Landroid/net/Uri;
    .registers 7

    const-string v0, "storing contact data failed"

    const-string v1, "BatchOperation"

    const/4 v2, 0x0

    iget-object v3, p0, Lmiui/provider/BatchOperation;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_e

    return-object v2

    :cond_e
    :try_start_e
    iget-object v3, p0, Lmiui/provider/BatchOperation;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lmiui/provider/BatchOperation;->mAuthority:Ljava/lang/String;

    iget-object v5, p0, Lmiui/provider/BatchOperation;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v3

    if-eqz v3, :cond_23

    array-length v4, v3

    if-lez v4, :cond_23

    const/4 v4, 0x0

    aget-object v4, v3, v4

    iget-object v0, v4, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;
    :try_end_22
    .catch Landroid/content/OperationApplicationException; {:try_start_e .. :try_end_22} :catch_29
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_22} :catch_24

    move-object v2, v0

    :cond_23
    :goto_23
    goto :goto_2e

    :catch_24
    move-exception v3

    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e

    :catch_29
    move-exception v3

    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    :goto_2e
    iget-object v0, p0, Lmiui/provider/BatchOperation;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-object v2
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .registers 2

    iget-object v0, p0, Lmiui/provider/BatchOperation;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lmiui/provider/BatchOperation;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmiui/provider/BatchOperation;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentProviderOperation;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
