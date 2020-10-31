.class Lcom/miui/mishare/app/view/MiShareTransmissionView$2;
.super Lcom/miui/mishare/IMiShareStateListener$Stub;
.source "MiShareTransmissionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/mishare/app/view/MiShareTransmissionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;


# direct methods
.method constructor <init>(Lcom/miui/mishare/app/view/MiShareTransmissionView;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$2;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    invoke-direct {p0}, Lcom/miui/mishare/IMiShareStateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$2;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    invoke-virtual {v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/miui/mishare/app/view/MiShareTransmissionView$2$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/mishare/app/view/MiShareTransmissionView$2$1;-><init>(Lcom/miui/mishare/app/view/MiShareTransmissionView$2;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
