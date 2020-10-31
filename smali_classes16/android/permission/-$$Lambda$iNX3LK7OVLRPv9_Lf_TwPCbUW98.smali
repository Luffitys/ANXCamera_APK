.class public final synthetic Landroid/permission/-$$Lambda$iNX3LK7OVLRPv9_Lf_TwPCbUW98;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/permission/-$$Lambda$iNX3LK7OVLRPv9_Lf_TwPCbUW98;->f$0:Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/permission/-$$Lambda$iNX3LK7OVLRPv9_Lf_TwPCbUW98;->f$0:Lcom/android/internal/infra/AndroidFuture;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method
