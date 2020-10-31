.class Lcom/miui/mishare/app/view/MiShareTransmissionView$3$1;
.super Ljava/lang/Object;
.source "MiShareTransmissionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/mishare/app/view/MiShareTransmissionView$3;->onConnectSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/mishare/app/view/MiShareTransmissionView$3;


# direct methods
.method constructor <init>(Lcom/miui/mishare/app/view/MiShareTransmissionView$3;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$3$1;->this$1:Lcom/miui/mishare/app/view/MiShareTransmissionView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const-string v0, "MiShareTransmissionView"

    const-string v1, "onScreenConnectSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$3$1;->this$1:Lcom/miui/mishare/app/view/MiShareTransmissionView$3;

    iget-object v0, v0, Lcom/miui/mishare/app/view/MiShareTransmissionView$3;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->setScreenThrowHighLight(Z)V

    return-void
.end method
