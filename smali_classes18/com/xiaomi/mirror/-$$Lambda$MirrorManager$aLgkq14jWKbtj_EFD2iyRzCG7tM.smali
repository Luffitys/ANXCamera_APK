.class public final synthetic Lcom/xiaomi/mirror/-$$Lambda$MirrorManager$aLgkq14jWKbtj_EFD2iyRzCG7tM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/xiaomi/mirror/MirrorManager;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/mirror/MirrorManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/mirror/-$$Lambda$MirrorManager$aLgkq14jWKbtj_EFD2iyRzCG7tM;->f$0:Lcom/xiaomi/mirror/MirrorManager;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/mirror/-$$Lambda$MirrorManager$aLgkq14jWKbtj_EFD2iyRzCG7tM;->f$0:Lcom/xiaomi/mirror/MirrorManager;

    invoke-static {v0}, Lcom/xiaomi/mirror/MirrorManager;->lambda$aLgkq14jWKbtj_EFD2iyRzCG7tM(Lcom/xiaomi/mirror/MirrorManager;)V

    return-void
.end method
