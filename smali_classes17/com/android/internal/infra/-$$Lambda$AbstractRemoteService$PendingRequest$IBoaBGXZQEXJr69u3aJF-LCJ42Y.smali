.class public final synthetic Lcom/android/internal/infra/-$$Lambda$AbstractRemoteService$PendingRequest$IBoaBGXZQEXJr69u3aJF-LCJ42Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;

.field public final synthetic f$1:Lcom/android/internal/infra/AbstractRemoteService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;Lcom/android/internal/infra/AbstractRemoteService;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/infra/-$$Lambda$AbstractRemoteService$PendingRequest$IBoaBGXZQEXJr69u3aJF-LCJ42Y;->f$0:Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;

    iput-object p2, p0, Lcom/android/internal/infra/-$$Lambda$AbstractRemoteService$PendingRequest$IBoaBGXZQEXJr69u3aJF-LCJ42Y;->f$1:Lcom/android/internal/infra/AbstractRemoteService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/infra/-$$Lambda$AbstractRemoteService$PendingRequest$IBoaBGXZQEXJr69u3aJF-LCJ42Y;->f$0:Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;

    iget-object v1, p0, Lcom/android/internal/infra/-$$Lambda$AbstractRemoteService$PendingRequest$IBoaBGXZQEXJr69u3aJF-LCJ42Y;->f$1:Lcom/android/internal/infra/AbstractRemoteService;

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;->lambda$new$0$AbstractRemoteService$PendingRequest(Lcom/android/internal/infra/AbstractRemoteService;)V

    return-void
.end method
