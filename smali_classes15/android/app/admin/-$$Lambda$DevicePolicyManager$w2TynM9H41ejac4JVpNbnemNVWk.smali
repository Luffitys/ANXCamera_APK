.class public final synthetic Landroid/app/admin/-$$Lambda$DevicePolicyManager$w2TynM9H41ejac4JVpNbnemNVWk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CompletableFuture;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/admin/-$$Lambda$DevicePolicyManager$w2TynM9H41ejac4JVpNbnemNVWk;->f$0:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Landroid/app/admin/-$$Lambda$DevicePolicyManager$w2TynM9H41ejac4JVpNbnemNVWk;->f$0:Ljava/util/concurrent/CompletableFuture;

    invoke-static {v0, p1}, Landroid/app/admin/DevicePolicyManager;->lambda$setPermissionGrantState$0(Ljava/util/concurrent/CompletableFuture;Landroid/os/Bundle;)V

    return-void
.end method
