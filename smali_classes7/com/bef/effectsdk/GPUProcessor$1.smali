.class final Lcom/bef/effectsdk/GPUProcessor$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bef/effectsdk/message/MessageCenter$Listener;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(IIILjava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/bef/effectsdk/GPUProcessor;->access$000()Lcom/bef/effectsdk/GPUProcessor$Listener;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/bef/effectsdk/GPUProcessor;->access$000()Lcom/bef/effectsdk/GPUProcessor$Listener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/bef/effectsdk/GPUProcessor$Listener;->onMessageReceived(IIILjava/lang/String;)V

    :cond_0
    return-void
.end method
