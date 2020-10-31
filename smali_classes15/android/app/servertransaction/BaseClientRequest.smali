.class public interface abstract Landroid/app/servertransaction/BaseClientRequest;
.super Ljava/lang/Object;
.source "BaseClientRequest.java"

# interfaces
.implements Landroid/app/servertransaction/ObjectPoolItem;


# virtual methods
.method public abstract execute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;Landroid/app/servertransaction/PendingTransactionActions;)V
.end method

.method public postExecute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 4

    return-void
.end method

.method public preExecute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;)V
    .registers 3

    return-void
.end method
