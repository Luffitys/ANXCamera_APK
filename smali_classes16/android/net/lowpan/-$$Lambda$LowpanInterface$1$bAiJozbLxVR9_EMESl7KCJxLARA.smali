.class public final synthetic Landroid/net/lowpan/-$$Lambda$LowpanInterface$1$bAiJozbLxVR9_EMESl7KCJxLARA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/lowpan/LowpanInterface$Callback;

.field public final synthetic f$1:Landroid/net/LinkAddress;


# direct methods
.method public synthetic constructor <init>(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/LinkAddress;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/lowpan/-$$Lambda$LowpanInterface$1$bAiJozbLxVR9_EMESl7KCJxLARA;->f$0:Landroid/net/lowpan/LowpanInterface$Callback;

    iput-object p2, p0, Landroid/net/lowpan/-$$Lambda$LowpanInterface$1$bAiJozbLxVR9_EMESl7KCJxLARA;->f$1:Landroid/net/LinkAddress;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/net/lowpan/-$$Lambda$LowpanInterface$1$bAiJozbLxVR9_EMESl7KCJxLARA;->f$0:Landroid/net/lowpan/LowpanInterface$Callback;

    iget-object v1, p0, Landroid/net/lowpan/-$$Lambda$LowpanInterface$1$bAiJozbLxVR9_EMESl7KCJxLARA;->f$1:Landroid/net/LinkAddress;

    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanInterface$1;->lambda$onLinkAddressRemoved$9(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/LinkAddress;)V

    return-void
.end method
