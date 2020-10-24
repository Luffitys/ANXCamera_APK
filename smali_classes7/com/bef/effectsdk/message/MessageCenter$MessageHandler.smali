.class Lcom/bef/effectsdk/message/MessageCenter$MessageHandler;
.super Landroid/os/Handler;
.source ""


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    invoke-static {p1}, Lcom/bef/effectsdk/message/MessageCenter;->access$000(Landroid/os/Message;)V

    return-void
.end method
