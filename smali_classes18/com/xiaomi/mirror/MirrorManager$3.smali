.class Lcom/xiaomi/mirror/MirrorManager$3;
.super Lcom/xiaomi/mirror/IMirrorStateListener$Stub;
.source "MirrorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mirror/MirrorManager;->initService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/mirror/MirrorManager;


# direct methods
.method constructor <init>(Lcom/xiaomi/mirror/MirrorManager;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/mirror/MirrorManager$3;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    invoke-direct {p0}, Lcom/xiaomi/mirror/IMirrorStateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelegateStateChanged(Z)V
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager$3;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    # setter for: Lcom/xiaomi/mirror/MirrorManager;->mDelegating:Z
    invoke-static {v0, p1}, Lcom/xiaomi/mirror/MirrorManager;->access$502(Lcom/xiaomi/mirror/MirrorManager;Z)Z

    return-void
.end method
