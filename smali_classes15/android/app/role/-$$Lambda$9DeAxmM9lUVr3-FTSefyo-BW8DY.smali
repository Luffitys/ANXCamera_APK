.class public final synthetic Landroid/app/role/-$$Lambda$9DeAxmM9lUVr3-FTSefyo-BW8DY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/role/-$$Lambda$9DeAxmM9lUVr3-FTSefyo-BW8DY;->f$0:Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Landroid/app/role/-$$Lambda$9DeAxmM9lUVr3-FTSefyo-BW8DY;->f$0:Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {v0, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method
