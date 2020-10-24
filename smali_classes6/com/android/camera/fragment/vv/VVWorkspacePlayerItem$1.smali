.class Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/mediaprocess/EffectNotifier;


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem$1;->this$0:Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnReceiveFailed()V
    .locals 1

    const-string p0, "OnReceiveFailed:"

    const-string v0, "yes"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public OnReceiveFinish()V
    .locals 1

    const-string p0, "OnReceiveFinish:"

    const-string v0, "yes"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
